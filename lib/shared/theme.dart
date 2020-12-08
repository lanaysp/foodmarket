part of 'shared.dart';

Color greyColor = "8D92A3".toColor();
Color mainColor = "F0712E".toColor();

Widget loadingIndicator = 
SpinKitFadingCircle(
  size: 45,
  color: mainColor,
);

TextStyle greyFontStyle = GoogleFonts.poppins().copyWith(color: greyColor);
TextStyle blacFontStyle = GoogleFonts.poppins()
    .copyWith(color: Colors.black, fontSize: 22, fontWeight: FontWeight.w500);
TextStyle blacFontStyle2 = GoogleFonts.poppins()
    .copyWith(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500);
TextStyle blacFontStyle3 = GoogleFonts.poppins().copyWith(
  color: Colors.black,
);

const double defaultMargin = 24;
