import elementos.*

class Plaga {
	var poblacion
	
	method transmiteEnfermedades() = poblacion >= 10
	method nivelDeDanio()
	method atacarElemento(unElemento) {
		poblacion += poblacion * 0.1
	}
}

class Cucarachas inherits Plaga {
	var pesoCucarachas
	var ataques = 0
	override method transmiteEnfermedades() = super() && self.pesoPromedio() >= 10
	override method nivelDeDanio() = poblacion / 2
	method pesoPromedio() = pesoCucarachas / poblacion + ataques * 2
	override method atacarElemento(unElemento) {
		super(unElemento)
		ataques ++
		unElemento.recibirAtaque(self)
	}
}

class Pulgas inherits Plaga {
	
	override method nivelDeDanio() = poblacion * 2
}

class Garrapatas inherits Plaga {
	
	override method nivelDeDanio() = poblacion * 2
	override method atacarElemento(unElemento) {
		poblacion += poblacion * 0.2
	}
}

class Mosquitos inherits Plaga {
	
	override method nivelDeDanio() = poblacion
	override method transmiteEnfermedades() = super() && poblacion % 3 == 0
}
