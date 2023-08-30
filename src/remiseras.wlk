import clientes.*

object roxana{
	
	method valorDeViaje(cliente,kilometro){
		return cliente.valorPorKm()*kilometro
	}
}

object gabriela{
	
	method valorDeViaje(cliente,kilometro){
		return (cliente.valorPorKm() * 1.2) * kilometro
	}
}

object mariela{
	
	method valorDeViaje(cliente,kilometro){
		return 50.max(cliente.valorPorKm() * kilometro)
	}
}

object juana{
	
	method valorDeViaje(_,kilometro){
		return if (kilometro <= 8){100}else{200}
	}
}

object lucia {
	var estaReemplazando
	
	method estaReemplazando() = estaReemplazando
	
	method estaReemplazando(remisera){
		if (self == remisera){
			self.error("No se puede reemplazar a si mismo")
		}
		estaReemplazando = remisera
	}
	
	method valorDeViaje(cliente,kilometro){
		return estaReemplazando.valorDeViaje(cliente,kilometro)
	}
}