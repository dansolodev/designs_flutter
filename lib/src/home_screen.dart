import 'package:flutter/material.dart';
import 'package:designs/src/widgets/background.dart';
import 'package:designs/src/widgets/card_table.dart';
import 'package:designs/src/widgets/custom_bottom_nav.dart';
import 'package:designs/src/widgets/page_title.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Background(),
          _HomeBody(),
        ],
      ),
      bottomNavigationBar: const CustomBottomNav(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          PageTitle(),
          CardTable(),
        ],
      ),
    );
  }
}
