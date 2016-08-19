# ask user for information (going to use that for our query)
module UserInterface

  def self.greeting
    puts "Welcome to Finder! Enter a name to get started:"
    @name = gets.chomp
  end

  def self.explanation
    puts "Welcome #{@name}! Finder asks you a set of questions and returns jobs that are a match for you. When you see a job you are interested in, type 'yes' to save it. Otherwise, type 'no' and another job will be displayed."
    puts "------------------------------------------------------------------------------------------------------------------"
  end

  def self.take_user_salary
    puts "What is your minimum preferred salary? (i.e, 55356)"
    salary = gets.chomp #to integer?
  end

  def self.take_user_qualifitications
    puts "What is your level of education?"
    ed_level = gets.chomp
  end

  # def self.take_user_title
  #   puts "Please enter a title for the job you are looking for:"
  #   title = gets.chomp
  # end


  def self.take_user_input
    args={}
    greeting
    explanation
    args[:min_salary] = take_user_salary
    # args[:job_title] = take_user_title
    args[:ed_level] = take_user_qualifitications

    args
  end

  def self.display_saved_jobs(saved_jobs)
    puts "These are your saved jobs:"
    saved_jobs.each do |job|
      puts job
    end
  end

  def self.display_jobs(jobs)
    saved_jobs = []
      user_decision = ""

    until user_decision == "done"
    jobs.each do |job|
      puts job
      puts "Do you want to save this job? Type 'done' to quit."

        user_decision = gets.chomp
        break if user_decision == "done"
        if user_decision == "yes"
          saved_jobs << job
        end
      end

      display_saved_jobs(saved_jobs)
    end

  end


end

# UserInterface.take_user_input
