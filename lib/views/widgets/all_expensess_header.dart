import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/views/widgets/range_options.dart';

class ALlExpensessHeader extends StatelessWidget {
  const ALlExpensessHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text('All Expensess', style: AppStyles.styleSemiBold20),
        Expanded(child: SizedBox()),
        RangeOptions(),
      ],
    );
  }
}
