void main() {
  final String pokemon = 'Charmander';
  final int hp = 100;
  final bool isAlive = true;
  final List<String> abilities = ['impostor', 'crack'];
  final sprites = <String>['charmander/front.png', 'charmander/back.png'];

  // dynamic == null por defecto es null

  dynamic errorMessage = 'Error';
  errorMessage = true;
  errorMessage = [1, 2, 3, 4, 5, 6];
  errorMessage = {1, 2, 3, 4, 5, 6};
  errorMessage = () => true;
  errorMessage = null;
  

  print("""
  $pokemon
  $hp
  $isAlive
  $abilities
  $sprites
  $errorMessage
  
  """);
}