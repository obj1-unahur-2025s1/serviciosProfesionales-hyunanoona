class empresa {
  var contratados = []
  var honorarioReferencia
  var universidadesFormadoras = #{}

  method cuantosContratadosEstudiaronEn(unaUniversidad) = contratados.filter{c => c.universidad() == unaUniversidad}.size()

  method profesionalesCaros() = contratados.filter{c => c.honorarios() > honorarioReferencia}

  method universidadesFormadoras() {
    var listaAux = #{}
    listaAux.addAll{contratados.forEach{c => c.universidad()}}
    return listaAux
  }
}

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
