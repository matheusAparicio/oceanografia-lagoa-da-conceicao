import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:oceanografia_lagoa/ui/pages/home_page/home_page.dart';
import 'package:oceanografia_lagoa/ui/utilities/app_colors.dart';

class SplashscreenPage extends StatefulWidget {
  const SplashscreenPage({Key? key}) : super(key: key);

  @override
  State<SplashscreenPage> createState() => _SplashscreenPageState();
}

class _SplashscreenPageState extends State<SplashscreenPage> {
  // Para possível uso posterior.

  // Future _getStoragePermission() async {
  //   if (await Permission.storage.request().isGranted) {
  //   } else if (await Permission.storage.request().isPermanentlyDenied) {
  //     await openAppSettings();
  //   } else if (await Permission.storage.request().isDenied) {
  //     exit(0);
  //   }
  // }

  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 2000)).then((value) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Lottie.asset("lib/assets/lottie/ocean.json",
              repeat: true,
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.fitHeight),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset(
                "lib/assets/lottie/ocean_icon.json",
                repeat: true,
                width: MediaQuery.of(context).size.width * .4,
                fit: BoxFit.fitWidth,
              ),
              Text(
                "Lagoa da Conceição Watcher",
                style: GoogleFonts.roboto(
                  color: AppColors().primaryTextColor,
                  decoration: TextDecoration.none,
                  fontSize: 22,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                "Oceanografia - UFSC",
                style: GoogleFonts.roboto(
                  color: AppColors().primaryTextColor,
                  decoration: TextDecoration.none,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
