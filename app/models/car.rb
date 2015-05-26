class Car < ActiveRecord::Base
	belongs_to :user
	has_many :comments

	def self.search(search)
  if search
    where(['make LIKE ?', "%#{search}%"])
  else
    all
  end
end
end
