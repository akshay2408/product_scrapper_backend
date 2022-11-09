require 'open-uri'

class ProductSpider
  def initialize(url)
    @url = url

    @html = Nokogiri.HTML(URI.open(url))
    @category = @html.css('a._2whKao')[1].text
  end

  def parse
    category = Category.find_or_create_by(name: @category)
    item = category.products.find_or_create_by(url: @url)

    item[:title]          = @html.css('h1.yhB1nd > span.B_NuCI').text
    item[:price]          = @html.css('.CEmiEU > ._25b18c > ._16Jk6d').text.gsub(',','').gsub(/[^[:ascii:]]/, "").to_f
    item[:description]    = @html.css('._2o-xpa').text
    item[:mobile_number]  = @html.css()
    item[:size]           = @html.css('ul._1q8vHb > li._3V2wfe ._31hAvz').children.first.text rescue 0
    item[:img_url]        = @html.css('.CXW8mj').children.attr('src')
    item[:url]            = @url

    item.save
    item
  end
end
