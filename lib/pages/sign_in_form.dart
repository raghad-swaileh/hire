import 'package:create_an_account/pages/privacy_policy_page.dart';
import 'package:create_an_account/pages/register_customer.dart';
import 'package:create_an_account/utils/app_colors.dart';
import 'package:create_an_account/widget/main_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SigninForm extends StatefulWidget {
  const SigninForm({super.key});

  @override
  State<SigninForm> createState() => _SigninFormState();
}

class _SigninFormState extends State<SigninForm> {
  bool isChecked = false; // حالة الـ Checkbox

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Text(
                'E-mail',
                style: GoogleFonts.montserratAlternates(
                  fontSize: 15,
                  color: AppColors.navy,
                ),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.email_outlined),
                border: InputBorder.none,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Colors.grey.withOpacity(0.5),
                    width: 1.0,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Text(
                'Password',
                style: GoogleFonts.montserratAlternates(
                  fontSize: 15,
                  color: AppColors.navy,
                ),
              ),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.lock),
                suffixIcon: const Icon(Icons.visibility),
                border: InputBorder.none,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Colors.grey.withOpacity(0.5),
                    width: 1.0,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Text(
                'Confirm password',
                style: GoogleFonts.montserratAlternates(
                  fontSize: 15,
                  color: AppColors.navy,
                ),
              ),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.lock_person),
                suffixIcon: const Icon(Icons.visibility),
                border: InputBorder.none,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Colors.grey.withOpacity(0.5),
                    width: 1.0,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Text(
                'Phone number',
                style: GoogleFonts.montserratAlternates(
                  fontSize: 15,
                  color: AppColors.navy,
                ),
              ),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.phone),
                border: InputBorder.none,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Colors.grey.withOpacity(0.5),
                    width: 1.0,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 50),

            // زر "Next" مع تفعيل وتعطيل حسب حالة الجيك بوكس
            MainButton(
              color: AppColors.white,
              text: "Next",
              bgColor: isChecked
                  ? AppColors.orange
                  : AppColors.grey, // تغيير اللون حسب الحالة
              onPressed: isChecked
                  ? () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RegisterCustomer(),
                        ),
                      );
                    }
                  : null, // تعطيل الزر إذا لم يتم تحديد الجيك بوكس
            ),

            const SizedBox(height: 16),
            Row(
              children: [
                Checkbox(
                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value!;
                    });
                  },
                ),
                RichText(
                  text: TextSpan(
                    text: 'I have read and agree to the ',
                    style: GoogleFonts.montserratAlternates(
                      fontSize: 12,
                      color: Colors.orange,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PrivacyPolicyPage(),
                      ),
                    );
                  },
                  child: Text(
                    'Privacy Policy.',
                    style: GoogleFonts.montserratAlternates(
                      fontSize: 12,
                      color: Colors.orange,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 80),
            Center(
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    '/log-in-page',
                    (Route<dynamic> route) =>
                        route.settings.name == '/welcome-page',
                  );
                },
                child: RichText(
                  text: TextSpan(
                    text: 'Have an account? ',
                    style: GoogleFonts.montserratAlternates(
                      fontSize: 18,
                      color: AppColors.navy,
                    ),
                    children: [
                      TextSpan(
                        text: 'Log In!',
                        style: GoogleFonts.montserratAlternates(
                          fontSize: 18,
                          color: AppColors.orange,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            // Handle "Log In" click
                          },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
