class Marvelservice

  def initialize
    response = RestClient.get("https://gateway.marvel.com/v1/public/characters?ts=#{ENV["TS"]}&apikey=#{ENV["API_KEY"]}&hash=#{ENV["HASH"]}")

    characters = JSON.parse(response)["data"]["results"]
  end
  def self.character_by_id(id)

      response = RestClient.get("http://gateway.marvel.com/v1/public/characters/#{id}?&ts=#{ENV["TS"]}&apikey=#{ENV["API_KEY"]}&hash=#{ENV["HASH"]}")

      character = JSON.parse(response)["data"]["results"]

  end

end
