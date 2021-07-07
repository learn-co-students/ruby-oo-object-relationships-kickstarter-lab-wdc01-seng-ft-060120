class Project

    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self,backer)
    end

    def backers
        backer_arr = []
        ProjectBacker.all.each do |p_b|
            if p_b.project == self
                backer_arr << p_b.backer
            end
        end
        backer_arr
    end

end