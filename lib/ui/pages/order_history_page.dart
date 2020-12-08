part of 'pages.dart';

class OrderHistoryPage extends StatefulWidget {
  @override
  _OrderHistoryPageState createState() => _OrderHistoryPageState();
}

class _OrderHistoryPageState extends State<OrderHistoryPage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionCubit, TransactionState>(builder: (_, state) {
      if (state is TransactionLoaded) {
        if (state.transactions.length == 0) {
          return IllustrationPage(
            title: 'Ouch! Hungry',
            subtitle: 'Seems you like have not\nordered any food yet',
            picturePath:
                'https://assets2.lottiefiles.com/packages/lf20_Eh4ZBX.json',
            buttonTitle1: 'Find Foods',
            buttonTap1: () {
               Get.offAll(MainPage());
            },
          );
        } else {
          double listItemWidth =
              MediaQuery.of(context).size.width - 2 * defaultMargin;

          return ListView(
            children: [
              Column(
                children: [
                  // header
                  Container(
                    height: 100,
                    width: double.infinity,
                    margin: EdgeInsets.only(bottom: defaultMargin),
                    padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Your Orders', style: blacFontStyle),
                        Text(
                          'Wait for the best meal',
                          style: greyFontStyle.copyWith(
                              fontWeight: FontWeight.w300),
                        )
                      ],
                    ),
                  ),
                  // body
                  Container(
                    width: double.infinity,
                    color: Colors.white,
                    child: Column(
                      children: [
                        CustomTabBar(
                          titles: ['In Progress', 'Past Order'],
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
                        Builder(builder: (_) {
                          List<Transaction> transactions = (selectedIndex == 0)
                              ? state.transactions
                                  .where((element) =>
                                      element.status ==
                                          TransactionStatus.on_delivery ||
                                      element.status ==
                                          TransactionStatus.pending)
                                  .toList()
                              : state.transactions
                                  .where((element) =>
                                      element.status ==
                                          TransactionStatus.delivered ||
                                      element.status ==
                                          TransactionStatus.cancelled)
                                  .toList();
                          return Column(
                            children: transactions
                                .map((e) => Padding(
                                      padding: const EdgeInsets.only(
                                          right: defaultMargin,
                                          left: defaultMargin,
                                          bottom: 16),
                                      child: OrderListItem(
                                          transaction: e,
                                          itemWidth: listItemWidth),
                                    ))
                                .toList(),
                          );
                        })
                      ],
                    ),
                  )
                ],
              ),
            ],
          );
        }
      } else {
        return Center(
          child: loadingIndicator,
        );
      }
    });
  }
}
