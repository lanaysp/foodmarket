part of 'models.dart';

class User extends Equatable {
  final int id;
  final String name;
  final String email;
  final String address;
  final String houseNumber;
  final String phoneNumber;
  final String city;
  final String picturePath;

  User(
      {this.id,
      this.name,
      this.email,
      this.address,
      this.houseNumber,
      this.phoneNumber,
      this.city,
      this.picturePath});
  @override
  
  List<Object> get props =>
      [id, name, email, address, houseNumber, phoneNumber, city, picturePath];
}

User mockUser = User(
  id: 1,
  name: 'Maulana Yusup',
  email: 'lanaysps@gmail.com',
  address: 'Jalan-Jalan',
  city: 'Jepara',
  houseNumber: '666',
  phoneNumber: '085156306403',
  picturePath: 'https://pbs.twimg.com/media/DMpQo5mUQAA_zwK.jpg'
);
