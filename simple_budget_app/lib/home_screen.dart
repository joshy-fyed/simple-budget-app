import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Daily Expenses'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                  prefixIcon: Icon(Icons.currency_yen, size: 36.sp,),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.h),
                ),
                controller: _controller,
                style: TextStyle(
                  fontSize: 40.sp
                ),
              ),
              const Gap(5),
              const Text("You have ¥3000 left on your daily allowance"),
              const Gap(100),
              const Text("Expenses today"),
            ],
          ),
        ),);
  }
}
