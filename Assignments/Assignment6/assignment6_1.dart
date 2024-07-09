//1. Write a dart program to create a class Laptop with properties [id, name,
// ram] and create 3 objects of it and print all details

class Laptop{

  int? id ;
  String? name;
  int? ram;

  void isOn(){
    print('the laptop is turned on!');
  }
  void isOff(){
    print('the laptop is turned off!');
  }
}

void main (){

  //creating objects of class laptop
  //first object
  Laptop newLaptop1 = new Laptop();
  newLaptop1.name='Dell';
  newLaptop1.id=349;
  newLaptop1.ram=16;
  newLaptop1.isOff();
  newLaptop1.isOn();
  print('''the Laptop name is ${newLaptop1.name}
         and the laptop id is ${newLaptop1.id}
         and laptop has ${newLaptop1.ram } GB rams
         ==================================>''');

  //second object
  Laptop newLaptop2 = new Laptop();
  newLaptop2.name='HP';
  newLaptop2.id=002342;
  newLaptop2.ram=8;
  newLaptop1.isOff();
  newLaptop1.isOn();
  print('''the Laptop name is ${newLaptop2.name}
         and the laptop id is ${newLaptop2.id}
         and laptop has ${newLaptop2.ram } GB rams
         ==================================>''');

  //third object
  Laptop newLaptop3 = new Laptop();
  newLaptop3.name='Apple';
  newLaptop3.id=8759;
  newLaptop3.ram=32;
  newLaptop1.isOff();
  print('''the Laptop name is ${newLaptop3.name}
         and the laptop id is ${newLaptop3.id}
         and laptop has ${newLaptop3.ram } GB rams
         ==================================>''');

}