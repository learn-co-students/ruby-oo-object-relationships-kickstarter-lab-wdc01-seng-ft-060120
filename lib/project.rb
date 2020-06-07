class Project

    attr_accessor :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        p_backers = ProjectBacker.all.select do |person|
            person.project == self
        end 
        p_backers.map do |project|
            project.backer
        end 
    end

end