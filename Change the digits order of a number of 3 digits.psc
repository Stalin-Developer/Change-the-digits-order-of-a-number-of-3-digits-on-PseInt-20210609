//El usuario nos va a poner un número de 3 dígitos. Que puede ser desde el 100 hasta el 999. 
//Y el algoritmo se encargará de extraerle los dígitos y cambiarles el orden.
//Ejemplo: entrada:342     devuelve:243
Proceso Cambiar_el_orden_de_los_digitos_de_un_numero_de_tres_cifras
	Definir dato, unidad, decena, centena, invertido como entero;
	Definir auxiliar1 Como Real;
	Definir salir Como Logico;
	
	salir<- falso;
	
	
	Repetir
		//Pedir al usuario el número.
		Escribir "Ingrese un número positivo de tres cifras:";
		Leer dato;
		
		
		
		Si dato>=100 Y dato<=999 Entonces
			//Vamos a extraer la unidad.
			auxiliar1<- trunc(dato/10);
			unidad<- dato - (auxiliar1 * 10);
			
			
			//Vamos a extraer la decena.
			auxiliar1<- 0; //Reiniciamos el auxiliar.
			auxiliar1<- (dato/100) - trunc(dato/100);
			decena<- trunc(auxiliar1*10);
			
			//Vamos a extraer la centena.
			centena<- trunc(dato/100);
			
			
			//Vamos a devolver el número invertido.
			invertido<- (unidad*100) + (decena*10) + centena;
			Escribir "";
			Escribir "";
			Escribir "El número invertido es: ", invertido;
			
			salir<- verdadero;
		SiNo
			Escribir "";
			Escribir "Error: Debe ingresar un número de 3 cifras comprendido entre el 100 y el 999.";
			Escribir "";
			Escribir "";
		FinSi
	Hasta Que salir=Verdadero
	
	
	
	
	
	
	
	
	
FinProceso
