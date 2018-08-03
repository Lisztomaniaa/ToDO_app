class List < ApplicationRecord
  belongs_to :dashboard
  has_many :cards, dependent: :delete

  before_validation :strip_title

  def strip_title
    self.title = title.strip
  end
end
