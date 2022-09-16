import wollok.game.*
import pepita.*

object silvestre {
	
	var target = pepita
	
	method position() {
		return game.at(self.x() ,0)
	}
	
	method x() {
		return target.position().x().max(3)
	}
	
	method image() {
		return "silvestre.png"
	}
}
