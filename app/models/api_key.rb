class ApiKey < ApplicationRecord

  def self.generate_token!
    loop do
      token = SecureRandom.base64
      return token unless ApiKey.where(token: token).any?
    end
  end
end
