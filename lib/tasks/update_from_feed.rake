namespace :feed do
  desc 'Update feed data'
  task :update_from_feed => :environment do
    Jobs.update_from_feed('https://www.jobsatosu.com/all_jobs.atom')
    puts "-- Success: #{Jobs.count} Entries exist"
  end
end