require 'rubygems'
require 'nokogiri'
require 'open-uri'

def get_townhall_email(townhall_url)

    page = Nokogiri::HTML(open((townhall_url)))
    email = page.xpath('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]')
  
    return email.text
end


def get_townhall_urls
    
    page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html"))
    ville = page.xpath('//a[@class="lientxt"]')

    array = []
    for i in (0..ville.length-1)
        hash=Hash.new
        lien = "https://annuaire-des-mairies.com"+"#{ville[i]['href'].gsub(/^[\.]/, '')}"
        hash[ville[i].text] = get_townhall_email(lien)
        array << hash
    end

puts array

end
