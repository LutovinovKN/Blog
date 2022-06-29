class GuestsCleanupJob < ApplicationJob
  queue_as :default

  def perform(*args)
    # Do something later
    GuestsCleanupJob.set(wait_until: Date.monday.morning).perform_later(guest)
  end
end
