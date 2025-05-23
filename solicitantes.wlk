class Persona{
  var provincia

  method provincia() = provincia

  method puedeSerAtendido(unProfesional) = unProfesional.provincia() == provincia
}

class Institucion{
    var universidadesReconocidas = #{}

    method puedeSerAtendido(unProfesional) = universidadesReconocidas.any{u => u == unProfesional.universidad()}
}

class Club{
    var provincias = #{}

    method puedeSerAtendido(unProfesional) = provincias.any{p=> p == unProfesional.provincia()}
}