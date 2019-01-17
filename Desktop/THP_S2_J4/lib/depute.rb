require 'rubygems'
require 'open-uri'
require 'nokogiri'
require 'pry'

def get_deputy_email

	deputy_emails = []
	page = Nokogiri::HTML(open("http://www2.assemblee-nationale.fr/deputes/fiche/OMC_PA605036"))
	page.css('html.js.flexbox.canvas.canvastext.webgl.no-touch.geolocation.postmessage.no-websqldatabase.indexeddb.hashchange.history.draganddrop.websockets.rgba.hsla.multiplebgs.backgroundsize.borderimage.borderradius.boxshadow.textshadow.opacity.cssanimations.csscolumns.cssgradients.no-cssreflections.csstransforms.csstransforms3d.csstransitions.fontface.generatedcontent.video.audio.localstorage.sessionstorage.webworkers.no-applicationcache.svg.inlinesvg.smil.svgclippaths body div#page-fond.clearfix div#page.clearfix div.clearfix div#deputes-fiche.clearfix section div#haut-contenu-page.clearfix article div.contenu-principal.en-direct-commission.clearfix div.interieur-contenu-principal.clearfix dl.deputes-liste-attributs dd ul li a').each do |node|
	deputy_emails << node.text
  end
  puts "#{deputy_emails}"
  return deputy_emails
end

get_deputy_email

# def get_deputy_full_name

# 	deputy_full_name = []
# 	page = Nokogiri::HTML(open("http://www2.assemblee-nationale.fr/deputes/fiche/OMC_PA605036"))
# 	page.xpath('//html/body/div[3]/div/div/div/section[1]/div/article/div[2]/h1').each do |node|
# 	deputy_full_name << node.text
#   end
#   puts "#{deputy_full_name}"
#   return deputy_full_name

# end
# get_deputy_full_name

