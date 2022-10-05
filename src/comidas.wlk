import wollok.game.*

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

}

object alpiste {

	method image() {
		return "alpiste.png"
	}

	method energiaQueOtorga() {
		return 20
	}

}

