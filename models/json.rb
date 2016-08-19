require 'json'
require 'open-uri'
module JobQuerier
  def self.generate_queries(min_salary)
    parameters = "$where=salary_range_from%20>%20'#{min_salary}'"
    # parameters << "$where%20salary_range_from%20>%20'#{ed_level}'"
    query(parameters)
  end
  def self.query(parameters='')
    url = 'https://data.cityofnewyork.us/resource/swhp-yxa4.json?$select=agency,business_title,salary_range_from,salary_range_to,job_description'
    JSON.load(open([url, parameters].join('&')))
  end
end
