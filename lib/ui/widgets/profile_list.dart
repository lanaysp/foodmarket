part of 'widgets.dart';

class ProfileListItem extends StatelessWidget {
  final User user;
  final double itemWidth;
  ProfileListItem({this.itemWidth, this.user});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: itemWidth - 182, // (60 - 12 - 110)
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Edit Profile',
                style: blacFontStyle.copyWith(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
                maxLines: 1,
                overflow: TextOverflow.clip,
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 26),
          width: 24,
          height: 24,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/back_arrow.png'),
            ),
          ),
        )
      ],
    );
  }
}
