import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/provider_example/app_state.dart';
import 'package:provider_example/provider_example/first_screen.dart';
import 'package:provider_example/provider_example/home_page.dart';
import 'package:provider_example/providers/item_provider.dart';

void main() {
/* implement for first screen and second screen   */

  /* For single notifier  */
  // runApp(ChangeNotifierProvider(
  //   create: (_) => ItemProvider(),
  //   child: MyApp(),
  // ));

  /* For multiproviders */
  // MultiProvider(
  //   providers: [ChangeNotifierProvider(create: (_) => ItemProvider())],
  //   child: MyApp(),
  // );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    /* Remove widget ChangeNotifierProvider when FirstScreen in use */
    return ChangeNotifierProvider(
      create: (context) => AppState(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        // home: FirstScreen(),
        home: HomePage(),
      ),
    );
  }
}
