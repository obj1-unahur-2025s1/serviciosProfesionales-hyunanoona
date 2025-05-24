class Persona{
  var provincia

  method provincia() = provincia

  method puedeSerAtendido(unProfesional) = unProfesional.puedeTrabajarEn().contains(provincia)
}

class Institucion{
    var universidadesReconocidas 

    method puedeSerAtendido(unProfesional) = universidadesReconocidas.any{u => u == unProfesional.universidad()}
}

class Club{
    var provincias 
    var provinciasdos

    method puedeSerAtendido(unProfesional) = not provincias.intersection(unProfesional.puedeTrabajarEn()).isEmpty()
}