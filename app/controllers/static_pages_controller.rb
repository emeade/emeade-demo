class StaticPagesController < ApplicationController
  def home
    #TODO: schedule updates
    #Jobs.update_from_feed('https://www.jobsatosu.com/all_jobs.atom')
    @jobs = Jobs.all(:limit => 10, :order => "published_at desc")
  end
end
