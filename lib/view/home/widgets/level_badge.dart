import 'package:flutter/material.dart';

import '../../../theme/app_colors.dart';

class LevelBadge extends StatelessWidget {
  final String title;
  const LevelBadge({
    super.key,
    this.title = 'Expert',
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3),
        gradient: LinearGradient(
          colors: [
            AppColors.primaryColor.withOpacity(0.3),
            AppColors.badgeColorGrad1.withOpacity(0.3),
          ],
        ),
      ),
      child: Text(
        title,
        style: const TextStyle(fontSize: 14),
      ),
    );
  }
}
