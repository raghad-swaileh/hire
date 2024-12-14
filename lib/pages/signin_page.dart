import 'package:create_an_account/pages/sign_in_form.dart';
import 'package:create_an_account/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({super.key});

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Stack(
            children: [
              // Positioned back button inside Stack
              Positioned(
                top: 40, // Adjust the top position as needed
                left: 10, // Adjust the left position as needed
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: AppColors.orange),
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          size: 30,
                          color: AppColors.white,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Sign Up',
                        style: GoogleFonts.montserratAlternates(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: AppColors.navy,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Main content inside a Padding widget
              const Padding(
                padding: EdgeInsets.only(
                    top: 80), // Adjust top padding to avoid overlap
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Top section with logo and title

                    SizedBox(height: 28),
                    SigninForm(), // Login form
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
