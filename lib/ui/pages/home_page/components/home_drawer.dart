import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oceanografia_lagoa/ui/utilities/app_colors.dart';

class HomeDrawer extends StatefulWidget {
  const HomeDrawer({Key? key}) : super(key: key);

  @override
  State<HomeDrawer> createState() => _HomeDrawerState();
}

class _HomeDrawerState extends State<HomeDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * .1,
          bottom: MediaQuery.of(context).size.height * .1,
          left: 25),
      decoration: BoxDecoration(
        color: AppColors().secondaryColor,
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(25),
          bottomRight: Radius.circular(25),
        )
      ),
      width: MediaQuery.of(context).size.width * .5,
      height: MediaQuery.of(context).size.height * .8,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.person,
                color: AppColors().primaryColor,
              ),
              const SizedBox(width: 10),
              Text(
                "Olá, usuário.",
                style: GoogleFonts.roboto(
                  color: AppColors().secondaryTextColor,
                  decoration: TextDecoration.none,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.note,
                color: AppColors().primaryColor,
              ),
              const SizedBox(width: 10),
              Text(
                "Sobre",
                style: GoogleFonts.roboto(
                  color: AppColors().secondaryTextColor,
                  decoration: TextDecoration.none,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              exit(0);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.exit_to_app,
                  color: AppColors().redColor,
                ),
                const SizedBox(width: 10),
                Text(
                  "Fechar app",
                  style: GoogleFonts.roboto(
                    color: AppColors().redColor,
                    decoration: TextDecoration.none,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
