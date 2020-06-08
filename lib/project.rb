class Project
    attr_accessor :title

    @@all = []

    def initialize (title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        backer_array = []
        ProjectBacker.all.each do |relationship|
            if relationship.project == self
                backer_array << relationship.backer
            end
        end
        backer_array
    end
end