part of 'models.dart';

class Food extends Equatable {
  final int id;
  final String picturePath;
  final String name;
  final String description;
  final String ingredients;
  final int price;
  final double rate;

  Food(
      {this.id,
      this.picturePath,
      this.name,
      this.description,
      this.ingredients,
      this.price,
      this.rate});

  @override
  List<Object> get props =>
      [id, picturePath, name, description, ingredients, price, rate];
}

List<Food> mockFoods = [
  Food(
      id: 1,
      picturePath:
          "https://i.pinimg.com/736x/06/7b/28/067b2879e5c9c42ec669bf639c3fbffc.jpg",
      name: "Sate Sultan",
      description:
          "Sate tusuk yang enak sekali tiada tara dan dipilih dengan babi pilihan yang rasanya sudah pasti enak dan haram",
      ingredients: "babi,babi,dan babi",
      price: 10000,
      rate: 4.2),
  Food(
      id: 1,
      picturePath:
          "https://i.pinimg.com/736x/06/7b/28/067b2879e5c9c42ec669bf639c3fbffc.jpg",
      name: "Sate Sultan",
      description:
          "Sate tusuk yang enak sekali tiada tara dan dipilih dengan babi pilihan yang rasanya sudah pasti enak dan haram",
      ingredients: "babi,babi,dan babi",
      price: 10000,
      rate: 4.2),
  Food(
      id: 1,
      picturePath:
          "https://i.pinimg.com/736x/06/7b/28/067b2879e5c9c42ec669bf639c3fbffc.jpg",
      name: "Sate Sultan",
      description:
          "Sate tusuk yang enak sekali tiada tara dan dipilih dengan babi pilihan yang rasanya sudah pasti enak dan haram",
      ingredients: "babi,babi,dan babi",
      price: 10000,
      rate: 4.2),
  Food(
      id: 1,
      picturePath:
          "https://i.pinimg.com/736x/06/7b/28/067b2879e5c9c42ec669bf639c3fbffc.jpg",
      name: "Sate Sultan",
      description:
          "Sate tusuk yang enak sekali tiada tara dan dipilih dengan babi pilihan yang rasanya sudah pasti enak dan haram",
      ingredients: "babi,babi,dan babi",
      price: 10000,
      rate: 4.2)
];
