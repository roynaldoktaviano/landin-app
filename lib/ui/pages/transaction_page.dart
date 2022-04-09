import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class TransactionPage extends StatelessWidget {
  const TransactionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Text(
          'Transaction Page',
        ),
      ),
    );
  }
}
