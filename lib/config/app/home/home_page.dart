import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quran_app/config/app/home/widgets/quick_action_card.dart';
import 'package:quran_app/features/qibla_direction/presentation/pages/main_qibla_page.dart';

import '../theme/app_colors.dart';
import 'widgets/prayer_time_component.dart';
import 'widgets/salam_component.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black500,
      appBar: AppBar(backgroundColor: AppColors.green700),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SalamComponent(
              eng: 'Peace be upon you',
              arab: 'السَّلاَمُ عَلَيْكُمْ وَرَحْمَةُ اللهِ وَبَرَكَاتُهُ',
              subTitle: 'Continue your spiritual journey with Holy Quran',
            ),
            SizedBox(height: 10),
            Text(
              'Next Prayer',
              style: GoogleFonts.nunito(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: AppColors.white500,
              ),
            ),
            SizedBox(height: 5),
            PrayerTimeComponent(
              prayerNameEng: 'Fajr',
              prayerNameArab: 'الفجر',
              prayerTime: '04:30 Am',
              iconData: Icons.access_time,
              remainingTime: '1 hour 30 minutes',
            ),
            SizedBox(height: 5),
            Text(
              'Quick Access',
              style: GoogleFonts.nunito(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: AppColors.white500,
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                QuickActionCard(
                  title: 'Qibla',
                  icon: Icons.explore,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => MainQiblaPage()),
                    );
                  },
                  subtitle: 'Find direction',
                ),
                QuickActionCard(
                  title: 'Prayer timings',
                  icon: Icons.schedule,
                  onTap: () {},
                  subtitle: 'Set prayer time',
                ),
                QuickActionCard(
                  title: 'Practice',
                  icon: Icons.mic,
                  onTap: () {},
                  subtitle: 'Ai Assistant',
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                QuickActionCard(
                  title: 'Location',
                  icon: Icons.my_location,
                  onTap: () {},
                  subtitle: 'Set location',
                ),
                QuickActionCard(
                  title: 'Alarm',
                  icon: Icons.alarm,
                  onTap: () {},
                  subtitle: 'Set alarm',
                ),
                QuickActionCard(
                  title: 'Weather',
                  icon: Icons.cloud,
                  onTap: () {},
                  subtitle: 'Check weather',
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                QuickActionCard(
                  title: 'Auto Silent',
                  icon: Icons.do_not_disturb_on,
                  onTap: () {},
                  subtitle: 'During prayer',
                ),
                QuickActionCard(
                  title: 'Support US',
                  icon: Icons.volunteer_activism,
                  onTap: () {},
                  subtitle: 'Buy us a meal',
                ),
                QuickActionCard(
                  title: 'Settings',
                  icon: Icons.settings,
                  onTap: () {},
                  subtitle: 'App settings',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
