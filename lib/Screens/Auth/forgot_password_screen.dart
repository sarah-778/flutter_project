import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            const SizedBox(height: 60),

            // 🔹 Illustration
            Center(
              child: Image.asset(
                'assets/forgot.png', // add an illustration image
                height: 200,
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "Forgot Password?",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              "Enter your email and we’ll send a verification code.",
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 30),

            TextField(
              decoration: InputDecoration(
                labelText: "Email",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),

            const SizedBox(height: 20),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Verification code sent!")),
                  );
                },
                child: const Text("Send Verification Code"),
              ),
            ),

            const SizedBox(height: 20),

            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Back to Login"),
            ),
          ],
        ),
      ),
    );
  }
}
