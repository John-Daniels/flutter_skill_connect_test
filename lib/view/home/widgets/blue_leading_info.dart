import 'package:flutter/material.dart';
import 'package:flutter_skill_connect_test/theme/app_colors.dart';

class BlueLeadingInfo extends StatelessWidget {
  final String title;
  final String content;
  const BlueLeadingInfo({
    super.key,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '$title:',
          style: TextStyle(
            color: AppColors.primaryColor,
            fontWeight: FontWeight.w600,
            fontSize: 15,
          ),
        ),
        const SizedBox(width: 4),
        Text(
          content,
          style: const TextStyle(
            fontSize: 15,
          ),
        ),
      ],
    );
  }
}
