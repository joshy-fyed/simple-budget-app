import 'package:flutter/material.dart';
import 'package:simple_budget_app/utils/category_tile.dart';

class ExpensesList extends StatefulWidget {
  const ExpensesList({super.key});

  @override
  State<ExpensesList> createState() => _ExpensesListState();
}

class _ExpensesListState extends State<ExpensesList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expense Categories"),
      ),
      body: const Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            CategoryTile(categoryTitle: "Groceries - Food", description: "Frozen, fresh meat/produce, processed foods",),
            CategoryTile(categoryTitle: "Transportation", description: "move it, grab, indrive, beepcard",),
            CategoryTile(categoryTitle: "Savings", description: "extra money",),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){}, child: const Icon(Icons.add),),
    );
  }
}