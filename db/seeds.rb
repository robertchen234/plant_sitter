# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Owner.create(name: "skyler", zipcode: "10032", phone: "713-314-7646", email: "skylerwphillipstx@gmail.com")
Owner.create(name: "rob", zipcode: "11224", phone: "917-640-5594", email: "robertchen234@gmail.com")
Owner.create(name: "kevywevy", zipcode: "66666", phone: "666-666-0666", email: "satan@satan.com")


Sitter.create(name: "eric", zipcode: "00000", phone: "000-000-0000", email: "eric@eric.com")
Sitter.create(name: "tony", zipcode: "11111", phone: "111-111-1111", email: "tony@tony.com")
Sitter.create(name: "ayana", zipcode: "22222", phone: "222-222-2222", email: "ayana@ayana.com")

Plant.create(species: "graham", image: "https://flatiron-school.slack.com/files/UDLU4N8TZ/FEJDGN81X/screen_shot_2018-12-04_at_10.10.18_am.png", info: "low light plant, needs lots of water and love, very needy.")
Plant.create(species: "tony", image: "https://flatiron-school.slack.com/files/UDP8XH7ND/FEJDKUWU9/screen_shot_2018-12-04_at_10.11.57_am.png", info: "bright direct light plant, best kept on window sill, water with shotglass one a week.")
Plant.create(species: "ayana", image: "https://flatiron-school.slack.com/files/UDLU4N8TZ/FEK7SQDNH/screen_shot_2018-12-04_at_10.12.54_am.png", info: "bright indirect light plant, low maintenance, enjoys company of other plants.")
