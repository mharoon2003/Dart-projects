//2_  Write a dart program to create a class House with properties [id, name,
// prize]. Create a constructor of it and create 3 objects of it. Add them to the
// list and print all details.

class House {
  String? name;
  int? id;
  int? price;

  House (int id,String name,int price){
    this.id = id;
    this.name=name;
    this. price=price;
  }

}

void main (){

  House newH1=new House(9237, '\'Nadim\'s palace\'', 23000);
  House newH2=new House(023421, '\'Heaven House\'', 48000);
  House newH3=new House(39475, '\'Dream House\'', 47453);
  List<House> houses=[newH3,newH2,newH1];
  for(var House in houses){
    print('===================> \nhouse ID : ${House.id} and house name is : ${House.name} the price is : ${House.price} ');
  }

}