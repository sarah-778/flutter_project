import 'package:flutter/material.dart';
import 'signup_screen.dart';
import 'forgot_password_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 60),

            // 🔹 Logo
            Center(
              child: Image.asset(
                'assets/logo.png', // add your logo in assets folder
                height: 100,
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "Welcome Back 👋",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),
            const Text("Login to your account"),

            const SizedBox(height: 30),

            // 🔹 Email field
            TextField(
              decoration: InputDecoration(
                labelText: "Email",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // 🔹 Password field
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),

            const SizedBox(height: 10),

            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const ForgotPasswordScreen()),
                  );
                },
                child: const Text("Forgot Password?"),
              ),
            ),

            const SizedBox(height: 20),

            // 🔹 Login button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Login"),
              ),
            ),

            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don’t have an account? "),
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const SignupScreen()));
                  },
                  child: const Text("Create Account"),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
