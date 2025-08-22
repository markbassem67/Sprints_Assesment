import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screens/shopping_home_screen.dart';

class CustomAlertDialog {
  Future<void> showConfirmationDialog(
    BuildContext context,
    String content,
    String title,
  ) {
    return showCupertinoDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: Text(
            title,
            style: const TextStyle(fontSize: 20, color: Colors.green),
          ),
          content: Text(content),
          actions: [
            CupertinoDialogAction(
              isDefaultAction: true,
              child: const Text(
                "Close",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF6f80e6),
                ),
              ),
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(
                  PageRouteBuilder(
                    transitionDuration: const Duration(milliseconds: 500),
                    pageBuilder: (context, animation, secondaryAnimation) => const ShoppingHomeScreen(),
                    transitionsBuilder: (context, animation, secondaryAnimation, child) {
                      return FadeTransition(
                        opacity: animation,
                        child: child,
                      );
                    },
                  ),
                );

                // put your logic here
              },
            ),
          ],
        );
      },
    );
  }
}
