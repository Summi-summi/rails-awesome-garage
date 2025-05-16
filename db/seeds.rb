puts "Cleaning the DB..."

Owner.destroy_all
Car.destroy_all

puts "Creating owners..."

owner1 = Owner.create!(nickname: "Atik")
owner2 = Owner.create!(nickname: "Yusufi")
owner3 = Owner.create!(nickname: "Charliecake")
owner4 = Owner.create!(nickname: "Shaikhsumi")
owner5 = Owner.create!(nickname: "Aishuu")

puts "Creating cars..."

Car.create!(brand: "McLaren", model: "7205", year: 2024, fuel: "Unleaded Petrol", owner: owner5)
Car.create!(brand: "Mercedes", model: "300SL Roadster", year: 1987, fuel: "Diesel", owner: owner1)
Car.create!(brand: "Ferrari", model: "Testarossa", year: 1995, fuel: "Unleaded Petrol", owner: owner3)
Car.create!(brand: "LandRover", model: "Defender", year: 2020, fuel: "Diesel", owner: owner2)
Car.create!(brand: "LandRover", model: "Range Rover", year: 2025, fuel: "Diesel", owner: owner4)

puts "Done! #{Owner.count} owners and #{Car.count} cars created."
