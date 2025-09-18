import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../theme/app_colors.dart';

class PrayerTimeComponent extends StatelessWidget {
  final String prayerNameEng;
  final String prayerNameArab;
  final String prayerTime;
  final IconData iconData;
  final String remainingTime;

  const PrayerTimeComponent({
    super.key,
    required this.prayerNameEng,
    required this.prayerNameArab,
    required this.prayerTime,
    required this.iconData,
    required this.remainingTime,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(color: AppColors.green700,borderRadius: BorderRadius.circular(12)),
      child: Row(
        children: [
          SizedBox(width: 10),
          Icon(iconData, color: AppColors.white500),
          SizedBox(width: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                prayerNameEng,
                style: GoogleFonts.nunito(
                  color: AppColors.white500,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 10,),
              Text(
                prayerNameArab,
                style: GoogleFonts.nunito(
                  color: AppColors.white500,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(width: 40),
          Text(remainingTime),
          Spacer(),

          Text(
            prayerTime,
            style: GoogleFonts.nunito(
              color: AppColors.white500,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(width: 10),
        ],
      ),
    );
  }
}
