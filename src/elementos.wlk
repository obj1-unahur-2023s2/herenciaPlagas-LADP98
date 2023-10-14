import plagas.*

class Hogar  {
	var nivelDeMugre
	const confort
	
	method esBueno() = nivelDeMugre <= confort / 2
	method recibirAtaqueDe(unaPlaga) {nivelDeMugre += unaPlaga.nivelDeDanio()} 
}

class Huerta  {
	var nivelDeProduccion
	var capacidadDeProduccion
	
	method esBueno()= capacidadDeProduccion > nivelDeProduccion
	method recibirAtaqueDe(unaPlaga) {capacidadDeProduccion -= unaPlaga.nivelDeDanio() * 0.10
		if (unaPlaga.transmiteEnfermedades()) {
			capacidadDeProduccion -= 10
		}
	}
}

class Mascota  {
	var nivelDeSalud
	
	method esBueno()= nivelDeSalud > 250
	method recibirAtaqueDe(unaPlaga) {
		if (unaPlaga.transmiteEnfermedades()) {
			nivelDeSalud =  0.max(nivelDeSalud - unaPlaga.nivelDeDanio())
		}
	}
}