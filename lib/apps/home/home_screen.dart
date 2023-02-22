import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:git_test_app/general/utils/config.dart';
import 'package:git_test_app/general/utils/text_style.dart';
import '../../general/utils/asset_path.dart';
import '../../general/utils/colors.dart';
import '../../widgets/appbar/k_appbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(55),
        child: KAppBar(),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text("What's Your main goal?", style: KTextStyle.headline3),
          ),
          Image.asset(AssetPath.banner,
              width: context.screenWidth,
              height: context.screenHeight * 0.3, fit: BoxFit.cover),
        ],
      ),
    );
  }
}
