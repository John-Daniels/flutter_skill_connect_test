import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_skill_connect_test/constants/assets_constant.dart';
import 'package:flutter_skill_connect_test/theme/app_colors.dart';
import 'package:flutter_skill_connect_test/theme/styles/text_styles.dart';
import 'package:flutter_skill_connect_test/view/home/controllers/home_controller.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../widgets/app_card_titile_and_summary.dart';
import '../widgets/blue_leading_info.dart';
import '../widgets/job_portfolio_item.dart';
import '../widgets/profile_header.dart';
import '../widgets/skill_chip.dart';
import '../widgets/work_experience.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  static String routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: SvgPicture.asset(Assets.arrowLeft),
          onPressed: () => Get.back(),
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
          padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 24.h),
          children: [
            // SizedBox(height: 24.h),
            const ProfileHeader(),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const BlueLeadingInfo(
                    content: '19th August, 2021',
                    title: 'Join Date',
                  ),
                  SizedBox(height: 10.h),
                  const BlueLeadingInfo(
                    content: '300',
                    title: 'Completed Jobs',
                  ),
                  SizedBox(height: 10.h),
                  const BlueLeadingInfo(
                    content: '4 Hours Ago',
                    title: 'Last Seen',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            const Divider(),
            const SizedBox(height: 10),
            AppCardTitleAndSummary(
              icon: Assets.documentIcon,
              title: 'Summary',
              child: Text(
                'There has been a password update on your account. Kindly reach out to us immediately if this isn’t your doing. There has been a password update on your account. Kindly reach out to us immediately if this isn’t your doing. There has been a password update on your account. Kindly reach out to us immediately if this isn’t your doing. ',
                style: getRegularTS.copyWith(
                  fontSize: 11,
                  color: AppColors.primaryTextColorLight,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const AppCardTitleAndSummary(
              icon: Assets.workIcon,
              title: 'Work Experience',
              child: Column(
                children: [
                  WorkExperience(
                    role: 'CEO/ Founder',
                    company: 'Samdom Fashion House',
                    period: 'June 2018- Present',
                  ),
                  SizedBox(height: 10),
                  WorkExperience(
                    role: 'Tailoring Apprentice',
                    company: 'Maydan Tailoring House',
                    period: 'June 2011- May 2018',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const AppCardTitleAndSummary(
              icon: Assets.skillIcon,
              title: 'Skills',
              child: SizedBox(
                width: double.infinity,
                child: Wrap(
                  alignment: WrapAlignment.start,
                  spacing: 17,
                  children: [
                    SkillChip(label: 'Fitting'),
                    SkillChip(label: 'Sewing'),
                    SkillChip(label: 'Measurement Taking'),
                    SkillChip(label: 'Amendment'),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            AppCardTitleAndSummary(
              icon: Assets.workIcon,
              title: 'Job Portfolio',
              child: SizedBox(
                height: 120.h,
                width: double.infinity,
                child: ListView.separated(
                  padding: EdgeInsets.zero,
                  itemCount: controller.jobPortfolio.length,
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 10),
                  itemBuilder: (context, index) {
                    dynamic item = controller.jobPortfolio[index];

                    return JobPortfolioItem(
                      image: item['image'],
                      title: item['title'],
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 20.h),
            AppCardTitleAndSummary(
              icon: Assets.reviewStarIcon,
              title: 'Ratings and Reviews (8)',
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(Assets.allenAvater),
                            const SizedBox(width: 9),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Allen Daniels',
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Row(
                                  children: [
                                    const AppRatingBar(
                                      ignoreGestures: true,
                                      initialRating: 5,
                                    ),
                                    const SizedBox(width: 2),
                                    Text(
                                      '5.0',
                                      style:
                                          getBoldTS.copyWith(fontSize: 15.sp),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        const Spacer(),
                        const Text('17 Hours Ago'),
                      ],
                    ),
                    const SizedBox(height: 18),
                    Text(
                      'There has been a password update on your account. Kindly reach out to us immediately if this isn’t your doing. There has been a password update on your account. Kindly reach out to us immediately if this isn’t your doing. There has been a password update on your account. Kindly reach out to us immediately if this isn’t your doing. ',
                      style: getRegularTS.copyWith(
                        fontSize: 11.sp,
                        color: AppColors.primaryTextColorLight,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Divider(color: AppColors.lightPrimaryBgColor),
                    SizedBox(height: 8.h),
                    OutlinedButton(
                      onPressed: () {},
                      child: const Text('Write a Review'),
                    )
                  ],
                ),
              ),
            ),
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
