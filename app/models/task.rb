class Task < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :delete_all
  validates :description, presence: true
  validates :deadline, presence: true
  validates :priority, presence: true
end
