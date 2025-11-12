import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExpenseLog extends StatelessWidget {
  const ExpenseLog({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 2,
      child: ListTile(
          onTap: () {},
          leading: const Icon(Icons.fastfood, color: Colors.orange),
          title: Text(
            "Groceries - Food",
            style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            "belcris run",
            style: TextStyle(fontSize: 10.sp),
          ),
          trailing: Text(
            "410.00",
            style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
          )),
    );
  }
}
