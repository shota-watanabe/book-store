class Book < ApplicationRecord
  has_many :orders, dependent: :destroy
end
