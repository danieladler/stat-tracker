class GutCheck < ActiveRecord::Base
  validates :rating, presence: true, numericality: { less_than_or_equal_to: 10 }

end
