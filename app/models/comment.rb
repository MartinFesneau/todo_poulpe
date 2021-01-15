class Comment < ApplicationRecord
  belongs_to :task
  has_one_attached :comment_file
  validates :content, presence: true
end
