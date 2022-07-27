import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oceanografia_lagoa/ui/utilities/app_colors.dart';
import 'package:open_street_map_search_and_pick/open_street_map_search_and_pick.dart';
//import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  //MapController mapController= MapController();

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: AutoSizeText(
                  "Para reportar uma ocorrência, pressione reportar.",
                  style: GoogleFonts.roboto(
                    color: AppColors().secondaryTextColor,
                    decoration: TextDecoration.none,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                  maxLines: 2,
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * .4,
                width: MediaQuery.of(context).size.width * .9,
                margin: const EdgeInsets.symmetric(vertical: 25),
                child: OpenStreetMapSearchAndPick(
                    center: LatLong(-27.60311000897963, -48.472446939370734),
                    buttonColor: Colors.blue,
                    buttonText: 'Set Current Location',
                    onPicked: (pickedData) {}),
              ),
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: AppColors().primaryColor,
                  borderRadius: BorderRadius.circular(35)
                ),
                width: MediaQuery.of(context).size.width * .8,
                height: 50,
                child: AutoSizeText(
                  "Reportar",
                  style: GoogleFonts.roboto(
                    color: AppColors().primaryTextColor,
                    decoration: TextDecoration.none,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                  maxLines: 2,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
