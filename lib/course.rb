class Course 
  attr_accessor :title, :schedule, :description
  @@all_courses = []
  def self.all 
    @@all_courses
  end
  def reset_all
    @@all_courses = []
  end
end 

