class PlayedSource < ActiveRecord::Base

  belongs_to :source
  belongs_to :play

  # validates_presence_of :source_id, :play_id

end
