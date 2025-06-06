object nave {
    const pasajeros = #{}

    method subirPasajero(unPasajero) = pasajeros.add(unPasajero)
    method bajarPasajero(unPasajero) = pasajeros.remove(unPasajero)
    method cuantosPasajerosHay() = pasajeros.size()
    method pasajeroConMasVitalidad() = pasajeros.max({n=> n.vitalidad()})
    method pasajeroConMenosVitalidad() = pasajeros.min({n=> n.vitalidad()})
    method estaElElegidoAqui() = pasajeros.any({p=> p.esElElegido()})
    method estaEquilibrada() = 
        self.pasajeroConMasVitalidad().vitalidad() < (self.pasajeroConMenosVitalidad().vitalidad() * 2)
    
    method choca(){ 
        pasajeros.forEach({p=> p.saltar()})
        pasajeros.clear()
    }

    method acelera() =
        pasajeros.filter({p=> !self.estaElElegidoAqui()}).forEach({p=> p.saltar()})
}

object neo{
    var energia = 100
    
    method energia() = energia
    method vitalidad() = energia * 0.1
    method esElElegido() = true
    method saltar(){
        energia = energia * 0.5
    }
}

object morfeo {

    var vitalidad = 8

    method vitalidad() = vitalidad
    method esElElegido() = false

    method saltar() {
        if (vitalidad > 0) {
            vitalidad = vitalidad - 1
        }
        else {
            vitalidad = 8
        }
    }

    method name() {
      
    }

}

object trinity {

    method vitalidad() = 0
    method saltar() = true
    method esElElegido() = false
}
