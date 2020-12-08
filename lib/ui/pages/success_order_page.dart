part of 'pages.dart';

class SucessOrderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IllustrationPage(
          title: 'You’ve Made Order',
          subtitle:
              'Just stay at home while we are \npreparing your best foods',
          picturePath:
              'https://assets5.lottiefiles.com/private_files/lf30_J5NRAx.json',
          buttonTap1: () {
            Get.offAll(MainPage());
          },
          buttonTitle1: 'Pesan Makanan Lain',
          buttonTap2: () {
            Get.offAll(MainPage(
              initialPage: 1,
            ));
          },
          buttonTitle2: 'Lihat Pesanan Saya',
          ));
  }
}