import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_skill_connect_test/constants/assets_constant.dart';
import 'package:flutter_skill_connect_test/theme/app_colors.dart';
import 'package:flutter_svg/svg.dart';

import '../widgets/profile_header.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  static String routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: SvgPicture.asset(Assets.arrowLeft),
          onPressed: () {},
        ),
        title: Text(
          'View Profile',
          style: TextStyle(
            fontSize: 25.sp,
            fontWeight: FontWeight.bold,
            color: AppColors.primaryColor,
          ),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          children: [
            SizedBox(height: 24.h),
            const ProfileHeader(),
          ],
        ),
      ),
    );
  }
}


// class AppBadge extends StatelessWidget {
//   final Widget child;

//   const AppBadge({
//     super.key,
//     required this.child,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         child,
//         Positioned(
//           bottom: 10,
//           right: 10,
//           child: SvgPicture.asset(Assets.onlineBadgeIcon),
//         ),
//       ],
//     );
//   }
// }
