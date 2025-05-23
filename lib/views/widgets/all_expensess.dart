import 'package:flutter/material.dart';
 
import 'package:responsive_dashboard/views/widgets/all_expensess_header.dart';
import 'package:responsive_dashboard/views/widgets/all_expensess_item_lisview.dart';

class AllExpensess extends StatelessWidget {
  const AllExpensess({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: ShapeDecoration(
        color: Colors.white,

        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: Column(
        children: [
          ALlExpensessHeader(),
          SizedBox(height: 16),
          AllExpensessItemLisview(),
        ],
      ),
    );
  }
}
