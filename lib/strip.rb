module Strip
   extend ActiveSupport::Concern
    before_validation :strip_title
  def strip_title
    self.title = title.strip
  end
end
