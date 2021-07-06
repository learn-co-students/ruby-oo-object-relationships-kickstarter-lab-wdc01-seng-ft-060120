class Backer

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name

        @@all << self
    end

    def self.all
        return @@all
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        return ProjectBacker.all.select {|proj| proj.backer == self}.map {|proj| proj.project}
    end

end