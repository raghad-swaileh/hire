
import 'package:create_an_account/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LocationAccess extends StatelessWidget {
  const LocationAccess({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          const SizedBox(height: 300),
          Row(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.home_outlined,
                color: AppColors.orange,
                size: 60.0,
              ),
              const SizedBox(
                width: 12,
              ),
              Text(
                'Hire Harmony',
                style: GoogleFonts.montserratAlternates(
                  fontSize: 36,
                  color: AppColors.navy_blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            'Allow location access?',
            style: GoogleFonts.montserratAlternates(
              fontSize: 25,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          Text(
            'We need your location access to easily find \n            Skillr professionals around you.',
            style: GoogleFonts.montserratAlternates(
              fontSize: 15,
              color: Colors.grey,
            ),
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => PrivacyPolicyPage()),
              // );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.orange,
              padding:
                  const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
            ),
            child: Text(
              'Allow location access',
              style: GoogleFonts.montserratAlternates(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          TextButton(
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => PrivacyPolicyPage()),
                // );
              },
              child: Text(
                'Not Now',
                style: GoogleFonts.montserratAlternates(
                  fontSize: 15,
                  color: Colors.grey,
                ),
              )),
        ]),
      ),
    );
  }
}
