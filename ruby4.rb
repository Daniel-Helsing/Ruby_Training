require 'ruby4-a.rb'
class Person
  include ContactInfo
end

require 'ruby4-a.rb'
class Teacher
  include ContactInfo
  attr_accessor :lesson_plans
end

require 'ruby4-a.rb'
class Student < Person
  attr_accessor :books, :grades
end
