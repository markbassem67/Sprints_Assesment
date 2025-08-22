import 'package:flutter/material.dart';

import '../widgets/cupertino_alert_dialog.dart';
import '../widgets/signin_textformfields.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({super.key});

  final SignInTextFormFields signInFormFields = SignInTextFormFields();
  CustomAlertDialog showAlertDialog = CustomAlertDialog();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xFF6f80e6), Color(0xFF744fa8)],
            ),
          ),
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              iconTheme: const IconThemeData(
                color: Colors.white, // your custom color
              ),
              automaticallyImplyLeading: true,
              backgroundColor: Colors.transparent,
            ),
            body: Center(
              child: Container(
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16.0),
                ),
                width: 360,
                height: 420,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Center(
                      child: Text(
                        ' Welcome Back',
                        style: TextStyle(
                          color: Color(0xFF9234e8),
                          fontSize: 36,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    const Center(
                      child: Text(
                        'Sign in to ShopCraft',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 19,
                          //fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    signInFormFields.signInTextFormFields(),
                    const SizedBox(height: 25),
                    Center(
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: ElevatedButton(
                          onPressed: () {
                            if (signInFormFields.formKey.currentState!
                                .validate()) {
                              showAlertDialog.showConfirmationDialog(
                                context,
                                'Account sign-in Successfully!',
                                'Welcome!',
                              );
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF9234e8),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                8,
                              ), // less circle
                            ),
                          ),
                          child: const Text(
                            'Sign In',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
