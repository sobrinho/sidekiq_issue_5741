namespace :sidekiq do
  task issue_5741: :environment do
    args = 100_000.times.map { [_1] }

    DummyJob.perform_bulk(args)
    OtherDummyJob.perform_bulk(args)
    AnotherDummyJob.perform_bulk(args)
  end
end
