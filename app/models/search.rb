class Search < ActiveRecord::Base

	def search_cars
   
   cars = Car.all
   
   cars = cars.where("make like ?", "%#{keywords}%") if keywords.present?
   cars = cars.where("model like ?", model) if model.present?
   cars = cars.where("price >= ?", min_price) if min_price.present?
   cars = cars.where("price <= ?", max_price) if max_price.present?
   
   return cars
end
end
