require_relative 'animater'
require_relative 'ui'
require_relative 'job'
require_relative 'json'



class Control
  include UserInterface
  # include JobQuerier
  def initialize
    @user_input = UserInterface.take_user_input
    Load.animate
    @job_querier = JobQuerier.generate_queries(@user_input[:min_salary])
    @list = List.new(@job_querier)
    UserInterface.display_jobs(@list.job_matches)
  end

end


class List
  attr_reader :job_matches, :jobs
  def initialize(job_matches)
    @job_matches = job_matches
    @jobs = []
    run
  end
  def run
    @job_matches.each do |row|
      @jobs << Job.new(row)
    end
  end
end

Control.new
