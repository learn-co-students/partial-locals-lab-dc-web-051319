class Student < ActiveRecord::Base
    has_many :classroom_students
    has_many :classrooms, through: :classroom_students

    def self.search(search)
        if search.empty?
           self.all 
        else
            where("name like?", "%#{search}%")
        end
    end
end
