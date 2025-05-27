
class ProfesionalVinculado {
  var universidad

  method universidad() = universidad

  method honorarios() =  universidad.honorariosRecomendados() 

  method puedeTrabajarEn() = #{universidad.provincia()}

  method cobrar(unImporte) = universidad.recibirDonacion(unImporte*0.5)
}

class ProfesionalLitoral {
  var universidad

  method universidad() = universidad

  method honorarios() = 3000 

  method puedeTrabajarEn() = #{corrientes, entreRios, santaFe}

  method cobrar(unImporte) {asociacionPL.recibirDonacion(unImporte)}
}

class ProfesionalLibre {
  var universidad 
  var provincias
  var honorarios
  var dineroRecaudado = 0

  method universidad() = universidad

  method puedeTrabajarEn() = provincias

  method honorarios() = honorarios

  method cobrar(unImporte) {dineroRecaudado += unImporte}

  method pasarDinero(unaPersona, unImporte) {
    dineroRecaudado -= unImporte
    unaPersona.cobrar(unImporte)
  }

  method dineroRecaudado() = dineroRecaudado
}

  object corrientes{}

  object entreRios{}

  object santaFe{}

  object buenosAires{}

  object cordoba{}

  object asociacionPL {
    var donaciones = 0

    method recibirDonacion(unaDonacion) {donaciones += unaDonacion}
  }
