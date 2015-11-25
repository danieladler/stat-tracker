class GutCheck < ActiveRecord::Base
  validates :rating, presence: true, numericality: true

end
