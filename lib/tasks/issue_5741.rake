namespace :sidekiq do
  task issue_5741: :environment do
    100_000.times { |i| AnotherDummyJob.perform_async(i) }
    100_000.times { |i| DummyJob.perform_async(i) }
  end
end
