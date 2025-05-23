import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/views/widgets/all_expenses_item.dart';

class AllExpensessItemLisview extends StatefulWidget {
  const AllExpensessItemLisview({super.key});

  @override
  State<AllExpensessItemLisview> createState() =>
      _AllExpensessItemLisviewState();
}

class _AllExpensessItemLisviewState extends State<AllExpensessItemLisview> {
  final items = [
    AllExpensesItemModel(
      image: Assets.imagesBalance,
      title: 'Balace',
      date: 'April 2025',
      price: r'$20.12',
    ),
    AllExpensesItemModel(
      image: Assets.imagesIncome,
      title: 'Income',
      date: 'April 2025',
      price: r'$30.12',
    ),
    AllExpensesItemModel(
      image: Assets.imagesExpenses,
      title: 'Expenses',
      date: 'April 2025',
      price: r'$20.12',
    ),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children:
          // items.map((e) => Expanded(child: AllExpensesItem(itemModel: e))).toList(),
          items.asMap().entries.map((e) {
            int index = e.key;
            var item = e.value;
            if (index == 1) {
              return Expanded(
                child: GestureDetector(
                  onTap: () {
                    updateIndex(index);
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: AllExpensessItem(
                      isSelected: selectedIndex == index,
                      itemModel: item,
                    ),
                  ),
                ),
              );
            } else {
              return Expanded(
                child: GestureDetector(
                  onTap: () {
                    updateIndex(index);
                  },
                  child: AllExpensessItem(
                    isSelected: selectedIndex == index,
                    itemModel: item,
                  ),
                ),
              );
            }
          }).toList(),
    );
  }

  void updateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
