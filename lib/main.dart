import 'package:http/http.dart';
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
      title: 'Flutter Blockchain App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  late Client httpClient;
  late Web3Client ethClient;

  final myAddress = '0x47452E2bb407986377E7F89B04AC087e7a0FF00a';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Flutter Blockchain App'),
    );
  }
}
