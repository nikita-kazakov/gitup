class Category < ApplicationRecord
  has_many :products

  validates :name, :presence => true
  validates :prefix, :presence => true

  before_validation :add_default_prefix, if: :prefix_missing?
  #around_save :benchmark

  private

  def prefix_missing?
    prefix.blank?
  end

  def add_default_prefix
      puts "*** Adding default prefix"
      self.prefix = 'GEN'
  end

end
