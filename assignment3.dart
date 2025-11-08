// ✅ Abstraction: Abstract class
abstract class Animal {
  void sound(); // abstract method

  void sleep() {
    print("This animal is sleeping...");
  }
}

// ✅ Encapsulation: private variables use leading underscore "_"
class Pet {
  String _name;
  int _age;

  Pet(this._name, this._age);

  // Getter
  String get name => _name;

  // Setter
  set age(int value) {
    _age = value;
  }

  void showInfo() {
    print("Pet Name: $_name");
    print("Pet Age: $_age");
  }
}

// ✅ Inheritance + Polymorphism
class Dog extends Animal {
  @override
  void sound() {
    print("Dog: Woof! Woof!");
  }
}

class Cat extends Animal {
  @override
  void sound() {
    print("Cat: Meow! Meow!");
  }
}

void main() {
  // ----- Encapsulation -----
  Pet myPet = Pet("Buddy", 3);
  myPet.showInfo();

  // Update age using setter
  myPet.age = 4;
  print("Updated Age: ${myPet.name} is now older!");

  // ----- Inheritance + Polymorphism -----
  Animal myDog = Dog();
  Animal myCat = Cat();

  myDog.sound(); // Dog version
  myCat.sound(); // Cat version

  myDog.sleep();
  myCat.sleep();
}
