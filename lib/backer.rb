require 'pry'
require './project.rb'
require './project_backer.rb'

class Backer
    attr_accessor :name 

    def initialize(name)
        @name = name 
    end 

    def back_project(project)
        projectbacker = ProjectBacker.new(project, self)
    end 

    def backed_projects
        backed_projects = ProjectBacker.all.select {|project| project.backer == self}
        backed_projects.map {|backer| backer.project }
    end 
end 
