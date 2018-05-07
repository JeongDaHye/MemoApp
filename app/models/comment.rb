class Comment < ActiveRecord::Base
  belongs_to :post
  belongs_to :user
  belongs_to :memo
  
  validates :memo_id, presence: true
  validates :content, presence: true, length: {minimum: 2, maximum: 50}
  validates :user_id, presence: true
end
