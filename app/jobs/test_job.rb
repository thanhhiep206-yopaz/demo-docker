class TestJob < ApplicationJob
  queue_as :default

  def perform(*args)
    puts "Hello Sidekiq !!!"
  end
end
