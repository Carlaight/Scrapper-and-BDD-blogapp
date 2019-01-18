require 'rubygems'
require 'open-uri'
require 'nokogiri'
require 'pry'
	
def crypto_scrapper
	
	crypto = []
	page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
	page.xpath('//*/td[2]/a').each do |node|
	crypto << node.text
	end
	
	value = []
	page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
	page.xpath('//*/td[5]/a').each do |node|
	value << node.text
	end
		
	nbcrypto = crypto.length  # Pour s'assurer que les 2 arrays son t égales
	#nbvalue = value.length
		
	cryptovalue = []
	nbcrypto.times do |i|
		cryptovalue << { "#{crypto[i]}" => value[i] }
	end
	# cryptovalue = Hash[crypto.zip value] #création du hash cryptovalue qui associe value à crypto
	puts "#{cryptovalue}"
	return cryptovalue
end
	
crypto_scrapper
