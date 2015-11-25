class GutCheck < ActiveRecord::Base
  validates :overall, presence: true, numericality: true

end
