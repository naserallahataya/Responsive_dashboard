import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/views/widgets/all_expenses_item.dart';
import 'package:responsive_dashboard/views/widgets/all_expensess_header.dart';

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
          AllExpensesItem(
            itemModel: AllExpensesItemModel(
              image: Assets.imagesIncome,
              title: 'Income',
              date: 'aprile 2025 ',
              price: r'$20,19',
            ),
          ),
        ],
      ),
    );
  }
}
