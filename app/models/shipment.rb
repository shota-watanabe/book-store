class Shipment < ApplicationRecord
  belongs_to :order

  enum state: { proccesing: 0, needs_label: 1, needs_tracking: 2, ready: 3, shipped: 4 }
end
