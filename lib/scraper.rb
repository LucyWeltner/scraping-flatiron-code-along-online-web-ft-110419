require 'nokogiri'
require 'open-uri'
require 'pry'

require_relative './course.rb'

class Scraper
  def get_page 
    page = open("http://learn-co-curriculum.github.io/site-for-scraping/courses")
    page = Nokogiri::HTML(page)

  end
  
  def make_courses
    course_info = page.css("#course-grid .post")
    course_titles = course_info.css("h2")
    course_schedules = course_info.css(".date")
    course_descriptions = course_info.css("p")
    course_info.each do |course|
      Course.new()
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

Scraper.new.get_page

