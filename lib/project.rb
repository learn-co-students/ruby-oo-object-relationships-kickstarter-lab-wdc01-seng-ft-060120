class Project
    attr_reader :title

    def initialize(title)
        @title = title
    end 

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end 

    def backers
        pb = ProjectBacker.all.select do |person|
            person.project == self
        end 
        pb.map do |project|
            project.backer
        end 
    end 


end 