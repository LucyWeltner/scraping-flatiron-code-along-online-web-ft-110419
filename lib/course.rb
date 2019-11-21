class Course 
  attr_accessor :title, :schedule, :description
  @@all_courses
  def initialize(title)
    @title = title
  end 
  def self.all 
    @@all_courses
  end
end 

