class Card < ApplicationRecord
  belongs_to :lists, required: true
  has_and_belongs_to_many :labels
  belongs_to :list, required: true
  has_and_belongs_to_many :labels
  has_many :comments, dependent: :destroy
  has_and_belongs_to_many :users
  has_many :attachments, as: :filecontainer, dependent: :destroy

  before_validation :strip_title
  def strip_title
    self.title = title.strip
  end
  validates :title, presence: true, allow_blank: false

#Card.by_labels(label_ids)  - returns cards that have labels with the following ids (label_ids)
  scope :by_labels, ->(label_ids) { joins(:labels)
                                    .where(labels: { id: label_id})}
  scope :by_assigned_users, ->(user_ids) { joins(:users)
                                           .where(users: { id: user_id}) }
  scope :should_be_done_until, ->(datetime) { where("created_at < ?", datetime)}
  scope :overdue, ->(datetime) { where("created_at < ?", Time.now) }
  scope :without_due_date, ->(datetime) { where(datetime: nil) }
end
