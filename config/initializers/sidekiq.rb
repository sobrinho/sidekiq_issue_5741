Sidekiq.configure_server do |config|
  # We are mutating the default capsule
  concurrency = config.concurrency

  # Calculate ratios
  ratios = config.queues.tally.transform_values { _1.to_f * 100 / config.queues.length }

  # Create each capsule
  ratios.each do |queue, ratio|
    config.capsule(queue) do |capsule|
      capsule.queues = [queue]
      capsule.concurrency = (ratio * concurrency / 100.0).round
    end
  end
end
