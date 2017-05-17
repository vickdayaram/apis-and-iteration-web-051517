require 'rest-client'
require 'json'
require 'pry'

#
# class Character
# attr_reader :name, :film_info
#
#  def initialize(person_hash)
#     @person_hash = person_hash
#     @films = []
#     @film_info = []
#  end
#
#  def parse_character_movies
#    # some iteration magic and puts out the movies in a nice list
#    @person_hash.each do |film_info|
#      puts film_info["title"]
#    end
#  end
#  binding.pry
#
# end


def get_character_movies_from_api(character)
  #make the web request
  all_characters = RestClient.get('http://www.swapi.co/api/people/')
  character_hash = JSON.parse(all_characters)

   person_hash = []
   character_hash.each do |key, value|
      if key == "results"
        value.each do |info|
          if info["name"].downcase == character.downcase
          person_hash = info
         binding.pry
       end
     end
    end
   end

  film_info = []
  films.each do |film_url|
  film_info.push(JSON.parse(RestClient.get(film_url)))
  end
  new_character = Character.new(person_hash)
end



class Character
attr_reader :name, :film_info

 def initialize(person_hash)
    @person_hash = person_hash
    @films = []
    @film_info = []

 end

 def parse_character_movies
   # some iteration magic and puts out the movies in a nice list
   @person_hash.each do |film_info|
     puts film_info["title"]
   end
 end

 class Films

   def initialize(film_info)
     @film_info = film_info
   end

   film_info = []
   films.each do |film_url|
   film_info.push(JSON.parse(RestClient.get(film_url)))
   end
 end


end


get_character_movies_from_api("Luke Skywalker")
