class GutCheck < ActiveRecord::Base
  validates :overall, presence: true

end
