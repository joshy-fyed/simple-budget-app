import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class CategoriesMenuScreen extends StatefulWidget {
  const CategoriesMenuScreen({super.key});

  @override
  State<CategoriesMenuScreen> createState() => _CategoriesMenuScreenState();
}

class _CategoriesMenuScreenState extends State<CategoriesMenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Categories"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.maxFinite, 60.h),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {},
              child: const Text("Expense Categories"),
            ),
            const Gap(20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.maxFinite, 60.h),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {},
              child: const Text("Modes of Payment"),
            ),
          ],
        ),
      ),
    );
  }
}
