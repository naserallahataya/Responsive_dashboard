import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';

import 'package:responsive_dashboard/views/widgets/inactive_and_active_all_expensess.dart';

class AllExpensessItem extends StatelessWidget {
  AllExpensessItem({
    super.key,
    required this.itemModel,
    required this.isSelected,
  });
  final AllExpensesItemModel itemModel;
  bool isSelected;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveAllExpensessItem(itemModel: itemModel)
        : inActiveAllExpensessItem(itemModel: itemModel);
  }
}
