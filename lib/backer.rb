class Backer
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def back_project(project)
        ProjectBacker.new(project, self)
        
    end

    def backed_projects
        backer_project_ins = ProjectBacker.all.select do |backer_project|
            backer_project.backer == self
            #binding.pry
        end 
        backer_project_ins.map do |backer_pr_inst|
                backer_pr_inst.project
                #binding.pry
            end
        
    end

end