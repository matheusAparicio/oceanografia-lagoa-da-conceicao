import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oceanografia_lagoa/ui/utilities/app_colors.dart';

class HomeAppBar extends StatefulWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  State<HomeAppBar> createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      decoration: BoxDecoration(color: AppColors().primaryColor),
      alignment: Alignment.center,
      padding: const EdgeInsets.only(top: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 50,
            child: GestureDetector(
              onTap: (){
                Scaffold.of(context).openDrawer();
              },
              child: Icon(Icons.menu, color: AppColors().primaryTextColor),
            ),
          ),
          Text(
            "Oceanografia\nUFSC",
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(color: Colors.white, fontSize: 20),
          ),
          const SizedBox(
            width: 50,
          ),
        ],
      ),
    );
  }
}
