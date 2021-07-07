require 'pry'
require './backer.rb'
require './project_backer.rb'

class Project 
    attr_accessor :title

    def initialize(title)
        @title = title
    end 

    def add_backer(backer)
        projectbacker = ProjectBacker.new(self, backer)
    end 

    def backers
        projects = ProjectBacker.all.select {|backer| backer.project == self}
        projects.map {|project| project.backer}
    end 

end
