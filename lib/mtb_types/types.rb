require 'nokogiri'
require 'open-uri'
require 'pry'

class MtbTypes::Types


  attr_accessor :name, :description

def self.all
  doc = Nokogiri::HTML(open("https://www.freethepowder.com/pages/mountain-bikes-what-are-the-different-types"))
  @names = doc.search(".content.container p strong")


type_1 = self.new
type_1.name = doc.search(".content.container p strong")[0].text.delete(":")
type_1.description = doc.search(".content.container p")[2].text

type_2 = self.new
type_2.name = doc.search(".content.container p strong")[1].text
type_2.description = doc.search(".content.container p")[3].text

type_3 = self.new
type_3.name = doc.search(".content.container p strong")[2].text
type_3.description = doc.search(".content.container p")[4].text

type_4 = self.new
type_4.name = doc.search(".content.container p strong")[3].text.delete("1) ")
type_4.description = doc.search(".content.container p")[7].text

type_5 = self.new
type_5.name = doc.search(".content.container span strong")[3].text.delete("2) ")
type_5.description = doc.search(".content.container span")[5].text

type_6 = self.new
type_6.name = doc.search(".content.container p strong")[4].text.delete("3) ")
type_6.description = doc.search(".content.container p")[12].text

type_7 = self.new
type_7.name = doc.search(".content.container p strong")[5].text.delete("4) ")
type_7.description = doc.search(".content.container p")[14].text

type_8 = self.new
type_8.name = doc.search(".content.container p strong")[6].text.delete("5) ")
type_8.description = doc.search(".content.container p")[16].text

[type_1, type_2, type_3, type_4, type_5, type_6, type_7, type_8]
# binding.pry


end

end
