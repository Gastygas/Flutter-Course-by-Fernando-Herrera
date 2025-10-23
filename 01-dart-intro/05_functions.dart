void main () {
  
   print(greetEveryone());
   
   print('Suma: ${addTwoNumbers(50,20)}');
   print('Suma Optional: ${addTwoNumbersOptional(50)}');
  
   print( greetPerson(message: 'hello, how are you', name: 'zurdo'));
}

//Si o si despues de la funcion de flecha tiene que estar el valor que quiero retornar, no puedo abrir la funcion con la flecha
String greetEveryone() => 'Hello everyone!';

int addTwoNumbers(int a, int b ) => a + b;

int addTwoNumbersOptional(int a, [ int b = 4] ) {
 
 //b = b ?? 2;
 //b = b + 1;
 
 //b ??= 3;
 
 return a + b; 
}

// Clase 6
//cuando se ponen llaves, son opcionales
String greetPerson ({required String name, String message = 'Hello,'}) {
  return '$message $name';
}