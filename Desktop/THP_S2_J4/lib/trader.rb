require 'rubygems'
require 'open-uri'
require 'nokogiri'
require 'pry'
puts "\e[H\e[2J"

crypto = []
page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
page.xpath('//*/td[2]/a').each do |node|
puts crypto << node.text
end

puts "#{crypto}"

value = []
page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
page.xpath('//*/td[5]/a').each do |node|
	puts value << node.text
end

# nbcrypto = crypto.length   Pour s'assurer que les 2 arrays sont égales
# nbvalue = value.length
# binding.pry

cryptovalue = Hash[crypto.zip value] #création du hash cryptovalue qui associe value à crypto

puts "#{cryptovalue}"



# cryptovalue = {}
# nbcrypto.times do |i|
# 	cryptovalue[i] = { "#{crypto[i]}" => "#{value[i]}" }
	
# end
