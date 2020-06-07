
class Project
    attr_accessor :title

    def initialize(title)
      @title = title
    end

    def add_backer(backer)
        projectBacker = ProjectBacker.new(self, backer)
    end

    def backers
        my_project_backers = ProjectBacker.all.select do |pb|
            pb.project == self
        end

        my_project_backers.collect do |pb|
            pb.backer
        end
    end
    
end