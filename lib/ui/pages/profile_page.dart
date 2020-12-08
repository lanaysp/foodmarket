part of 'pages.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    //  double listItemWidth = MediaQuery.of(context).size.width - 2 * defaultMargin;
    return ListView(
      children: [
        Column(
          children: [
            // header
            Container(
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              height: 220,
              margin: EdgeInsets.only(bottom: defaultMargin),
              width: double.infinity,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                  width: 110,
                  height: 110,
                  margin: EdgeInsets.only(bottom: 16),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/photo_border.png'))),
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        // ignore: deprecated_member_use
                        image: NetworkImage((context.bloc<UserCubit>().state as UserLoaded).user.picturePath),
                        fit: BoxFit.cover)),
                  ),    
                  ),
                  Text(
                  // ignore: deprecated_member_use
                  (context.bloc<UserCubit>().state as UserLoaded).user.name,
                  style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  Text(
                  mockUser.email,
                  style: greyFontStyle.copyWith(fontWeight: FontWeight.w300),
                  ),
                ],
              ),
            ),
              // Body
            Container(
             
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  children: [
                    CustomTabBar(
                      titles: ['Account', 'FoodMarket'],
                      selectedIndex: selectedIndex,
                      onTap: (index) {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                    ),
                   SizedBox(
                    height: 16,
                  ),
                  // Builder(builder: (_) {
                  //   List user = (selectedIndex == 0)
                  //       ? mockUser
                  //       : (selectedIndex == 1)
                  //           ? []
                  //           : [];
                  //   return Column(
                  //     children: user
                  //         .map((e) =>
                  //             Padding(
                  //               padding:EdgeInsets.fromLTRB(defaultMargin, 0, defaultMargin, 16),
                  //               child: ProfileListItem(user: e, itemWidth: listItemWidth),
                  //             ))
                  //         .toList(),
                  //   );
                  // }),
                  ],
                ),
            )
          ],
        ),
      ],
    );
  }
}
