part of 'models.dart';

enum FoodType { new_food, makanan, minuman }
class Food extends Equatable {
  final int id;
  final String picturePath;
  final String name;
  final String description;
  final String ingredients;
  final int price;
  final double rate;
  final List<FoodType> types;

  Food(
      {this.id,
      this.picturePath,
      this.name,
      this.description,
      this.ingredients,
      this.price,
      this.rate,
      this.types = const []
      });

  @override
  List<Object> get props =>
      [id, picturePath, name, description, ingredients, price, rate];
}

List<Food> mockFoods = [
  Food(
      id: 1,
      picturePath:
          "https://www.tiktak.id/wp-content/uploads/2020/04/Cicipi-Nikmat-Lezatnya-Sate-Ayam-Khas-Ponorogo.jpg",
      name: "Sate Ayam",
      description:
          "Sate tusuk yang enak sekali tiada tara dan dipilih dengan ayam kota pilihan yang rasanya sudah pasti enak dan Halal",
      ingredients: "Ayam dan Bawang",
      price: 15000,
      rate: 0.2,
      types: [FoodType.new_food, FoodType.makanan]),
  Food(
      id: 2,
      picturePath:
          "https://cdn.popmama.com/content-images/post/20200129/sate-babi-di-surabaya-1-7afc4955dfe8ef3286cc7001b1222983_600xauto.jpg",
      name: "Sate Babi",
      description:
          "Sate tusuk yang enak sekali tiada tara dan dipilih dengan babi pilihan yang rasanya sudah pasti enak dan haram",
      ingredients: "babi,babi,dan babi",
      price: 5000,
      rate: 1.2,
      types: [FoodType.new_food, FoodType.makanan]),
  Food(
      id: 3,
      picturePath:
          "https://cdn1-production-images-kly.akamaized.net/ZYZ7-bHMD4jXD9-sjGBpPSOOQkY=/673x379/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/2491237/original/089447500_1543345222-asal-mula-sate-makanan-terlezat-di-dunia.jpg",
      name: "Sate Buaya",
      description:
          "Sate tusuk yang enak sekali tiada tara dan dipilih dengan buaya pilihan yang rasanya sudah pasti enak dan Halal",
      ingredients: "Buaya dan darat",
      price: 70000,
      rate: 3.2,
      types: [FoodType.makanan]),
  Food(
      id: 4,
      picturePath:
          "https://img-global.cpcdn.com/recipes/3abf3bb8e5991595/400x400cq70/photo.jpg",
      name: "Sate Jagung",
      description:
          "Sate tusuk yang enak sekali tiada tara dan dipilih dengan jagung pilihan yang rasanya sudah pasti enak dan Halal",
      ingredients: "Jagung , tusuk sate",
      price: 50000,
      rate: 2.2,
      types: [FoodType.makanan]),
  Food(
      id: 5,
      picturePath:
          "https://cdn.idntimes.com/content-images/community/2019/05/1-s8ztyprfvokme6flstrkgg-3a99473b0c0459ab9dd170fff28e20d2.jpeg",
      name: "Sate Lilit",
      description:
          "Sate tusuk yang enak sekali tiada tara dan dipilih dengan jagung pilihan yang rasanya sudah pasti enak dan Halal",
      ingredients: "Sate dan Lilit",
      price: 70000,
      rate: 4.2,
      types: [FoodType.makanan]),
  Food(
      id: 6,
      picturePath:
          "https://cdn.idntimes.com/content-images/post/20200511/20200511-152309-00be041b84180a9365c3033fe8d1a435.jpg",
      name: "Es Yakult",
      description:
          "Es yang di buat dengan tambahan yakult",
      ingredients: "Es \nYakult",
      price: 8000,
      rate: 4.2,
      types: [FoodType.new_food,FoodType.minuman]),
  Food(
      id: 7,
      picturePath:
          "https://doyanresep.com/wp-content/uploads/2019/07/resep-boba-pearl-milk.jpg",
      name: "Boba Brown Sugar",
      description:
          "Es yang di buat dengan tambahan es",
      ingredients: "Boba \nGula Jawa",
      price: 6000,
      rate: 4.2,
      types: [FoodType.new_food,FoodType.minuman]),
  Food(
      id: 8,
      picturePath:
          "https://amazingmalang.id/wp-content/uploads/2018/12/@eskepal_milo_coco-cover.jpg",
      name: "Es Kepal Milo Coco",
      description:
          "Es yang di buat dengan tambahan es",
      ingredients: "ES \nKepal\nMilo\nCoco",
      price: 7000,
      rate: 4.2,
      types: [FoodType.minuman]),
  Food(
      id: 9,
      picturePath:
          "https://asset-a.grid.id/crop/0x0:0x0/360x240/photo/2020/02/28/4061404431.png",
      name: "Es Kecap Bango Malika",
      description:
          "Es yang di buat dengan tambahan es",
      ingredients: "ES \nKecap\nBango\nMalika",
      price: 7000,
      rate: 4.2,
      types: [FoodType.minuman]),
  Food(
      id: 10,
      picturePath:
          "https://www.securitylab.com.au/image/cache/catalog/Hidden/VIM-WIFICUP/vim-wifi-coffee-cup-1080p-full-hd-motion-detection-ios-android-aus-600x500.jpg",
      name: "Kopi Tempur",
      description:
          "Es yang di buat dengan tambahan es",
      ingredients: "Kopi \nTempur",
      price: 7000,
      rate: 4.2,
      types: [FoodType.minuman]),
];
