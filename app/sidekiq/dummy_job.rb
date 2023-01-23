class DummyJob
  include Sidekiq::Job

  def perform(*args)
    sleep 1
  end
end
