import 'package:fitfusion_app/screen/user/listitem.dart';
import 'package:fitfusion_app/screen/user/program.dart';
import 'package:fitfusion_app/screen/user/olahraga.dart';
import 'package:fitfusion_app/screen/user/profil.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:fitfusion_app/config/assets.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    HomeContent(),
    Program(),
    Olahraga(),
    Profil(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Asset.colorBackground,
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: Container(
        color: Colors.grey.shade800,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
          child: GNav(
            backgroundColor: Colors.grey.shade800,
            color: Colors.white,
            activeColor: Asset.colorPrimaryGreen,
            tabBackgroundColor: Colors.black,
            gap: 8,
            padding: const EdgeInsets.all(16),
            tabs: const [
              GButton(
                icon: Icons.home,
                text: "Beranda",
              ),
              GButton(
                icon: Icons.calendar_month_outlined,
                text: "Program",
              ),
              GButton(
                icon: Icons.sports_gymnastics,
                text: "Olahraga",
              ),
              GButton(
                icon: Icons.person,
                text: "Profil",
              ),
            ],
            selectedIndex: _selectedIndex,
            onTabChange: _onItemTapped,
          ),
        ),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String img_header = "assets/images/img_header.jpg";

    List<String> trainingImage = [
      "assets/images/leg-exercices.jpg",
      "assets/images/push-up-exercices.jpg",
      "assets/images/pull-up-exercices.jpg",
      "assets/images/abs-exercices.jpg",
    ];

    return NestedScrollView(
      // collapse app header
      headerSliverBuilder: (context, innerBoxIsScrolled) {
        return <Widget>[
          SliverAppBar(
            expandedHeight: 300.0,
            pinned: true,
            floating: false,
            title: Text(
              "FitFusion",
              style: TextStyle(color: Asset.colorPrimaryGreen, fontWeight: FontWeight.w800, fontSize: 32.0),
            ),
            centerTitle: false,
            backgroundColor: Asset.colorBackground,
            toolbarHeight: 80.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                img_header,
                fit: BoxFit.cover,
                color: Color(0xaa212121),
                colorBlendMode: BlendMode.darken,
              ),
            ),
            bottom: PreferredSize(
              child: Padding(
                  padding: const EdgeInsets.only(bottom: 24.0, left: 12.0, right: 12.0),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.5),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0), borderSide: BorderSide.none),
                      contentPadding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 24.0),
                      hintText: "Cari program latihan...",
                      prefixIcon: Icon(
                        Icons.search,
                        color: Asset.colorBackground,
                      ),
                    ),
                  )),
              preferredSize: Size.fromHeight(100.0),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.notifications),
                color: Asset.colorText,
                iconSize: 32.0,
              ),
            ],
          )
        ];
      },
      // app body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0, right: 20.0, left: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Program Pilihan",
                style: TextStyle(
                  color: Asset.colorPrimaryGreen,
                  fontSize: 24.0,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              listItem(trainingImage[0], "Program Latihan Kaki", 12, 30),
              SizedBox(
                height: 10,
              ),
              listItem(trainingImage[1], "Program Latihan Dada", 15, 40),
              SizedBox(
                height: 10,
              ),
              listItem(trainingImage[2], "Program Latihan Punggung", 13, 35),
              SizedBox(
                height: 10,
              ),
              listItem(trainingImage[3], "Program Latihan Perut", 14, 38),
            ],
          ),
        ),
      ),
    );
  }
}
