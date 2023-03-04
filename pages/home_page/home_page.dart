import 'package:flutter/material.dart';
import 'package:online_doctor_app/size_config.dart';
import 'components/body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    //For responsive layout
    SizeConfig().init(context);
    return const Scaffold(
      body: Body(),
    );
  }
}
