# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require "csv"

CSV.foreach('db/seed/lux.csv') do |row|
  Lux.create(:recorded_at => row[0], :lux  => row[1], :created_at => row[2], :updated_at => row[3])
end

Graph.create(:id => 1, :created_at => '2000-01-01 00:00:00', :updated_at => '2000-01-01 00:00:00')
