class JobQuerier
  attr_reader :min_salary, :ed_level, :location, :agency, :job_title

  def initialize(args={})
    @job_title   = args[:job_title]
    @min_salary  = args[:min_salary]
    @ed_level    = args[:ed_level]
    @location    = args[:zip_code]
    @agency      = args[:agency]
  end

  def generate_query

  end

  def query(parameters={})
    url = 'https://data.cityofnewyork.us/resource/swhp-yxa4.json'

    url += '?' unless parameters.empty?
    parameters.each do |attribute, value|
      url + attribute + "=" + value.gsub(/\s/, "+") + '&'
    end
    url.chop!


    JSON.load(open(url))
  end
end
