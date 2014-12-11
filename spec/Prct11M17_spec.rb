require "Prct11M17"
require "spec_helper"

describe Respuesta do
 before :each do
   @respuesta1 = Respuesta.new("Respuesta 1", true)
 end

 describe "Respuesta" do
   it "# Texto de la respuesta" do
     expect(@respuesta1.to_s).to eq("Respuesta 1")
   end

   it "# Validez de la respuesta" do
     expect(@respuesta1.correcta).to be(true)
   end
 end
end

describe Pregunta do
 before :each do
   @respuesta1 = Respuesta.new("Respuesta 1", true)
   @respuesta2 = Respuesta.new("Respuesta 2", false)

   @pregunta1 = Pregunta.new("Pregunta 1")
   @pregunta1.nueva(@respuesta1)
   @pregunta1.nueva(@respuesta2)
 end

 describe "Pregunta" do
   it "# Texto de la pregunta" do
     expect(@pregunta1.to_s).to eq("Pregunta 1")
   end

   it "# Respuestas" do
     expect(@pregunta1.getRespuestas[0].to_s).to eq("Respuesta 1")
     expect(@pregunta1.getRespuestas[1].to_s).to eq("Respuesta 2")
   end
 end
end