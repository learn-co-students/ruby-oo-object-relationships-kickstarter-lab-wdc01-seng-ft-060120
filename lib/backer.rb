class Backer
    attr_accessor :name

    @@all = []

    def initialize (name)
        @name = name
    end

    def back_project (project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        project_array = []
        ProjectBacker.all.each do |relationship|
            if relationship.backer == self
                project_array << relationship.project
            end
        end
        return project_array
    end
end