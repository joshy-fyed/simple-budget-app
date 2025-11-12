import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExpenseLog extends StatelessWidget {
  final String expenseTitle;
  final String? expenseDescription;
  final String expenseAmount;
  const ExpenseLog({super.key, required this.expenseTitle, required this.expenseAmount, this.expenseDescription});

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
            expenseTitle,
            style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            expenseDescription ?? '',
            style: TextStyle(fontSize: 10.sp),
          ),
          trailing: Text(
            expenseAmount,
            style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
          )),
    );
  }
}
