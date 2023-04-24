import 'package:flutter/material.dart';
import 'package:toku_app/screens/prases_page.dart';

import '../components/category.dart';
import 'colors.dart';
import 'family_page.dart';
import 'numbers_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Toku App"),
        backgroundColor: Colors.brown,
      ),
      body: Column(
        children: [
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: ((context) {
                return NumbersPage();
              })));
            },
            text: "Numbers",
            color: Colors.red,
          ),
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: ((context) {
                return FamilyMembers();
              })));
            },
            text: "Family Members",
            color: Colors.cyan,
          ),
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: ((context) {
                return ColorsPage();
              })));
            },
            text: "Colors",
            color: Colors.indigo,
          ),
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: ((context) {
                return Phrases();
              })));
            },
            text: "phrases",
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}
