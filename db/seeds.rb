class Seed

  def self.begin
    seed = Seed.new
    seed.generate_destinations
  end



  def generate_destinations
    Destination.destroy_all
    destination1 = Destination.create(name: "Aruba", description: "Tropical paradise - just don't wander off too far.", price: 250, url: "https://media-cdn.tripadvisor.com/media/photo-s/0e/af/0d/f3/sunlight-on-fofoti-eagle.jpg")
    destination2 = Destination.create(name: "Martha's Vineyard", description: "The best place ever.", price: 100, url: "https://www.steamshipauthority.com/writable/images/beach_pic.jpg")


    p "Created #{Destination.count} destinations"
  end

end

Seed.begin
