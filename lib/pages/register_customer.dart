import 'package:create_an_account/pages/phone_verification.dart';
import 'package:create_an_account/utils/app_colors.dart';
import 'package:create_an_account/widget/main_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class RegisterCustomer extends StatefulWidget {
  const RegisterCustomer({super.key});

  @override
  State<RegisterCustomer> createState() => _RegisterCustomerState();
}

class _RegisterCustomerState extends State<RegisterCustomer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: const BoxDecoration(
                color: Color.fromRGBO(255, 100, 4, 1.0),
                shape: BoxShape.circle),
            child: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ),
        title: Text(
          'Verify',
          style: GoogleFonts.montserratAlternates(
              color: Color.fromARGB(255, 3, 8, 51),
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(26.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // نص "Phone number"
            Text(
              'Phone number',
              style: GoogleFonts.montserratAlternates(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),

            Text(
              'Enter your phone number and get OTP code from RightJoy',
              style: GoogleFonts.montserratAlternates(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 32),

            PinCodeTextField(
              appContext: context,
              length: 6,
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.underline,
                activeFillColor: Colors.grey,
              ),
              animationType: AnimationType.slide,
            ),

            const SizedBox(height: 24),

            Text(
              'Did not receive the code?',
              style: GoogleFonts.montserratAlternates(
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 60),

            Center(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.orange,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 90, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text(
                  'Resend Code',
                  style: GoogleFonts.montserratAlternates(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            MainButton(
                color: AppColors.white,
                text: "Next",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CusVerificationSuccessPage(
                        notificationTitle:
                            'Phone Number Verification Successful',
                        notificationMessage:
                            'Your phone number has been verified successfully!',
                      ),
                    ),
                  );
                } // تعطيل الزر إذا لم يتم تحديد الجيك بوكس
                ),
          ],
        ),
      ),
    );
  }
}
