import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class VerifyEmailWidget extends StatelessWidget {
  const VerifyEmailWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Verify email"),
      ),
      body: Column(
        children: [
          const Text('Please verify your email'),
          TextButton(
            onPressed: () {
              final user = FirebaseAuth.instance.currentUser;
              user?.sendEmailVerification();
            },
            child: const Text('Send email verification'),
          ),
        ],
      ),
    );
  }
}
