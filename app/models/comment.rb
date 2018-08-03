class Comment < ApplicationRecord
  has_one :attachment, as: :filecontainer, dependent: :destroy
  belongs_to :card, counter_cache: :count_of_comments
  validates :cards, presence: true
end
