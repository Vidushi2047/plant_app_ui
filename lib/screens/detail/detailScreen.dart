import 'package:flutter/material.dart';
import 'package:plant_app_ui/screens/detail/dbody.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: dBody(),
    );
  }
}