require 'rubygems'
require 'open-uri'
require 'nokogiri'
require 'pry'

def get_townhall_email(get_townhall_urls)

	@townhall_emails = []
	page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/95/ableiges.html"))
	page.xpath('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]').each do |node|
	townhall_emails << node.text
  end
  puts "#{townhall_emails}"
  return townhall_emails
end



def get_townhall_urls

	@townhall_urls = []
	page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html"))
	page.css("a[@class=lientxt]/@href").each do |node|
	townhall_urls << node.text
  end
  puts "#{townhall_urls}"
  return townhall_urls
end



  nbtownhall_emails = townhall_emails.length 
  
	townhall_emails_all = []
	nbtownhall_emails.times do |i|
  townhall_emails_all << { "#{townhall_emails[i]}" => "#{townhall_urls[i]}" }
	end

  puts "#{townhall_emails_all}"

get_townhall_email(townhall_urls)

get_townhall_urls
