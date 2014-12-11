class Pregunta
 def initialize(texto)
   @texto = texto
   @respuestas = []
 end

 def nueva(respuesta)
   @respuestas << respuesta
 end

 def getRespuestas
   return @respuestas
 end

 def to_s
   @texto
 end

 def examen(n)
   usuario = [1, 2] # Respuestas del usuario

   puts "\n#{@texto}"
   @respuestas.size.times do |i|
     puts " [#{i+1}] #{@respuestas[i].texto}"
   end
   print "Respuesta: " + usuario[n].to_s
   respuesta = usuario[n]-1
   puts "\n"

   if (respuesta < @respuestas.size)
     return @respuestas[respuesta].correcta
   else
     return false
   end
 end
end