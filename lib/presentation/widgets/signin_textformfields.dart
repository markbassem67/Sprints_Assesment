import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class SignInTextFormFields {
  final formKey = GlobalKey<FormState>();

  final _emailCtrl = TextEditingController();
  final _passCtrl = TextEditingController();

  Widget signInTextFormFields() {
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Email", style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: 6),
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
              contentPadding: EdgeInsets.symmetric(
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
          SizedBox(height: 16),
          Text("Password", style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: 6),
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
              contentPadding: EdgeInsets.symmetric(
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
