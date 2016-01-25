class Message < ActiveRecord::Base 
  validates :author, presence: true 
  validates :title, presence: true
  validates :content, presence: true, length: {minimum: 20}
end
