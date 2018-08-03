class Attachment < ApplicationRecord
  belongs_to :filecontainer, polymorphic: true

end
