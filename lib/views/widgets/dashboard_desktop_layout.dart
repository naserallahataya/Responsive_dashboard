import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/all_expensess.dart';
import 'package:responsive_dashboard/views/widgets/custom_drawer.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(height: 32),
        Expanded(
          flex: 2,
          child: Column(children: [Expanded(child: AllExpensess())]),
        ),
      ],
    );
  }
}
