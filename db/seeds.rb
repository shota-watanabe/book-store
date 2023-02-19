# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Book.destroy_all

10.times do |i|
  Book.create(
    title: "タイトル#{i}",
    description: "説明#{i}"
  )
end

Book.all.each do |book|
  book.orders.create
end

Order.all.each do |order|
  order.shipments.create(
    state: rand(0..4)
  )
end

first_shipment = Shipment.needs_tracking.first
first_shipment.created_at = Time.current.ago(8.days)
first_shipment.save!