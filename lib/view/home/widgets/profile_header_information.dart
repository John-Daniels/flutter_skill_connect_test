import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../theme/app_colors.dart';
import '../../../theme/styles/text_styles.dart';

class HeaderInformation extends StatelessWidget {
  final String title;
  final String icon;
  const HeaderInformation({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: const TextStyle(overflow: TextOverflow.ellipsis),
      child: Row(
        children: [
          SvgPicture.asset(icon),
          SizedBox(width: 3.w),
          Text(
            title,
            style: getRegularTS.copyWith(
              color: AppColors.primaryTextColorLight,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
