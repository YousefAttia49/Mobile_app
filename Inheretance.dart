class Car {
  String? name;
  int? price;
}

class Tesla extends Car {
  void display() {
    print(' car name is $name and price $price ');
  }
}

class Model3 extends Tesla {
  String? colour;
  void display() {
    super.display();
    print('colour is $colour');
  }
}

void main() {
  Model3 m3 = Model3();
  m3.name = 'Tesla';
  m3.price = 30000;
  m3.colour = "red";

  m3.display();
}
###############################################################################
class Laptop {
  Laptop(String name, int price) {
    print('information about $name');
    print('Price is $price');
  }
}

class MacBook extends Laptop {
  MacBook(String name, int price) : super(name, price) {
    print('Macbook constractor');
  }
}

void main() {
  var macbook = MacBook("MacBookPro", 20000);
}

####################################################



abstract class Shape {
  int dim1, dim2;
  Shape(this.dim1, this.dim2);
  void area();
}

class Recrangle extends Shape {
  Recrangle(int dim1, int dim2) : super(dim1, dim2);

  @override
  void area() {
    print('the area of Rectangle is ${dim1 * dim2}');
  }
}

class Circle extends Shape {
  Circle(int dim1) : super(dim1, 0);

  @override
  void area() {
    print('area of the circle is ${3.14 * dim1}');
  }
}

void main() {
  var shape1 = Recrangle(5, 2);
  var shape2 = Circle(10);

  shape2.area();
  shape1.area();
}
