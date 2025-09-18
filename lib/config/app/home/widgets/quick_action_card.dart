import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quran_app/config/app/theme/app_colors.dart';

class QuickActionCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;
  final Color? color;
  final String subtitle;

  const QuickActionCard({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
    this.color,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(width: 120,height: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: AppColors.green200),
        ),
        child: Column(children: [
          SizedBox(height: 10),
          Icon(icon, color: color ?? AppColors.green700,size: 30,),
          SizedBox(height: 5),
          Text(
            title,
            style: GoogleFonts.nunito(
              color: AppColors.white500,
              fontSize: 15,
            ),
          ),
          SizedBox(height: 10),
          Text(
            subtitle,
            style: GoogleFonts.nunito(
              color: AppColors.green100,
              fontSize: 14,
            ),
          ),
        ]),
      ),
    );
  }
}
