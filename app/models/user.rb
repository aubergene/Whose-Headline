class User < ActiveRecord::Base

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["user_info"]["name"]
      user.nickname = auth["user_info"]["nickname"]
      user.url = auth["user_info"]["urls"]["Twitter"]
    end
  end

  def twitter_name
    "@#{nickname}"
  end

end
