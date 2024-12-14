import 'package:create_an_account/utils/app_colors.dart';
import 'package:create_an_account/widget/main_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CusVerificationSuccessPage extends StatefulWidget {
  final String notificationTitle;
  final String notificationMessage;

  const CusVerificationSuccessPage({
    super.key,
    required this.notificationTitle,
    required this.notificationMessage,
  });

  @override
  State<CusVerificationSuccessPage> createState() =>
      _VerificationSuccessPageState();
}

class _VerificationSuccessPageState extends State<CusVerificationSuccessPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: AppColors.white,
      body: Column(
        children: [
          /*
          PreferredSize(
            preferredSize: const Size.fromHeight(25.0),
            child: Divider(
              thickness: 1,
              color: AppColors().grey,
            ),
          ),
          */
          const SizedBox(
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.home_outlined,
                        color: AppColors.orange, size: 50),
                    const SizedBox(width: 8),
                    Text(
                      'Hire Harmony',
                      style: GoogleFonts.montserratAlternates(
                        fontSize: 34,
                        fontWeight: FontWeight.bold,
                        color: AppColors.navy,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 80),
                Icon(Icons.check_circle, color: AppColors.orange, size: 70),
                const SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      widget.notificationTitle, // Access widget properties
                      style: GoogleFonts.montserratAlternates(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: AppColors.navy,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 15),
                    Text(
                      widget.notificationMessage, // Access widget properties
                      style: GoogleFonts.montserratAlternates(
                        fontSize: 15,
                        color: AppColors.grey2,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 150,
                ),
                MainButton(
                  onPressed: () {
                    //   Navigator.pushNamedAndRemoveUntil(
                    //     context,
                    //     AppRoutes.loginPage,
                    //     (Route<dynamic> route) =>
                    //         route.settings.name == AppRoutes.welcomePage,
                    //   );
                  },
                  text: 'Proceed to Login page',
                ),
              ],
            ),
          ),
          const Spacer(),
          DecoratedBox(
            decoration: BoxDecoration(
              color: AppColors.orange,
            ),
            child: SizedBox(
              width: double.infinity,
              height: 40,
              child: Center(
                child: Text(
                  '© 2024, Hire All rights reserved',
                  style: TextStyle(color: AppColors.navy),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
