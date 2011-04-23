class Source < ActiveRecord::Base

  has_many :headlines

  validates_presence_of :name, :rss_url, :logo_url

  def logo_url
    "/images/" + read_attribute(:logo_url)
  end


end
