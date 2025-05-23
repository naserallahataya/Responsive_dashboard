import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/views/widgets/all_expenses_item_header.dart';

class inActiveAllExpensessItem extends StatelessWidget {
  const inActiveAllExpensessItem({super.key, required this.itemModel});

  final AllExpensesItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 18.0, bottom: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AllExpensesItemHeader(image: itemModel.image),
            SizedBox(height: 34),
            Text(itemModel.title, style: AppStyles.styleMedium16),

            Text(itemModel.date, style: AppStyles.styleRegular14),
            SizedBox(height: 16),
            Text(itemModel.price, style: AppStyles.styleSemiBold24),
          ],
        ),
      ),
    );
  }
}

class ActiveAllExpensessItem extends StatelessWidget {
  const ActiveAllExpensessItem({super.key, required this.itemModel});

  final AllExpensesItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: Color(0xFF4DB7F2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 18.0, bottom: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AllExpensesItemHeader(
              image: itemModel.image,
              imageBackground: Colors.white.withValues(
                alpha: 0.10000000149011612,
              ),
              imageColor: Colors.white,
            ),
            SizedBox(height: 34),
            Text(
              itemModel.title,
              style: AppStyles.styleMedium16.copyWith(color: Colors.white),
            ),

            Text(
              itemModel.date,
              style: AppStyles.styleRegular14.copyWith(
                color: Color(0xFFFAFAFA),
              ),
            ),
            SizedBox(height: 16),
            Text(
              itemModel.price,
              style: AppStyles.styleSemiBold24.copyWith(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
