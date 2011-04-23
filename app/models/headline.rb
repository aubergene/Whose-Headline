class Headline < ActiveRecord::Base

  belongs_to :source

  validates_presence_of :title, :guid, :link

end
