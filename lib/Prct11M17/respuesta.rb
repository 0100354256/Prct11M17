class Respuesta
 attr_reader :texto, :correcta

 def initialize(texto, correcta)
   @texto = texto
   @correcta = correcta
 end

 def to_s
   @texto
 end
end