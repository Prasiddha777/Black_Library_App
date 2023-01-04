import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_route.dart';
import 'package:flutter/material.dart';

class Utils {
  static void flushBarErrorMessages(
      String messages, BuildContext context, String title) {
    showFlushbar(
      context: context,
      flushbar: Flushbar(
        forwardAnimationCurve: Curves.decelerate,
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        padding: const EdgeInsets.all(15),
        titleColor: Colors.white,
        borderRadius: BorderRadius.circular(15),
        reverseAnimationCurve: Curves.easeOut,
        flushbarPosition: FlushbarPosition.BOTTOM,
        positionOffset: 20,
        message: "Published Year: $messages",
        backgroundColor: Colors.green.shade300,
        title: title,
        messageColor: Colors.white,
        icon: const Icon(
          Icons.message_outlined,
          color: Colors.white,
          size: 28,
        ),
        duration: const Duration(seconds: 5),
      )..show(context),
    );
  }
}
