class Prototype < ApplicationRecord
  validates :title, presence: true
  validates :catch_copy
  validates :concept

  belongs_to :user
  has_many   :comments
end
