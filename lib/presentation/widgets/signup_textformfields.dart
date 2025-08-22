import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class SignUpTextFormFields {
  final formKey = GlobalKey<FormState>();
  final _nameCtrl = TextEditingController();
  final _emailCtrl = TextEditingController();
  final _passCtrl = TextEditingController();
  final _confirmCtrl = TextEditingController();

  Widget signUpTextFormFields() {
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Full Name", style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 6),
          TextFormField(
            controller: _nameCtrl,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Name is required";
              }
              List<String> names = value.trim().split(" ");
              for (String part in names) {
                if (part.isNotEmpty && part[0] != part[0].toUpperCase()) {
                  return "Each name must start with uppercase";
                }
              }
              return null;
            },
            decoration: InputDecoration(
              hintText: "Enter your full name",
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 14,
                vertical: 14,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: Colors.grey.shade300),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: Colors.grey.shade400),
              ),
            ),
          ),
          const SizedBox(height: 16),
          const Text("Email", style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 6),
          TextFormField(
            controller: _emailCtrl,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Email is required";
              }
              bool isEmailCorrect = EmailValidator.validate(value);
              if (!isEmailCorrect) {
                return 'Invalid email';
              }
              return null;
            },
            decoration: InputDecoration(
              hintText: "Enter your email",
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 14,
                vertical: 14,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: Colors.grey.shade300),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: Colors.grey.shade400),
              ),
            ),
          ),
          const SizedBox(height: 16),
          const Text("Password", style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 6),
          TextFormField(
            controller: _passCtrl,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Password is required";
              } else if (value.length < 6) {
                return "Password must be at least 6 characters long";
              }
              return null;
            },
            obscureText: true,
            decoration: InputDecoration(
              hintText: "Enter your password",
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 14,
                vertical: 14,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: Colors.grey.shade300),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: Colors.grey.shade400),
              ),
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            "Confirm Password",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 6),
          TextFormField(
            controller: _confirmCtrl,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please confirm password";
              } else if (value != _passCtrl.text) {
                return "Passwords must match";
              }
              return null;
            },
            obscureText: true,
            decoration: InputDecoration(
              hintText: "Confirm your password",
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 14,
                vertical: 14,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: Colors.grey.shade300),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: Colors.grey.shade400),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
