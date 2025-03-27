module FullNameConcern
  extend ActiveSupport::Concern

  included do
    before_save :set_full_name, if: :name_changed?
  end

  private

  def name_changed?
    first_name_changed? || middle_name_changed? || last_name_changed?
  end

  def set_full_name
    self.full_name = [first_name, middle_name, last_name].compact.join(' ').titleize
  end
end