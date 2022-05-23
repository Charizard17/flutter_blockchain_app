import 'package:http/http.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:web3dart/web3dart.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Blockchain App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  late Client httpClient;
  late Web3Client ethClient;
  bool data = false;

  final myAddress = '0x47452E2bb407986377E7F89B04AC087e7a0FF00a';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Vx.gray300,
      body: ZStack(
        [
          VxBox()
              .blue600
              .size(context.screenWidth, context.percentHeight * 30)
              .make(),
          VStack(
            [
              (context.percentHeight * 10).heightBox,
              '\$ChariCoin'.text.xl4.white.bold.center.makeCentered().py16(),
              (context.percentHeight * 5).heightBox,
              VxBox(
                child: VStack(
                  [
                    'Balance'.text.gray700.xl2.semiBold.makeCentered(),
                    10.heightBox,
                    data
                        ? '\$1'.text.bold.xl6.makeCentered()
                        : CircularProgressIndicator().centered(),
                  ],
                ),
              )
                  .p16
                  .white
                  .size(context.screenWidth, context.percentHeight * 18)
                  .rounded
                  .shadowXl
                  .make()
                  .p16(),
              30.heightBox,
              HStack(
                [
                  FlatButton.icon(
                    color: Colors.blue,
                    shape: Vx.roundedSm,
                    icon: Icon(
                      Icons.refresh,
                      color: Colors.white,
                    ),
                    label: 'Refresh'.text.white.make(),
                    onPressed: () {},
                  ).h(45),
                  FlatButton.icon(
                    color: Colors.green,
                    shape: Vx.roundedSm,
                    icon: Icon(
                      Icons.call_made_outlined,
                      color: Colors.white,
                    ),
                    label: 'Deposit'.text.white.make(),
                    onPressed: () {},
                  ).h(45),
                  FlatButton.icon(
                    color: Colors.red,
                    shape: Vx.roundedSm,
                    icon: Icon(
                      Icons.call_received_outlined,
                      color: Colors.white,
                    ),
                    label: 'Withdraw'.text.white.make(),
                    onPressed: () {},
                  ).h(45),
                ],
                alignment: MainAxisAlignment.spaceAround,
                axisSize: MainAxisSize.max,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
