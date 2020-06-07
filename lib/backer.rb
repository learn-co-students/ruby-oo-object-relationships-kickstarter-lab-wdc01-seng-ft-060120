require 'pry'
class Backer

    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        #binding.pry
        p_backers = ProjectBacker.all.select do |person|
            person.backer == self
        end 
        p_backers.map do |backer|
            backer.project
        end   
    end

end