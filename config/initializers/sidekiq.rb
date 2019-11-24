# Sidekiq.configure_server do |config|
#   config.redis = { url: 'redis://localhost:6379/0', namespace: "app3_sidekiq_#{Rails.env}" }
# end

# Sidekiq.configure_client do |config|
#   config.redis = { url: 'redis://localhost:6379/0', namespace: "app3_sidekiq_#{Rails.env}" }
# end

sidekiq_config = { url: ENV['JOB_WORKER_URL'] }

Sidekiq.configure_server do |config|
  config.redis = sidekiq_config
end

Sidekiq.configure_client do |config|
  config.redis = sidekiq_config
end