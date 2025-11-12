import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryTile extends StatelessWidget {
  final String categoryTitle;
  final String? description;
  const CategoryTile({super.key, required this.categoryTitle, this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 2,
      child: ListTile(
        onTap: () {},
        leading: const Icon(Icons.attach_money, color: Colors.green),
        subtitle: Text(description ?? '', style: TextStyle(fontSize: 11.sp),),
        title: Text(
          categoryTitle,
          style: TextStyle(fontSize: 16.sp,),
        ),
      ),
    );
  }
}
