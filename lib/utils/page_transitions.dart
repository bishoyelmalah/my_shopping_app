import 'package:flutter/material.dart';

class FadePageRoute<T> extends PageRouteBuilder<T> {
  final Widget child;
  final Duration duration;

  FadePageRoute({
    required this.child,
    this.duration = const Duration(milliseconds: 800),
  }) : super(
         pageBuilder: (context, animation, secondaryAnimation) => child,
         transitionDuration: duration,
         reverseTransitionDuration: duration,
         transitionsBuilder: (context, animation, secondaryAnimation, child) {
           // Create a curved animation for smoother transition
           final curvedAnimation = CurvedAnimation(
             parent: animation,
             curve: Curves.easeInOut,
           );

           // Fade in the new page
           final fadeInAnimation = Tween<double>(
             begin: 0.0,
             end: 1.0,
           ).animate(curvedAnimation);

           return FadeTransition(opacity: fadeInAnimation, child: child);
         },
       );
}

class FadeTransitionHelper {
  static void navigateWithFade(BuildContext context, Widget destination) {
    Navigator.pushReplacement(context, FadePageRoute(child: destination));
  }
}
