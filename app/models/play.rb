class Play < ActiveRecord::Base

  belongs_to :user
  belongs_to :headline
  has_many   :played_sources
  belongs_to :chosen_source, :class_name => "Source"

  before_save :set_won

  validates_presence_of :user_id, :headline_id, :chosen_source_id

  def set_won
    self.won = headline.source_id == chosen_source_id
    return true
  end


end
