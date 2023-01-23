require "sidekiq-ent/web"

Rails.application.routes.draw do
  mount Sidekiq::Web => "/sidekiq"
end
