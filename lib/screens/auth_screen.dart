import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AuthScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    Icon(Icons.chat_bubble_outline, size: 60, color: theme.colorScheme.primary),
                    SizedBox(height: 16),
                    Text("Welcome to QuickChat", style: theme.textTheme.headlineSmall),
                    SizedBox(height: 32),
                    TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        labelText: 'Email',
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                      ),
                    ),
                    SizedBox(height: 16),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        labelText: 'Password',
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                      ),
                    ),
                    SizedBox(height: 24),
                    ElevatedButton(
                      onPressed: () => context.go('/home'),
                      style: ElevatedButton.styleFrom(minimumSize: Size.fromHeight(50)),
                      child: Text('Login'),
                    ),
                    SizedBox(height: 12),
                    OutlinedButton(
                      onPressed: () => context.go('/home'),
                      style: OutlinedButton.styleFrom(minimumSize: Size.fromHeight(50)),
                      child: Text('Sign Up'),
                    ),
                    TextButton(
                      onPressed: () => context.go('/home'),
                      child: Text("Continue as Guest"),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
