import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:space_fm/values/assets/splash_screen_assets.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = "/splash-screen";

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildEmptyAppBar(),
      extendBodyBehindAppBar: true,
      body: Container(
        child: SvgPicture.asset(
          SplashScreenAssets.splashBackgroundScreen,
          semanticsLabel: 'Splash Screen',
          height: 100.0,
        ),
      ),
    );
  }
}

PreferredSizeWidget _buildEmptyAppBar() => PreferredSize(
      preferredSize: const Size(0, 0),
      child: AnnotatedRegion(
        value: SystemUiOverlayStyle.light,
        child: Container(),
      ),
    );
