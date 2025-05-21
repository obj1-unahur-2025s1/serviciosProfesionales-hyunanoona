class empresa {
  var contratados = []
  var honorarioReferencia
  var universidadesFormadoras = #{}

  method cuantosContratadosEstudiaronEn(unaUniversidad) = contratados.filter{c => c.universidad() == unaUniversidad}.size()

  method profesionalesCaros() = contratados.filter{c => c.honorarios() > honorarioReferencia}

  method universidadesFormadoras() = contratados.map{c => c.universidad()}.asSet()
}
