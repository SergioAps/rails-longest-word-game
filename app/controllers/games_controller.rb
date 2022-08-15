require "open-uri"
class GamesController < ApplicationController
  def new
    @letters = ('A'..'Z').to_a.sample(4)

  end

  def score
    @letters = params[:letters].delete(" ").split(//)
    @word = params[:word]
    url = "https://wagon-dictionary.herokuapp.com/#{@word}"
    html_file = URI.open(url).read
    user = JSON.parse(html_file)
    nuevo = user["found"]
    # @all.each do |a|
    #   @word.include(a)
    # end
  end
end



#llamar a la api y pasale la palabra del usuario
# verificar que todas las letras d la plabra del usuario esten en la grilla
# verificar que la palbra esta en ingles
# si se cumplen ambas condiciones entonces le doy puntaje
# variable = {"found":false,"word":"miel","error":"word not found"}
# variable["found"]

# if variable["found"]

# else
