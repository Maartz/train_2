# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(tgi: 'T0184152', email: 'william.martin@trixell-thalesgroup.com', admin: true, password: 'Trixell01*', created_at: DateTime.now, updated_at: DateTime.now )

User.create!(tgi: 'T0147566', email: 'julien.biondi@trixell-thalesgroup.com', admin: true, password: 'Trixell01*', created_at: DateTime.now, updated_at: DateTime.now)

User.create!(tgi: 'T0063118', email: 'benjamin.lucatelli@trixell-thalesgroup.com', logistic: true, password: 'Trixell01*', created_at: DateTime.now, updated_at: DateTime.now)
