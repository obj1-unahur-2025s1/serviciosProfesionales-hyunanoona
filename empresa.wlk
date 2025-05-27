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

  method esDeGenteAcotada() = contratados.all{c => c.puedeTrabajarEn().size() <= 3}

  method sePuedeSatisfacer(unSolicitante) = contratados.any{c => unSolicitante.puedeSerAtendido(c)}
  
  method darServicio(unSolicitante){
    if(self.sePuedeSatisfacer(unSolicitante)){
      const profesional = contratados.find{c => unSolicitante.puedeSerAtendido(c)}
      profesional.cobrar(profesional.honorarios())
      clientes.add(unSolicitante)
    }
  }
  
  method cuantosClienteHay() = clientes

  method esSolicitanteUnCliente(unSolicitante) = clientes.contains(unSolicitante)

  method esProfesionalPocoAtractivo(unProfesional){
        const profesionalProvincias = unProfesional.puedeTrabajarEn().asSet()
        const profesionalesConMismasProvincias = contratados.filter({p => p.puedeTrabajarEn().asSet() == profesionalProvincias})
        return profesionalesConMismasProvincias.any({p => p.honorarios() < unProfesional.honorarios()})
    }
}
