class PagesController < ApplicationController
  include ActionView::Helpers::SanitizeHelper
require 'mechanize'
require 'rubygems'
require 'nokogiri'
require 'sanitize'

layout false

def home
end

def page
  mechanize = Mechanize.new
  page = mechanize.get(params[:subject])
  # Sanitize.clean(page)
  @a =  page.body

  # render json: a
end

end
