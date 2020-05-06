class Hotel {
  String imageUrl;
  String name;
  String address;
  int price;

  Hotel({
    this.imageUrl,
    this.name,
    this.address,
    this.price,
  });
}

final List<Hotel> hotels = [
  Hotel(
    imageUrl: 'images/hotel0.jpg',
    name: 'Le Grand Village',
    address: '404 Great St',
    price: 175,
  ),
  Hotel(
    imageUrl: 'images/hotel1.jpg',
    name: 'Gardens Inn',
    address: '404 Great St',
    price: 300,
  ),
  Hotel(
    imageUrl: 'images/hotel2.jpg',
    name: 'Beach Cabanas',
    address: '404 Great St',
    price: 240,
  ),
];
