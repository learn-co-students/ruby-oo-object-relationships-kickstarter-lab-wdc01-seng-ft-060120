class Backer
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project,self)
    end

    def backed_projects
        ProjectBacker.all.select{|p_b| p_b.backer == self}.map do |p_b_self|
            p_b_self.project
        end
    end

end