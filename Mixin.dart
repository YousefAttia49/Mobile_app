mixin MeasureTempreture {
  void TakeTempreture() {
    print("Done Successfully");
  }
}

mixin Surgery {
  void performingSugrery() {
    print("Done Successfully");
  }
}

class Employee {
  String? name;
  int? age;

  Employee(this.name, this.age);
}

class Nurse extends Employee with MeasureTempreture {
  Nurse(String name, int age) : super(name, age) {}
}

class Doctor extends Employee with MeasureTempreture, Surgery {
  Doctor(String name, int age) : super(name, age);
}

void main() {
  Nurse nurse1 = Nurse('Eman', 30);
  Doctor doctor1 = Doctor('Ahmed', 40);

  nurse1.TakeTempreture();

  doctor1.performingSugrery();
  doctor1.TakeTempreture();
}
