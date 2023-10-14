import elementos.*

class Barrio {
	const elementos = []

	method agregar(elemento) {elementos.add(elemento)}
	method remover(elemento) {elementos.remove(elemento)}
	method esCopado()= elementos.count({elemento => elemento.esBueno()}) > elementos.count({elemento => !elemento.esBueno()})

}