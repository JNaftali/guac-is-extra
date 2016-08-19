class Job

  attr_reader :title, :id, :salary, :location, :description, :positions_available, :preferred_skills

  def initialize(arg = {})

    @title = arg.fetch(:title, "")
    @id = arg.fetch(:id, "")
    @salary = arg.fetch(:salary, "")
    @location = arg.fetch(:location, "")
    @description = arg.fetch(:description, "")
    @positions_available = arg.fetch(:positions_available, "")
    @preferred_skills = arg.fetch(:preferred_skills)

  end


  def to_s
    puts "==========================================="
    puts "id: #{id} - title: #{title}"
    puts "salary: #{salary}"
    puts "location: #{location}"
    puts "description: #{description}"
    puts "positions_available: #{positions_available}"
    puts "preferred_skills: #{preferred_skills}"
    puts "==========================================="
  end

end
