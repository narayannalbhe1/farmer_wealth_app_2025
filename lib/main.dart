import 'package:farmerwealthapp/farmer_nav/farmer_nav.dart';
import 'package:farmerwealthapp/provider/farmer_provider.dart';
import 'package:farmerwealthapp/utils/routes/AppRoutes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => FarmerProvider()),
      ],
      child: MaterialApp(
        title: 'Farmer Wealth',
        debugShowCheckedModeBanner: false,
        //theme: AppTheme.lightTheme,
        //routes: AppRoutes.routes,
        home: const FarmerNav(),
      ),
    );
  }
}
