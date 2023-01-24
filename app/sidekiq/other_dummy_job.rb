class OtherDummyJob
  include Sidekiq::Job
  sidekiq_options queue: 'critical'

  def perform(*args)
    sleep 5
  end
end
