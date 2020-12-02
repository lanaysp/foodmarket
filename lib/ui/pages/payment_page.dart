part of 'pages.dart';

class PaymentPage extends StatelessWidget {
  final Transaction transaction;

  PaymentPage({this.transaction});
  @override
  Widget build(BuildContext context) {
    return GeneralPage(
      title: 'Payment',
      subtitle: 'You deserve better meal',
      onBackButtonPressed: () {},
      backColor: 'FAFAFC'.toColor(),
      child: Column(
        children: [
          ///bagian atas
          Container(
            margin: EdgeInsets.only(bottom: defaultMargin),
            padding: EdgeInsets.symmetric(horizontal: defaultMargin, vertical: 16),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Item Ordered', style: blacFontStyle3,),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          margin: EdgeInsets.only(right: 12),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(image: NetworkImage(transaction.food.picturePath),
                            fit: BoxFit.cover)
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width - 189, ///2 * defaultMargin - 60 - 12 - 78
                              child: Text(transaction.food.name, style: blacFontStyle2, maxLines: 1, overflow:TextOverflow.clip,)),
                            Text(NumberFormat.currency(
                              locale: 'id-ID',
                              symbol: 'Rp.',
                              decimalDigits: 0).format(transaction.food.price), style: greyFontStyle.copyWith(fontSize: 13),
                              )
                          ],
                        )
                      ],
                    ),
                    Text('${transaction.quantity} item(s)', style: greyFontStyle.copyWith(fontSize: 13),
                    )
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 16, bottom: 8),
                child: Text('Detail Transaction', style: blacFontStyle3,),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 SizedBox(
                   width: MediaQuery.of(context).size.width / 2 - defaultMargin - 5,
                   child: Text(transaction.food.name, style: greyFontStyle,)
                   ),
                   SizedBox(
                   width: MediaQuery.of(context).size.width / 2 - defaultMargin - 5,
                   child: Text(NumberFormat.currency(locale: 'id-ID', symbol: 'Rp.', decimalDigits: 0).format(transaction.quantity * transaction.food.price ), style: blacFontStyle3, textAlign: TextAlign.right,)
                   ),
                ],
                ),
                SizedBox(
                  height: 6,
                ),
                 Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 SizedBox(
                   width: MediaQuery.of(context).size.width / 2 - defaultMargin - 5,
                   child: Text('Driver', style: greyFontStyle,)
                   ),
                   SizedBox(
                   width: MediaQuery.of(context).size.width / 2 - defaultMargin - 5,
                   child: Text(NumberFormat.currency(locale: 'id-ID', symbol: 'Rp.', decimalDigits: 0).format(50000), style: blacFontStyle3, textAlign: TextAlign.right,)
                   ),
                ],
                ),
                SizedBox(
                  height: 6,
                ),
                 Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 SizedBox(
                   width: MediaQuery.of(context).size.width / 2 - defaultMargin - 5,
                   child: Text('Tax 10%', style: greyFontStyle,)
                   ),
                   SizedBox(
                   width: MediaQuery.of(context).size.width / 2 - defaultMargin - 5,
                   child: Text(NumberFormat.currency(locale: 'id-ID', symbol: 'Rp.', decimalDigits: 0).format(transaction.quantity * transaction.food.price * 0.1 ), style: blacFontStyle3, textAlign: TextAlign.right,)
                   ),
                ],
                ),
                SizedBox(
                  height: 6,
                ),
                 Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 SizedBox(
                   width: MediaQuery.of(context).size.width / 2 - defaultMargin - 5,
                   child: Text('Total', style: greyFontStyle,)
                   ),
                   SizedBox(
                   width: MediaQuery.of(context).size.width / 2 - defaultMargin - 5,
                   child: Text(NumberFormat.currency(locale: 'id-ID', symbol: 'Rp.', decimalDigits: 0).format(transaction.food.price * transaction.quantity * 1.1 + 50000 ), style: blacFontStyle3.copyWith(fontWeight: FontWeight.w500, color: '1ABC9C'.toColor()), textAlign: TextAlign.right,)
                   ),
                ],
                ),
                
              ],
            ),
          ),
        ],
      ),
    );
  }
}
