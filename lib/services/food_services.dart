part of'services.dart';

class FoodServices {
  static Future<ApiRetunValue<List<Food>>>  getFoods() async{
    await Future.delayed(Duration(milliseconds: 500));

    return ApiRetunValue(value: mockFoods);
  }
}