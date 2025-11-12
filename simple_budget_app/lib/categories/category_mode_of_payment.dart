import 'package:flutter/material.dart';
import 'package:simple_budget_app/utils/category_tile.dart';

class MopList extends StatefulWidget {
  const MopList({super.key});

  @override
  State<MopList> createState() => _MopListState();
}

class _MopListState extends State<MopList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Modes of Payment"),
      ),
      body: const Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            CategoryTile(categoryTitle: "Bank"),
            CategoryTile(categoryTitle: "Credit"),
            CategoryTile(categoryTitle: "Debit/Bank Transfer"),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){}, child: const Icon(Icons.add),),
    );
  }
}