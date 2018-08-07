class User < ApplicationRecord
  has_and_belongs_to_many :dashboards,  dependent: :destroy
  has_many :owned_dashboards, class_name: 'Dashboard',foreign_key: :owner_id,
                              dependent: :nullify #if owner is removed from -his boards are still available
  has_and_belongs_to_many :cards

  validates :email, :password_digest, presence: true


#scope :by_username, -> (str) { where(pluck(:name).mathces }}

end
