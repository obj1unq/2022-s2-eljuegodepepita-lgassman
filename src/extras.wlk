import pepita.*
import wollok.game.*

object visorEnergiaPepita {
	
	method position() {
		return game.at(0,game.height() - 1)
	}
	
	method text() {
		return "" + pepita.energia()
	}
	
	method textColor() {
		return "ff0000ff"
	}
	
	method serComidaPor(personaje) {
		// No hace nada ya que no es un elemento comestible
	}
	
	
}


object nido {
	
	
	
}