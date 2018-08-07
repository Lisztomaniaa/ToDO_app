require 'active_support/concern'
module Strip
   extend ActiveSupport::Concern

  def strip_title
    self.title = title.strip
  end
end
