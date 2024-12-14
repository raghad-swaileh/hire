import 'package:create_an_account/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(
            left: 15,
          ),
          child: Container(
            decoration: const BoxDecoration(
                color: Color.fromRGBO(255, 100, 4, 1.0),
                shape: BoxShape.circle),
            child: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
                size: 25,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ),
        title: Text(
          'Privacy Policy',
          style: GoogleFonts.montserratAlternates(
              // fontWeight: FontWeight.bold,
              ),
        ),
        // centerTitle: true,
      ),
      body: Column(children: [
        Divider(
          thickness: 0.7,
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Acceptance of the Privacy policy:',
                style: GoogleFonts.montserratAlternates(
                    fontSize: 20,
                    //fontWeight: FontWeight.bold,
                    color: AppColors.navy_blue),
              ),
              const SizedBox(height: 16),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus imperdiet eleifend purus non mattis. Vestibulum fringilla mi vel risus congue ultrices. Pellentesque at purus vel dolor accumsan ullamcorper. Sed pellentesque, dui non maximus lacinia, velit eros condimentum eros, et lacinia enim justo dignissim sapien.',
                style: GoogleFonts.montserratAlternates(
                  fontSize: 16,
                  color: AppColors.grey2,
                  height: 1.5,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Maecenas elementum a Donec ultrices perdiet risus, in venenatis mi. Etiam varius velit libero, ac porta metus vulputate at Maecenas elementum a eros eu posuere. Vivamus sed nunc est. Donec ultrices placerat tempor. Praesent ut imperdiet risus, in venenatis mi. Etiam varius velit libero, ac porta metus vulputate atMaecenas elementum a eros eu posuere. Vivamus sed nunc est. Donec ultrices placerat tempor. Praesent ut imperdiet risus, in venenatis mi. Etiam varius velit libero, ac porta metus vulputate at.',
                style: GoogleFonts.montserratAlternates(
                  fontSize: 16,
                  color: AppColors.grey2,
                  height: 1.5,
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
