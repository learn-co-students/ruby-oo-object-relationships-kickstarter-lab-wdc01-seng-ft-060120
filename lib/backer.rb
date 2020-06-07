require 'pry'
class Backer
    attr_accessor :name

    def initialize(name)
      @name = name
    end

    def back_project(project)
        projectBacker = ProjectBacker.new(project, self)
    end

    def backed_projects
        my_project_backers = ProjectBacker.all.select do |pb|
            pb.backer == self
        end
        
        my_project_backers.map do |pb|
            pb.project
        end
    end
end