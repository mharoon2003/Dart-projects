//Write a dart program to create a class Camera with private properties [id,
// brand, color, prize]. Create getters and setters to get and set values. Also,
// create 3 objects of it and print all details.

class Camera {
  var _id,_brand,_color,_price;

  set id(int value) => _id = value;//setter method
  int get id => _id;//get method

  set brand(String value) => _brand = value;
  String get brand => _brand;

  set color(String value) => _color = value;
  String get color => _color;

  set price(double value) => _price = value;
  double get price => _price;
}

void main() {
  Camera camera1 = Camera();
  camera1.id = 1;
  camera1.brand = 'Canon';
  camera1.color = 'Black';
  camera1.price = 499.99;

  Camera camera2 = Camera();
  camera2.id = 2;
  camera2.brand = 'Nikon';
  camera2.color = 'Silver';
  camera2.price = 599.99;

  Camera camera3 = Camera();
  camera3.id = 3;
  camera3.brand = 'Sony';
  camera3.color = 'Red';
  camera3.price = 699.99;

  print('======>Camera 1 Details:=====> ');
  print('ID: ${camera1.id}, Brand: ${camera1.brand}, Color: ${camera1.color}, Price: ${camera1.price} \n');

  print('======>Camera 2 Details:======> ');
  print('ID: ${camera2.id}, Brand: ${camera2.brand}, Color: ${camera2.color}, Price: ${camera2.price} \n');

  print('======>Camera 3 Details:======>');
  print('ID: ${camera3.id}, Brand: ${camera3.brand}, Color: ${camera3.color}, Price: ${camera3.price}');
}
