import wollok.game.*
import silvestre.*

object pepita {

	var property position = game.at(5, 7)
	var property cazador = silvestre
	var energia = 100

	method image() {
		return "pepita-" + self.nombreEstado() + ".png"
	}

	method text() {
		return energia.toString()
	}

	method nombreEstado() {
		return if (self.muerta()) {
			"gris"
		} else {
			"libre"
		}
	}

	method muerta() {
		return self.atrapada() or self.sinEnergia()
	}

	method sinEnergia() {
		return energia <= 0
	}

	method atrapada() {
		return cazador.position() == self.position()
	}

//	method text() {
//		return "HOLA!!! SOY PEPITA"
//	}
//	
//	method textColor() {
//		return "FF0000FF"
//	}
//	method position() {
//		return position
//	}
//	
//	method position(_position) {
//		position = _position
//	}
	method comer(comida) {
		energia = energia + comida.energiaQueOtorga()
	}

	method volar(kms) {
		self.validarVuelo(kms)
		energia = energia - self.energiaParaVolar(kms)
	}

	method validarVuelo(distancia) {
		if (not self.puedeVolar(distancia)) {
			self.error("La distancia " + distancia + " es mayor a la energia " + energia)
		}
	}

	method energia() {
		return energia
	}

	method mover(direccion) {
		const paso = 1
		self.volar(paso)
		position = direccion.siguientes(position, paso)
	}

	method energiaParaVolar(distancia) {
		return 10 + distancia
	}

	method puedeVolar(distancia) {
		return energia >= self.energiaParaVolar(distancia)
	}

}

