object ludmila {
	
	method valorPorKm(){
		return 18
	}	
}

object anaMaria {
	var estaEconomiaEstable = true
	
	method valorPorKm(){
		return if(estaEconomiaEstable){30}else{25}
	}
	method cambiarsituacionEconomica(){
		estaEconomiaEstable = not estaEconomiaEstable
	}
	method estaEconomiaEstable() = estaEconomiaEstable
}

object teresa {
	var property valorPorKm = 22
}

object melina {
	var trabajaPara
	
	method trabajaPara() = trabajaPara
	method trabajaPara(cliente){
		if (self == cliente){
			self.error("No puede trabajar para si misma")
		}
		trabajaPara = cliente
	}
	
	method valorPorKm(){
		return trabajaPara.valorPorKm() - 3
	}
}