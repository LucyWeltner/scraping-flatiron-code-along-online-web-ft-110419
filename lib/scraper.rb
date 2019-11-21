require 'nokogiri'
require 'open-uri'
require 'pry'

require_relative './course.rb'

class Scraper
  def get_page 
    page = open("http://learn-co-curriculum.github.io/site-for-scraping/courses")
    page = Nokogiri::HTML(page)
    course_info = page.css("#course-grid .post h2")
    p course_info.text
  end
  
  def print_courses
    self.make_courses
    Course.all.each do |course|
      if course.title && course.title != ""
        puts "Title: #{course.title}"
        puts "  Schedule: #{course.schedule}"
        puts "  Description: #{course.description}"
      end
    end
  end
  
end



