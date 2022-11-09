class UpdateExpiredProductJob < ApplicationJob
  # include Sidekiq::Job
  def perform(url)
    ProductSpider.new(url).parse
  end
end
