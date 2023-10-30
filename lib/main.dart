import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/root_screens.dart';
import 'const/theme_data.dart';
import 'providers/theme_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // final themeProvider = Provider.of<ThemeProvider>(context);
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ThemeProvider(),
        ),
      ],
      child: Consumer<ThemeProvider>(builder: (
          context,
          themeProvider,
          child,
          ) {
        return MaterialApp(
          title: 'e',
          theme: Styles.themeData(
              isDarkTheme: themeProvider.getIsDarkTheme, context: context),
          home: const RootScreen(),
          //     initialRoute: '/',
          // routes: <String, WidgetBuilder>{
          //   '/': (context) => const HomeScreen(),
          //    '/details': (context) => ProductDetails(item: CardItem[]),
          //},
        );
      }),
    );
  }
}
