import profesionales.*
import universidades.*
import solicitantes.*



class Empresa {
  var contratados = #{}
  var honorarioReferencia
  var clientes = #{}
  var provinciasCubiertas = #{}

  method contratar(unEmpleado) = contratados.add(unEmpleado)

  method cuantosContratadosEstudiaronEn(unaUniversidad) = contratados.filter{c => c.universidad() == unaUniversidad}.size()

  method profesionalesCaros() = contratados.filter{c => c.honorarios() > honorarioReferencia}

  method universidadesFormadoras() = contratados.map{c => c.universidad()}.asSet()

  method profesionalMasBarato() = contratados.min{c => c.honorarios()}

  method esDeGenteAcotada() = contratados.all{c => c.provincias().size() <= 3}

  method contratadosQuePuedenSatisfacer(unSolicitante) = contratados.filter{c => unSolicitante.puedeSerAtendido(c)}
  
  method algunContratadoDisponible(unSolicitante) = self.contratadosQuePuedenSatisfacer(unSolicitante).anyOne()

  method darServicio(unSolicitante) {
    if (self.contratadosQuePuedenSatisfacer(unSolicitante)>1)
        self.algunContratadoDisponible(unSolicitante).cobrar(self.algunContratadoDisponible(unSolicitante).honorarios())
        clientes.add(unSolicitante)
  }

  method cuantosClienteHay() = clientes

  method esSolicitanteUnCliente(unSolicitante) = clientes.contains(unSolicitante)

  method provinciasCubiertas() = contratados.map{c => c.puedeTrabajarEn().union(provinciasCubiertas)}

 // method esPocoAtractiva(unProfesional) = contratados.forEach{c => c.provincia().contains()}
}
