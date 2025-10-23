void main () {
  
  final Map<String, dynamic> pokemon = {
    'name' : 'pikachu',
    'hp' : 90,
    'isAlive': false,
    'abilities': <String>['impostor'],
    'sprites': <String, String>{
      'back': 'ditto/front.png',
      'front': 'pikachu/back.png'
    },
  };
  
  final pokemons= {
    1: 'ABC',
    2: 'XYZ',
    3: '123',
    150: 'Gasu'
  };
 
  
  print(pokemon);
  print('Name: ${pokemon['name']}');
  print('Name: ${pokemon['sprites']}');
  
  print('Back: ${pokemon['sprites']['back']}');
  print('Front: ${pokemon['sprites']['front']}');
  
  
  
}