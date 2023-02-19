class Order < ApplicationRecord
  has_many :shipments, dependent: :destroy
  has_many :books
end
