class AnotherDummyJob
  include Sidekiq::Job
  sidekiq_options queue: :low

  def perform(*args)
    sleep # forever to make it more dramatic
  end
end
