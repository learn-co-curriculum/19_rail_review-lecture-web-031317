class Course < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true, format: {without: /\Adog\z/i, message: "don't just make it dog!!!!"}

end
