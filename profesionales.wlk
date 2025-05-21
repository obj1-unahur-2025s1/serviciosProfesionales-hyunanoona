
class ProfesionalUniversidad {
  var universidad

  method universidad() = universidad

  method honorarios() =  universidad.honorariosRecomendados() 

  method puedeTrabajarEn() = universidad.provincia()
}

class ProfesionalLitoral {
  const provincias = [corrientes, entreRios, santaFe]
  var universidad

  method universidad() = universidad

  method honorarios() = 3000 

  method puedeTrabajarEn(unaProvincia) = provincias.any{p => p == unaProvincia} 
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
