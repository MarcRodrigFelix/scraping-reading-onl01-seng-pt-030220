require 'nokogiri'
require 'open-uri'

html = open("https://flatironschool.com")

doc = Nokogiri::HTML(html)
doc.css(".headline-26OIBN")
courses = doc.css("#3c239880-48cf-5ce7-84d0-578546d87586 .inlineMobileLeft-2Yo002.imageTextBlockGrid2-3jXtmC")

# courses.each do |course|
#   puts course.text.strip
# end


# p doc.css("#3c239880-48cf-5ce7-84d0-578546d87586 .inlineMobileLeft-2Yo002.imageTextBlockGrid2-3jXtmC")[0].name

p doc.css("#3c239880-48cf-5ce7-84d0-578546d87586 .inlineMobileLeft-2Yo002.imageTextBlockGrid2-3jXtmC")[0].attributes