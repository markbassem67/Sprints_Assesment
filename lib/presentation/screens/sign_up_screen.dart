import 'package:flutter/material.dart';

import '../widgets/cupertino_alert_dialog.dart';
import '../widgets/signup_textformfields.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final SignUpTextFormFields signUpFields = SignUpTextFormFields();
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
            appBar: AppBar(
              iconTheme: const IconThemeData(
                color: Colors.white, // your custom color
              ),
              automaticallyImplyLeading: true,
              backgroundColor: Colors.transparent,
            ),
            backgroundColor: Colors.transparent,
            body: Center(
              child: Container(
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16.0),
                ),
                width: 360,
                height: 590,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Center(
                        child: Text(
                          ' Create Account',
                          style: TextStyle(
                            color: Color(0xFF9234e8),
                            fontSize: 36,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      const Center(
                        child: Text(
                          'Join ShopCraft today',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 19,
                            //fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      signUpFields.signUpTextFormFields(),
                      const SizedBox(height: 25),
                      Center(
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: ElevatedButton(
                            onPressed: () {
                              if (signUpFields.formKey.currentState!
                                  .validate()) {
                                showAlertDialog.showConfirmationDialog(
                                  context,
                                  'Account created Successfully!',
                                  'Success!',
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
                              'Create Account',
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
        ),
      ],
    );
  }
}
