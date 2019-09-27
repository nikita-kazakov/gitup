class Category < ApplicationRecord
  has_many :products

  validates :prefix, presence: true
  validates :name, presence: true


  before_validation :add_default_prefix

  def prefix
    "GEN"
  end
  private

    def add_default_prefix
      if prefix.blank?
        puts "Your prefix was blank. I added GEN to it."
        self.prefix = "GEN"
      end
    end

end
