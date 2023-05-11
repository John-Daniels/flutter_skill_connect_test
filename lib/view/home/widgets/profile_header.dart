import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:badges/badges.dart' as AppBadges;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../constants/assets_constant.dart';
import '../../../theme/app_colors.dart';
import '../../../theme/styles/text_styles.dart';
import '../../../widgets/app_elevated_button.dart';
import 'level_badge.dart';
import 'profile_header_information.dart';

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
              width: 107,
              height: 107,
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
            style: getRegularTS.copyWith(
              color: AppColors.primaryTextColorLight,
            ),
          ),
          SizedBox(height: 1.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const AppRatingBar(
                ignoreGestures: true,
                initialRating: 5,
              ),
              SizedBox(width: 3.w),
              const Text(
                '5.0',
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),

          // information and links
          SizedBox(height: 20.h),
          SizedBox(
            height: 70,
            child: GridView(
              padding: EdgeInsets.zero,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 0,
                mainAxisExtent: 30,
              ),
              children: [
                const HeaderInformation(
                  icon: Assets.locationIcon,
                  title: 'Lagos, Nigeria',
                ),
                const HeaderInformation(
                  icon: Assets.callIcon,
                  title: '+234 813 970 3721',
                ),
                const HeaderInformation(
                  icon: Assets.messageIcon,
                  title: 'samdee@gmail.com',
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Experience',
                      style: getRegularTS.copyWith(
                        color: AppColors.primaryTextColorLight,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(width: 4.w),
                    const LevelBadge(),
                  ],
                ),
              ],
            ),
          ),
          AppElevatedButton(
            onPressed: () {},
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(Assets.appleIcon),
                SizedBox(width: 4.w),
                const Text(
                  'Send Message',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 15.h),
          const Divider(),
        ],
      ),
    );
  }
}

class AppRatingBar extends StatelessWidget {
  final double initialRating;
  final bool ignoreGestures;
  final ValueChanged<double>? onRatingUpdate;

  const AppRatingBar({
    super.key,
    required this.initialRating,
    this.ignoreGestures = false,
    this.onRatingUpdate,
  });

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      initialRating: 5,
      minRating: 1,
      itemCount: 5,
      direction: Axis.horizontal,
      itemPadding: const EdgeInsets.symmetric(horizontal: 2),
      itemBuilder: (context, _) => SvgPicture.asset(Assets.ratingStarIcon),
      itemSize: 16,
      ignoreGestures: true,
      onRatingUpdate: onRatingUpdate ?? (value) {},
    );
  }
}
