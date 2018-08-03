class Dashboard < ApplicationRecord
  has_many :memberships, dependent: :destroy
  has_many :users, through: :memberships
  has_many :lists
  belongs_to :owner, class_name: 'User', required: true #If the name of the other
                                                        # model cannot be derived
                                                        #from the association name
  before_validation :strip_title

  def strip_title
    self.title = title.strip
  end

 scope :ordered_by_title, -> { order(title: :asc) }
 scope :ordered_by_most_recently_updated, -> { order(created_at: :desc) }

end
