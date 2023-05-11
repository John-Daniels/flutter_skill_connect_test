import 'package:flutter/material.dart';
import 'package:flutter_skill_connect_test/theme/app_colors.dart';
import 'package:flutter_skill_connect_test/theme/styles/text_styles.dart';
import 'package:flutter_svg/svg.dart';

class AppCardTitleAndSummary extends StatelessWidget {
  final String icon;
  final String title;
  final Widget child;

  const AppCardTitleAndSummary({
    super.key,
    required this.icon,
    required this.title,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: AppColors.borderColor,
        ),
      ),
      child: Column(
        children: [
          Container(
            height: 50,
            padding: const EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: AppColors.borderColor,
                ),
              ),
            ),
            child: Row(
              children: [
                SvgPicture.asset(icon),
                const SizedBox(width: 7),
                Text(
                  title,
                  style: getBoldTS.copyWith(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(17),
            child: child,
          ),
        ],
      ),
    );
  }
}
