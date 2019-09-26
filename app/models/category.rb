class Category < ApplicationRecord
  has_many :products

  validates :name, presence: true
  validates :prefix, presence: true

  before_validation :add_default_prefix

  def prefix
    "GEN"
  end

  def add_default_prefix
    if prefix.blank?
      puts "Your prefix was blank. I added GEN to it."
      self.prefix = "GEN"
    end
  end

end
