object gimenez {
	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
//	var property sueldo = 15000

	var sueldo = 15000
	var fondos = 0 // El total de dinero del cual Gimenez dispone
	method sueldo() { return 15000 }
	method sueldo(nuevoValor) { sueldo = nuevoValor }
	method cobrarSueldo(sueldoPagado) { fondos += sueldoPagado } //Añade a los fondos de gimenez el sueldo del mes
}

object baigorria {
	var cantidadEmpanadasVendidas = 100
	var montoPorEmpanada = 15
	var fondos = 0 //El total de dinero del cual Baigorria dispone
	
	method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}
	method sueldo() = cantidadEmpanadasVendidas * montoPorEmpanada
	method cobrarSueldo(sueldoPagado) { fondos += sueldoPagado } //Añade a los fondos de Baigorria el sueldo del mes.
}

object galvan {
	var dinero = 300000
	method dinero() { return dinero }
	method pagarA(empleado) { dinero -= empleado.sueldo()
								empleado.cobrarSueldo(empleado.sueldo())
	}
	
}
