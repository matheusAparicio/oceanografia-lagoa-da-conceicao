import 'package:flutter/material.dart';
import 'package:oceanografia_lagoa/ui/pages/home_page/components/home_app_bar.dart';
import 'package:oceanografia_lagoa/ui/pages/home_page/components/home_body.dart';
import 'package:oceanografia_lagoa/ui/pages/home_page/components/home_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: HomeAppBar(),
      ),
      drawer: HomeDrawer(),
      body: HomeBody(),
    );
  }
}
