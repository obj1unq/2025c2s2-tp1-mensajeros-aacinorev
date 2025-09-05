object paquete {
    var property mensajero = jeanGray
    var property destino = puenteBrooklyn
    var property estaPago = false

    method puedeSerEntregado(){
        return estaPago && destino.puedePasar(mensajero)
    }

}

object neo {
    var credito = 0

    method puedeLlamar(){
        return credito > 0
    }

    method credito(_credito){
        credito = _credito
    }

    method peso(){
        return 0
    }
}

object jeanGray {

    method puedeLlamar(){
        return true
    }

    method peso(){
        return 65
    }
}

object saraConnor {
    var property pesoPropio = 0
    var property vehiculo = moto

    method puedeLlamar(){
        return false
    }

    method peso(){
        return pesoPropio + vehiculo.peso()
    }
}

object camion {
    var property acoplados = 0

    method peso(){
        return 500 + 500*acoplados
    }
}

object moto {

    method peso(){
        return 100
    }

}


object puenteBrooklyn {

    method puedePasar(mensajero){
        return mensajero.peso() < 1000 && paquete.estaPago()
    }

}

object laMatrix {

    method puedePasar(mensajero){
        return mensajero.puedeLlamar() && paquete.estaPago()
    }

}