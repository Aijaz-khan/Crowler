class PagesController < ApplicationController
  include ActionView::Helpers::SanitizeHelper
require 'mechanize'
require 'rubygems'
require 'nokogiri'
require 'sanitize'
require 'uri'
require 'open-uri'

layout false

def home
end

def home_2
end

def page
#   mechanize = Mechanize.new
# uri = URI.parse(URI.encode(
str = params[:subject]
url = ERB::Util.url_encode(str)
uri = URI('http://api.diffbot.com/v3/analyze?token=d9e198a1c06f26779313bc3aade5270e&timeout=50000&url='+url)
req = Net::HTTP.get(uri)
puts req
  # Sanitize.clean(page)
  @a =  req
  # render json: a
end

def scrapper
str = params[:subject]
@a = []
Nokogiri::HTML(open(str)).xpath("//img/@src").each do |src|
puts src
@a << src
end

end

end
