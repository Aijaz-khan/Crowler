class PagesController < ApplicationController
  include ActionView::Helpers::SanitizeHelper
require 'mechanize'
require 'rubygems'
require 'nokogiri'

def home
end

def page
  mechanize = Mechanize.new
  page = mechanize.get(params[subject])

  a =  Nokogiri::HTML(page.body).text

  render json: a
end

end
