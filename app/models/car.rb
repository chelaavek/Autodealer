class Car < ApplicationRecord
  belongs_to :brand
  validates :model, presence: true
  validates :year, presence: true
  validates :brand_id, presence: true
  validates_numericality_of :year , {:greater_than_or_equal_to => 1880, :less_than_or_equal_to => 2020}



  def self.search(search)
    if search
      car = Car.joins(:brand).where("brands.name LIKE ? OR cars.model LIKE ? OR concat_ws(' ', brands.name, cars.model) LIKE ? OR concat_ws(' ', cars.model, brands.name) LIKE?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%" )
      if car
        self.where(id: car)
      else
        Car.all
      end
    else
      Car.all
    end
  end

  def display_name
    model
  end

end
