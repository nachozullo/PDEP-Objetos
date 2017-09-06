class Persona {
	var enfermedades = new List()
	var celulas 
	var temperatura
	var diasConEnfermedad 
	
	constructor(dias, grados, cantidad){
		diasConEnfermedad = dias
		if (grados <= 45) 
			temperatura = grados
		celulas = cantidad
	}
	
	method contraerEnfermedad(enfermedad){
		enfermedades.add(enfermedad)
	}
	
	method enfermedades(){
		return enfermedades
	}
	
	
	method estaEnComa(){
		return temperatura==45 || celulas < 1000000 
	}
	
}

class EnfermedadInfecciosa {
	
	var celulasAmenazadas
	
	constructor(cantidad){
		celulasAmenazadas=cantidad
	}
	
	method celulasAmenazadas(){
		return celulasAmenazadas
	}
	
	method reproducirse() {
		celulasAmenazadas *= 2
	}
	
	method esAgresiva(){
		
	}
}

class EnfermedadAutoinmune{
	var celulasAmenazadas 
		
	constructor(cantidad){
		celulasAmenazadas=cantidad
	}
	
	method esAgresiva(){
		
	}
	
	method celulasAmenazadas(){
		return celulasAmenazadas
	}
}