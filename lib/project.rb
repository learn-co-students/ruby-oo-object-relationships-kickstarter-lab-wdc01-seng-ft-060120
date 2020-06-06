require 'pry'
class Project
    attr_reader :title
    @@all = []
    def initialize(title)
        @title = title
        @@all << self
    end

    def add_backer(backer_name)
        ProjectBacker.new(self, backer_name)

    end

    def backers
        project_backer_ins = ProjectBacker.all.select do |project_backer|
            project_backer.project == self
           # binding.pry
        end 
        project_backer_ins.map do |backer_pr_inst|
            
                backer_pr_inst.backer
        end

            #binding.pry
    
    end
end

# def backed_projects
#     backer_project_ins = ProjectBacker.all.select do |backer_project|
#         backer_project.backer == self
        
#     end 
#     backer_project_ins.map do |backer_pr_inst|
#             backer_pr_inst.project
#             #binding.pry
#         end
    
# end