import wollok.game.*
import silvestre.*

object pepita {

	var property position = game.at(5,7)
	var property cazador = silvestre
	var energia = 100

	method image() {
		return "pepita-" +  self.nombreEstado()  + ".png"
	}
	
	method text() {
		return energia.toString()
	}
	
	method nombreEstado() {
		return if (self.muerta()) {"gris"} else {"libre"}
	}
	
	method muerta(){
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
		energia = energia - 10 - kms 
	}
	
	method energia() {
		return energia
	}
	
	method mover(direccion) {
		const paso = 1
		position = direccion.siguientes(position, paso)
		self.volar(paso)
	}



}

