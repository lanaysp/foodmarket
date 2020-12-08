part of 'pages.dart';

class SucessSignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IllustrationPage(
        title: 'Yeay! Completed', 
        subtitle: 'Now you are able to order \nsome foods as a self-reward', 
        picturePath: 'https://assets10.lottiefiles.com/private_files/lf30_axdai8zf.json', 
        buttonTap1: () {
           Get.to(MainPage());
        }, 
        buttonTitle1: 'Find Foods',
       ),
        
      
    );
  }
}