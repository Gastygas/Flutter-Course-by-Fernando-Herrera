void main() {
  final Hero wolverine = Hero(name: 'Paul');

  print(wolverine);
  print(wolverine.name);
  print(wolverine.power);
}

class Hero {
  String name;
  String power;

  //Hero(String pName, String pPower) : name = pName, power = pPower;
  Hero({
    required this.name,
    this.power = 'No power'
    });
  
  @override
  String toString(){
    return '$name - $power';
  }
  
}