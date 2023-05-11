import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_skill_connect_test/theme/app_colors.dart';

class WorkExperience extends StatelessWidget {
  final String role;
  final String company;
  final String period;

  const WorkExperience({
    super.key,
    required this.role,
    required this.company,
    required this.period,
  });

  @override
  Widget build(BuildContext context) {
    final firstLetter = company[0];

    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Transform.translate(
            offset: const Offset(0, 5),
            child: FirstLetterIcon(letter: firstLetter),
          ),
          SizedBox(width: 15.w),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                role,
                style: TextStyle(
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 15.sp,
                ),
              ),
              Text(
                company,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 11.sp,
                  color: AppColors.primaryTextColor,
                ),
              ),
              Text(
                period,
                style: TextStyle(
                  fontSize: 11.sp,
                  color: AppColors.primaryTextColorLight,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class FirstLetterIcon extends StatelessWidget {
  final String letter;
  const FirstLetterIcon({
    super.key,
    required this.letter,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 35,
      height: 35,
      decoration: BoxDecoration(
        color: AppColors.primaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Text(
        letter,
        style: TextStyle(
          color: AppColors.primaryColor,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    );
  }
}
