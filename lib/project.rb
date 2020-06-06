class Project
  attr_reader :title
  @@all = []
  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end
  
  def add_backer(backer)
    ProjectBacker.new(self, backer)
  end

  def backers
    ProjectBacker.all.map {|bp| bp.backer if bp.project == self}.compact
  end
end