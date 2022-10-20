import wollok.game.*
import randomizer.*

object manzana {

	const base = 5
	var madurez = 1

	method image() {
		return "manzana.png"
	}

	method energiaQueOtorga() {
		return base * madurez
	}

	method madurar() {
		madurez = madurez + 1
	}

	method serComidaPor(personaje) {
		personaje.comer(self)
		game.removeVisual(self)
		game.addVisualIn(self, randomizer.position())
	}

	method colisioneCon(personaje) {
	// no pasa nada, a no ser que vaya por el evento de presionar la letra C
	}

}

object alpiste {

	method image() {
		return "alpiste.png"
	}

	method energiaQueOtorga() {
		return 20
	}

	method serComidaPor(personaje) {
		personaje.comer(self)
		game.removeVisual(self)
		game.addVisualIn(self, randomizer.position())
	}

	method colisioneCon(personaje) {
	// no pasa nada, a no ser que vaya por el evento de presionar la letra C
	}

}

