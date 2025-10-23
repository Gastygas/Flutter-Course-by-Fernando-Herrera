abstract class Animal {}

abstract class Mammal extends Animal{}
abstract class Bird extends Animal{}
abstract class Fish extends Animal{}

mixin Fly {
  void fly() => print('I am flying');
}

mixin Walker {
  void walk() => print('I am walking');
}

mixin Swimmer {
  void swim() => print('I am swimming');
}


class Dolphine extends Mammal with Swimmer{}
class Bat extends Bird with Walker, Fly{}
class Cat extends Mammal with Walker{}

class Dove extends Bird with Walker, Fly{}
class Duck extends Bird with Walker, Fly, Swimmer{}

class Shark extends Fish with Swimmer{}
class FlyingFish extends Fish with Swimmer, Fly{}


void main () {
  
  final flipper = Dolphine();
  flipper.swim();

  final batman = Bat();
  batman.walk();
  batman.fly();
  
  final theDuck = Duck();
  theDuck.walk();
  theDuck.fly();
  theDuck.swim();
}


