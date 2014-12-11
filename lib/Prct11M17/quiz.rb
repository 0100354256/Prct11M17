require "Prct11M17/pregunta"
require "Prct11M17/respuesta"

require 'singleton'

class Quiz
  include Singleton

  def initialize
    @preguntas = []
  end

  def nueva(pregunta)
    @preguntas << pregunta
  end

  def ultimapregunta
    @preguntas.last
  end

  def getPreguntas
    return @preguntas
  end
  
  def simular
    count = 0
    i = 0

    while (i < @preguntas.size) do
      if (@preguntas[i].examen(i))
        count += 1
      end

      i += 1
    end

    puts ""
    puts "Has obtenido #{count} preguntas correctas de #{@preguntas.size}."
  end
end

def question(texto)
  Quiz.instance.nueva Pregunta.new(texto)
end

def right(texto)
  Quiz.instance.ultimapregunta.nueva Respuesta.new(texto,true)
end

def wrong(texto)
  Quiz.instance.ultimapregunta.nueva Respuesta.new(texto,false)
end