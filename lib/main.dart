import 'package:alridafrieds/controller/user_controller.dart';
import 'package:alridafrieds/user/auth/LoginSignup.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color primaryColor = const Color(0xFFA91313); // Desired primary color
    Color defaultWidgetBackgroundColor =
        const Color(0xff66161d); // Desired default color

    return MultiProvider(
      providers: [
        ChangeNotifierProvider<UserController>(
          create: (context) => UserController(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          fontFamily: 'poppins',
          primaryColor: Colors.black,
          primarySwatch: MaterialColor(primaryColor.value, {
            50: primaryColor.withOpacity(0.1),
            100: primaryColor.withOpacity(0.2),
            200: primaryColor.withOpacity(0.3),
            300: primaryColor.withOpacity(0.4),
            400: primaryColor.withOpacity(0.5),
            500: primaryColor,
            600: primaryColor.withOpacity(0.6),
            700: primaryColor.withOpacity(0.7),
            800: primaryColor.withOpacity(0.8),
            900: primaryColor.withOpacity(0.9),
          }),
          // backgroundColor: defaultWidgetBackgroundColor, // Set default background color
        ),
        home: const SignUporIn(),
        // home: OrderPlaced(),
      ),
    );
  }
}
