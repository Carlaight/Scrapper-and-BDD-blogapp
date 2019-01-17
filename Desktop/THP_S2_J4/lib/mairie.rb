require 'rubygems'
require 'open-uri'
require 'nokogiri'
require 'pry'

begin
  do_something() 
rescue StandardError => e #Pas d'erreur si pas d'email
	puts "Toutes les mairies n'ont pas renseigné leur email" 
end
page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html"))

# Method de recherche d'email, avec l'adresse html de chaque ville
def get_townhall_email(townhall_url)
  email = townhall_url.xpath("/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]")
  return email.text
end

# Method principale
def get_townhall_urls(page)
  # Initialisation des arrays
  array_fin = []
  villes = []
  emails = []
  # Boucle array villes
  page.css("td/p/a[@class=lientxt]").each do |ville|
    ville = ville.text
    villes << ville
  end
  # Boucle array emails. Recupération des url
  page.css("td/p/a[@class=lientxt]/@href").each do |url|
    url = url.text
    # Retrait du point devan les liens
    url.slice!(0)
    # Ajout du début du lien
    lien = "http://annuaire-des-mairies.com" + url
    # Appel de la fonction de recherche d'email avec le nouveau lien
    email = get_townhall_email(Nokogiri::HTML(open(lien)))
    emails << email
  end
  # Création hash joignant les viles et les emails
  hash = Hash[villes.zip(emails)]
  # Création d'un array de hash
  hash.each {|i| array_fin << {i[0] => i[1]}}
	# puts array_fin
	return array_fin
end

get_townhall_urls(page)