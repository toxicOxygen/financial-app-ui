import 'package:flutter/material.dart';
import './screens/auth_screen.dart';
import 'screens/home_screen.dart';
import './screens/welcomepage.dart';
import './screens/money_transfer_screen.dart';
import './screens/transaction_history_screen.dart';

void main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mobile POS',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: WelcomePage(),
      routes: {
        HomePage.tag:(ctx)=>HomePage(),
        WelcomePage.tag: (ctx)=>WelcomePage(),
        AuthScreen.tag: (ctx)=>AuthScreen(),
        MoneyTransferPage.tag : (ctx)=>MoneyTransferPage(),
        TransactionHistoryPage.tag : (ctx)=>TransactionHistoryPage()
      },
    );
  }
}