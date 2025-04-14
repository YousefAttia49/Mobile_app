abstract class Animal {
  void makeSound();
}

class Cat implements Animal {
  @override
  void makeSound() {
    print('Meao');
  }
}

class Dog implements Animal {
  @override
  void makeSound() {
    print('bark');
  }
}

void main() {
  Cat cat1 = Cat();
  Dog dog1 = Dog();

  cat1.makeSound();
  dog1.makeSound();
}
