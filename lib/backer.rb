class Backer
  attr_reader :name

  def initialize(name)
    @name = name
  end
  
  def back_project(project)
    ProjectBacker.new(project, self)
  end

  def backed_projects
    projects = []
    ProjectBacker.all.each {|pb| pb.backer == self ? projects << pb.project : nil}
    projects
  end
end
