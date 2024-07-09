//3_ Write a dart program to create a class Animal with properties [id, name,
// color]. Create another class called Cat and extends it from Animal. Add
// new properties sound, owner and price. Create an object of a Cat and print
// all details.

class Animal {
  var id,name,color;//declaring all variables in a single line
  Animal(int this.id,String this.name,String this.color);
  void makeSounds(){
    print('The animal sound  ');
  }
  void animalMovement(){
    print('THe animal have movement');
  }
}

class Cat extends Animal{
  var sound,owner,price;

  Cat(int super.id,String super.name,String super.color,this.sound,this.owner,this.price) ;
   @override
  void makeSounds() {
    print('the animal sound is MEO MEO');
  }
  @override
  void animalMovement() {
    print('the animal walks');
  }

}

void main (){

  Cat newC= new Cat(23, 'Tam', 'Blue', 'MEO', 'Dexter', 2000);
  print('=============>Cat information ============>');
  print('Cat name is ${newC.name}');
  print('Cat id is : ${newC.id}');
  print('Cat color is : ${newC.color}');
  print('Cat price is : ${newC.price}');
  print('Cat owner is : ${newC.owner}');
  print('Cat sound is : ${newC.sound}');
  newC.makeSounds();
  newC.animalMovement();

}