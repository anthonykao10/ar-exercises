# custom apparel type validator
class MenOrWomensApparel < ActiveModel::Validator
  def validate(record)
    unless record.mens_apparel || record.womens_apparel
      record.errors[:name] << 'must carry either mens or womens apparel'
    end
  end
end

class Store < ActiveRecord::Base
  has_many :employees
  validates_associated :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { greater_than: 0 }
  validates_with MenOrWomensApparel
end