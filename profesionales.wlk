
class ProfesionalVinculados {
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

class ProfesionalesLibres {
  var universidad 
  var provincias
  var honorarios

  method universidad() = universidad

  method provincias() = provincias

  method honorarios() = honorarios
}

  object corrientes{}

  object entreRios{}

  object santaFe{}

  object buenosAires{}
