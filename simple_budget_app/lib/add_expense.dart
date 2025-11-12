import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

class AddExpenseScreen extends StatefulWidget {
  const AddExpenseScreen({super.key});

  @override
  State<AddExpenseScreen> createState() => _AddExpenseScreenState();
}

class _AddExpenseScreenState extends State<AddExpenseScreen> {
  final _budgetNameController = TextEditingController();
  final _budgetAmountController = TextEditingController();

  String dropdownValue1 = list.first;
  String dropdownValue2 = list.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Expense"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Expense amount"),
            const Gap(5),
            TextField(
              decoration: InputDecoration(
                hintText: "10,000",
                hintStyle: const TextStyle(color: Colors.grey),
                filled: true,
                fillColor: const Color.fromARGB(72, 158, 158, 158),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
                prefixIcon: Icon(
                  Icons.currency_yen,
                  size: 36.sp,
                ),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.h),
              ),
              controller: _budgetAmountController,
              style: TextStyle(fontSize: 30.sp),
            ),
            const Gap(20),
            const Text("Description"),
            const Gap(5),
            TextField(
              maxLines: 3,
              decoration: InputDecoration(
                hintText: "Add description",
                hintStyle: const TextStyle(color: Colors.grey),
                filled: true,
                fillColor: const Color.fromARGB(72, 158, 158, 158),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.h),
              ),
              controller: _budgetNameController,
              style: TextStyle(fontSize: 14.sp),
            ),
            const Gap(20),
            DropdownMenu(
              hintText: "Category",
              width: double.maxFinite,
              dropdownMenuEntries: list
                  .map<DropdownMenuEntry<String>>(
                      (e) => DropdownMenuEntry<String>(value: e, label: e))
                  .toList(),
              onSelected: (value) {
                setState(() {
                  dropdownValue1 = value!;
                });
              },
            ),
            const Gap(20),
            DropdownMenu(
              hintText: "Mode of Payment",
              width: double.maxFinite,
              dropdownMenuEntries: list
                  .map<DropdownMenuEntry<String>>(
                      (e) => DropdownMenuEntry<String>(value: e, label: e))
                  .toList(),
              onSelected: (value) {
                setState(() {
                  dropdownValue2 = value!;
                });
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: ElevatedButton(
              onPressed: () {},
              child: const Text(
                "Add Expense",
                style: TextStyle(color: Colors.white),
              )),
        ),
      ),
    );
  }
}
