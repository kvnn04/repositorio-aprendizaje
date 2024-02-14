late String saludo;


void main () {
  String name = 'hola'; // variable string

  String? names = null; // variable string con null safety

  print(name);

  names = 'kevin';
  print(names);
  saludos();
  print(saludo);



  final String apellido = 'herrera'; // final string variable

  // datos tipo enteros

  int number = 10000;

  // dato tipo con decimales

  double numDecimal = 3.14;

  // tipo de datos booleanos

  bool mayorDeEdad = true;

  // lista de datos  tipo string

  List<String> nombresMasculino = ['kevin', 'antonio', 'tomas'];

  // lista de datos tipo enteros

  List<int> numPares = [2,4,6,8];

  // lista de datos tipo enteros y decimales

  List<num> intDouble = [1,1.2,1.3];

  //diccionario de datos tipo string y entero

  Map<String, int> nameEdad = {
    'kevin':20,
    'tomi': 25,
    'antonio': 54
  };

  // diccioanrio de datos tipo enteros y strings

  Map<int, String> idName = {
    1:'kevin',
    2:'tomi',
    3:'antonio'
  };

  // diccionario de datos tipo string y dynamic

  Map<int, dynamic> idAlgo = {
    1:'kevin',// str
    2:3, // int
    3:3.4 // double
  };

  print(apellido);


  const Object i = 3; // Where i is a const Object with an int value...
  const list = [i as int]; // Use a typecast.
  const map = {i: 'int'}; // Use is and collection if.
  const set = {...list};


  print(set);

// Dart supports the following built-in types:

// Numbers (num, int, double)
// Strings (String)
// Booleans (bool)
// Lists (List, also known as arrays)
// Sets (Set)
// Maps (Map)
// Symbols (Symbol)
// The value null (Null)


  var rounded = 2.5.round(); // redondear numero
  print(rounded);



  //string interpolation

  var food = 'bread';
  var str = 'I eat $food'; // I eat bread
  var strr = 'I eat ${food}'; // I eat bread

  final s1 = 'String '
      'concatenation'
      " even works over line breaks.";

  print(s1);

  final s2 = '''
  You can create
  multiline strings like this one.
  ''';

  print(s2);


  // final s11 = 'String '
  //   'concatenation'
  //   " works even over line breaks.";
  // assert(s11 ==
  //   'String concatenation works even over '
  //       'line breaks.');


    // final String nome;

    // // Cannot read name here, not initialized.
    // if (nome) {
    //   name = "Bob";
    // } else {
    //   name = "Robert";
    // }
    // print(name);


  // To indicate that a variable might have the value null, add ? to its type declaration:

  int? aNullableInt = null;

  // null_aware

  // int? a = 5;

  // int b = a; // Not allowed.
  // int b = a!; // Allowed.

  // Like the ?. operator, use the ! operator when accessing properties or methods on an object:

  // myObject!.someProperty;
  // myObject!.someMethod();

  // If myObject is null at runtime, a runtime error occurs

  multiply(int a, [int b = 5, int? c]) {
   print([a,b,c]);
}

multiply(1,4);



void printElement(int? element) {
  print(element);
}

var listt = [1, 2, 3, null];

// Pass printElement as a parameter.
listt.forEach(printElement);


  // FUNCION ANONIMA

  // returns [4, 5, 6]
  [1, 2, 3].map((e) => e + 3).toList();

// returns [5, 7, 9]
  var list2 = [1, 2, 3].map((e) {
    e *= 2;
    return e + 3;
  }).toList();

  print(list2);


    // FUNCTIONS GENERATOR

    Iterable<int> naturalsTo(int n) sync* {
    int k = 0;
    while (k < n) {
      yield k++;
    }
  }

// Returns an iterable with [0, 1, 2, 3, 4]
print(naturalsTo(5).toList());


Iterable<int> doubleNaturalsTo(int n) sync* {
  int k = 0;
  while (k < n) {
    yield* [k, k];
    k++;
  }
}

// Returns an iterable with [0, 0, 1, 1, 2, 2]
print(doubleNaturalsTo(3));

// ITERATION 

for (final element in list) {
  print(element);
}

List<int?> lista23 = [1,2,3,44,null];

List<dynamic> lista24= [
  for (num? i in lista23) i 
];

print(lista24);




Persona(nombre: 'kevin', apellido: 'herrera', edad: 20).nombreApellidoEdad();

print(Persona(nombre: 'nose', apellido: 'herf', edad: 12).localizar);


print (LlamarAtributo().atributo);






List<int> listaEnteros = [1,2,3,4,5,6,67,];

listaEnteros
  ..reversed    // agrega esas funciones a la lista listaEnteros
  ..add(90);

print(listaEnteros);

print(listaEnteros.length);

listaEnteros.add(34);

print(listaEnteros);













}

void saludos(){
  saludo = 'Buen dia';

}


class Persona {

  final String nombre;
  final String apellido;
  final int edad;
  final String localizar = 'es para ver si puedo acceder al atributo este usando punto fuera de la clase';

  Persona({required this.nombre, required this.apellido, required this.edad});

  void nombreApellidoEdad(){
  print('$nombre $apellido $edad');
  }
}


class LlamarAtributo{
  String atributo = 'Llamar este atributo cuando invoco a la clase';
}



