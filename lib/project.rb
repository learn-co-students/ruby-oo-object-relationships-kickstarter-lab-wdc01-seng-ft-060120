class Project

    attr_accessor :title

    @@all = []

    def initialize(title)
        @title = title

        @@all << self
    end

    def self.all
        return @@all
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end
    
    def backers
        ProjectBacker.all.select {|proj| proj.project == self}.map {|proj| proj.backer}
    end

end