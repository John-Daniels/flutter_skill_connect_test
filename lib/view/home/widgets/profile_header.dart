import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:badges/badges.dart' as AppBadges;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../constants/assets_constant.dart';
import '../../../theme/app_colors.dart';
import '../../../theme/styles/text_styles.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AppBadges.Badge(
            position: AppBadges.BadgePosition.bottomEnd(
              bottom: 20,
              end: 5,
            ),
            badgeStyle: AppBadges.BadgeStyle(
              badgeColor: AppColors.onlineBadgeColor,
            ),
            child: Container(
              decoration: const BoxDecoration(shape: BoxShape.circle),
              width: 107.w,
              height: 107.h,
              child: Image.asset(Assets.profilePic),
            ),
          ),
          SizedBox(height: 10.h),
          Text(
            'Samuel Dominic',
            style: getBoldTS,
          ),
          Text(
            'Fashion Designer, Male',
            style: getLightTS,
          ),
          SizedBox(height: 1.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              RatingBar.builder(
                initialRating: 5,
                minRating: 1,
                itemCount: 5,
                direction: Axis.horizontal,
                itemPadding: const EdgeInsets.symmetric(horizontal: 2),
                itemBuilder: (context, _) =>
                    SvgPicture.asset(Assets.ratingStarIcon),
                itemSize: 16,
                ignoreGestures: true,
                onRatingUpdate: (rating) {},
              ),
              const Text(
                '5.0',
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),

          // information and links

          SizedBox(
            height: 100,
            child: GridView.builder(
              itemCount: 4,
              padding: EdgeInsets.zero,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 0,
                mainAxisExtent: 30,
              ),
              itemBuilder: (context, index) {
                return const HeaderInformation(
                  icon: Assets.locationIcon,
                  title: 'Lagos, Nigeria',
                );
              },
            ),
          ),

          // Column(
          //   children: const [
          //     HeaderInformation(
          //       icon: Assets.locationIcon,
          //       title: 'Lagos, Nigeria',
          //     ),
          //     HeaderInformation(
          //       icon: Assets.locationIcon,
          //       title: 'Lagos, Nigeria',
          //     ),
          //   ],
          // )
        ],
      ),
    );
  }
}

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
    return Row(
      children: [
        SvgPicture.asset(Assets.locationIcon),
        SizedBox(width: 4.w),
        Text(
          title,
          style: getRegularTS.copyWith(
            color: AppColors.primaryTextColorLight,
          ),
        ),
      ],
    );
  }
}
