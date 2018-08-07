class Dashboard < ApplicationRecord
  has_and_belongs_to_many :users
  has_many :lists, dependent: :destroy
  belongs_to :owner, class_name: 'User', required: true #If the name of the other
                                                        # model cannot be derived
                                                        #from the association name
    include Strip

 scope :ordered_by_title, -> { order(title: :asc) }
 scope :ordered_by_most_recently_updated, -> { order(created_at: :desc) }

end
