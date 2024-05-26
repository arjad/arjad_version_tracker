require "active_record"

module ArjadVersionTracker
  extend ActiveSupport::Concern
  included do
    before_update :track_version
  end

  private
  def track_version
    self.previous_version = self.changes.except(:updated_at).to_json
  end
end
