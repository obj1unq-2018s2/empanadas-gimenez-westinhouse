object gimenez {
	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
	//var property sueldo = 15000

	var sueldo = 15000
	var fondos = 0 // El total de dinero del cual Gimenez dispone
	method sueldo() { return sueldo }
	method sueldo(nuevoValor) { sueldo = nuevoValor }
	method cobrarSueldo(sueldoPagado) { fondos += sueldoPagado } //Añade a los fondos de gimenez el sueldo del mes
	method totalPagado() { return fondos }
}

object baigorria {
	var cantidadEmpanadasVendidas = 100
	var fondos = 0 //El total de dinero del cual Baigorria dispone
	var deuda = 0 //La deuda que Baigorria posee
	
	method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}
	method venderEmpanadas(numero){
		/*
		 *Este método sirve para poder definirle a Baigorria un sueldo deseado. Por ejemplo, si 
		 *se quiere que tenga 15000 de sueldo, se usara el numero 900, ya que suma 900 empanadas más
		 *a la cantidad de empanadas vendidas (100), dando un total de 1000 y ocasionando que el cálculo
		 *posterior del sueldo sea 15000
		*/
		cantidadEmpanadasVendidas += numero			
	}
	
	method sueldo(){return cantidadEmpanadasVendidas * 15}
	method cobrarSueldo(sueldoPagado){
		/*
		 * Si Baigorria tiene deudas, la plata que cobra (definida por el parámetro "sueldoPagado")
		 * se usa para pagarla. Si luego de pagarla sobra plata, ésta se añade a sus fondos y la deuda
		 * se contabiliza en 0. 
		 */
		deuda  -= sueldoPagado
		if(deuda < 0){ 
			fondos -= deuda
			deuda = 0
		}
	} 

	//Manejo fino de las finanzas de Baigorria
	
	method gastar(cuanto){
		/*
		 * Este método resta de los fondos de Baigorria la cantidad de dinero indicada por el parámetro 
		 *"cuanto". Si lo que gasta es mayor de lo que dispone, los fondos quedan en valor negativo,
		 * añadiéndose este valor a lo contabilizado en deuda (con signo positivo). Luego de hacer 
		 * esta operación, los fondos se contabilizan en 0.
		*/
		fondos -= cuanto
		if(fondos < 0){
			deuda -= fondos
			fondos = 0
		}
	}
	method totalDeuda(){
		//Devuelve el valor guardado en la variable deuda
		return deuda
	}
	method totalDinero(){
		//Devuelve el valor guardado en la variable fondo
		return fondos
	}
}


object galvan {
	var dinero = 300000
	method dinero() { return dinero }
	method pagarA(empleado) { dinero -= empleado.sueldo()
								empleado.cobrarSueldo(empleado.sueldo())
	}	
}

