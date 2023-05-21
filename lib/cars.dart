

class CarItem{
  final String title;
  final double price;
  final String color;
  final String gearbox;
  final String fuel;
  final String brand;
  final String path;

  CarItem({
    required this.title,
    required this.price,
    required this.color,
    required this.gearbox,
    required this.fuel,
    required this.brand,
    required this.path});
}

CarList allCars=CarList(cars:[
  CarItem(
      title: 'Honda Civic 2018',
      price: 123000,
      color: 'Grey',
      gearbox: '4',
      fuel: '4L',
      brand: 'Honda',
      path: 'assets/car1.jpg'),
  CarItem(
      title: 'Land Rover Evoque 2016',
      price: 223000,
      color: 'Grey',
      gearbox: '6',
      fuel: '19L',
      brand: 'Land Rover',
      path: 'assets/car2.jpg'),
  CarItem(
      title: 'Mercedes Benz SLS 2019',
      price: 203000,
      color: ' Red',
      gearbox: '5',
      fuel: '6L',
      brand: 'Mercedes',
      path: 'assets/car3.jpg'),
  CarItem(
      title: 'Audi A6 2018',
      price: 190000,
      color: 'Grey',
      gearbox: '5',
      fuel: '6L',
      brand: 'Audi',
      path: 'assets/car4.jpg'),
  CarItem(
      title: 'Jaguar XF 2019',
      price: 200000,
      color: 'White',
      gearbox: '6',
      fuel: '10L',
      brand: 'Jaguar',
      path: 'assets/car5.jpg'),
  CarItem(
      title: 'BMW E1 2018',
      price: 123000,
      color: 'Grey',
      gearbox: '6',
      fuel: '6L',
      brand: 'BMW',
      path: 'assets/car6.jpg'),
]);

class CarList{
  List<CarItem> cars;

  CarList({required this.cars});

}
