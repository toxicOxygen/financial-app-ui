import 'package:flutter/material.dart';
import 'package:mobile_pos/provider/ui_operations_provider.dart';
import './screens/draw_funds_page.dart';
import './screens/auth_screen.dart';
import 'screens/home_screen.dart';
import './screens/welcomepage.dart';
import './screens/money_transfer_screen.dart';
import './screens/transaction_history_screen.dart';
import './screens/deposit_cash_screen.dart';
import 'package:provider/provider.dart';
import './provider/auth_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => AuthProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => UiControllerProvider(),
        )
      ],
      child: MaterialApp(
        title: 'Mobile POS',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.blue),
        home: HomePage(),
        routes: {
          HomePage.tag: (ctx) => HomePage(),
          WelcomePage.tag: (ctx) => WelcomePage(),
          AuthScreen.tag: (ctx) => AuthScreen(),
          MoneyTransferPage.tag: (ctx) => MoneyTransferPage(),
          TransactionHistoryPage.tag: (ctx) => TransactionHistoryPage(),
          DrawFundsPage.tag: (ctx) => DrawFundsPage(),
          DepositCashPage.tag: (ctx) => DepositCashPage()
        },
      ),
    );
  }
}
