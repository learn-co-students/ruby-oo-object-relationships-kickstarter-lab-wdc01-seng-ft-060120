class Project
  attr_reader :title

  def initialize(title)
    @title = title
  end

  def add_backer(backer)
    ProjectBacker.new(self, backer)
  end

  def backers
    backers = []
    ProjectBacker.all.each {|pb| pb.project == self ? backers << pb.backer : nil}
    backers
  end

end
