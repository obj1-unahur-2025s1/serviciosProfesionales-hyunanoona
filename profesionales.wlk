
class ProfesionalVinculado {
  var universidad

  method universidad() = universidad

  method honorarios() =  universidad.honorariosRecomendados() 

  method puedeTrabajarEn() = universidad.provincia().asSet()
}

class ProfesionalLitoral {
  var universidad

  method universidad() = universidad

  method honorarios() = 3000 

  method puedeTrabajarEn() = #{corrientes, entreRios, santaFe}
}

class ProfesionalLibre {
  var universidad 
  var provincias
  var honorarios

  method universidad() = universidad

  method puedeTrabajarEn() = provincias

  method honorarios() = honorarios
}

  object corrientes{}

  object entreRios{}

  object santaFe{}

  object buenosAires{}

  object cordoba{}
