require 'rubygems'
require 'nokogiri'
require 'open-uri'


def dark_boucle

    page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
    symbol = page.xpath('//td[@class="cmc-table__cell cmc-table__cell--sortable cmc-table__cell--left cmc-table__cell--sort-by__symbol"]')
    value = page.xpath('//td[@class="cmc-table__cell cmc-table__cell--sortable cmc-table__cell--right cmc-table__cell--sort-by__price"]')
  
    
    array = []

    for i in (0..symbol.length-1) 

        hash = Hash.new 
        hash[symbol[i].text]=value[i].text
        array << hash 
    end

    return array
end



