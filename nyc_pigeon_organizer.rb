require 'pry'
pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}
def nyc_pigeon_organizer(data)
  organized = {}
  data.each do |trait, options|
    options.each do |option, pigeons|
      pigeons.each do |pigeon|
        binding.pry
        organized[pigeon] ||= {}
        organized[pigeon][trait] ||= []
        organized[pigeon][trait] << option.to_s
      end
    end
   end
  organized
 end
 nyc_pigeon_organizer(pigeon_data)