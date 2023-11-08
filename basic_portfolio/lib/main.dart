import 'package:basic_portfolio/Pages/control_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: SafeArea(
        child: MaterialApp(
          title: 'Basic Portfolio',
          theme: ThemeData(
            useMaterial3: true,
          ),
          initialRoute: '/',
          routes: {
            '/': (context) => const MainPage(),
          },
        ),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {
  var currentPage = 'HomePage';

  // void changePageThroughNavBar(String page) {
  //   if (currentPage != page) {
  //     currentPage = page;
  //     notifyListeners();
  //   }
  // }
  bool isPageChangedThroughSwiping = false;

  void changePageThroughSwiping(String page) {
    if (currentPage != page) {
      currentPage = page;
      isPageChangedThroughSwiping = true;
      notifyListeners();
    } else {}
  }

  void goToPages(String page) {
    if (currentPage != page) {
      currentPage = page;
      isPageChangedThroughSwiping = false;
      notifyListeners();
    }
  }
}
