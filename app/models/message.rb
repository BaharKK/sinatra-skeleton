require 'uri'
class Message < ActiveRecord::Base 
  validates :author, presence: true 
  validates :content, presence: true, length: {minimum: 20}
  validates :url, :format => URI::regexp(%w(http https)), allow_blank: true 

end
