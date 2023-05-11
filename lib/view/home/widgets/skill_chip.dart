import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_skill_connect_test/theme/app_colors.dart';

class SkillChip extends StatelessWidget {
  final String label;
  const SkillChip({
    super.key,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Chip(
      side: BorderSide(color: AppColors.primaryColor),
      labelStyle: TextStyle(fontWeight: FontWeight.w500, fontSize: 12.sp),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      label: Text(label),
    );
  }
}
