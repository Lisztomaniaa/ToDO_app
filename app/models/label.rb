class Label < ApplicationRecord
  validates_presence_of :title
  validates :color, inclusion: { in: %w(green yellow blue black pink red orange),
                    message: "%{value} is not a valid color" }


  has_and_belongs_to_many :cards
end
