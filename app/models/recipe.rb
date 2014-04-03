class Recipe < ActiveRecord::Base
  has_and_belongs_to_many :tags
  validates :name, presence: true
  validates :rating, numericality: true
  validates_inclusion_of :rating, in: 0..5
end
