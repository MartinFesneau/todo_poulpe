class Task < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :delete_all
  validates :description, presence: true
  validates :deadline, presence: true
  validates :priority, presence: true

  # include PgSearch::Model 

  # pg_search_scope :filter_by_priority,
  # against: [ :priority ],
  # using: {
  #   tsearch: { prefix: true }
  # }
end
