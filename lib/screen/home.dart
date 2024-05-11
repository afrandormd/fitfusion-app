import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:fitfusion_app/config/assets.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Asset.colorPrimaryGreen,
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: Image(
              image: AssetImage('asset/images/header.jpg'),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 25, bottom: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton('Mahasiswa', Icons.people, 0),
                    IconButton('Menu 2', Icons.mail, 0),
                    IconButton('Menu 3', Icons.folder, 0),
                    IconButton('Menu 4', Icons.person_add_alt_1, 0),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton('Menu 5', Icons.pageview, 0),
                    IconButton('Menu 6', Icons.abc_rounded, 0),
                    IconButton('Menu 7', Icons.radar, 0),
                    IconButton('Menu 8', Icons.label, 0),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 10,
            ),
            child: Text(
              "Berita Terkini",
              style: TextStyle(
                color: Asset.colorPrimaryGreen,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            alignment: Alignment.topLeft,
          ),
          SizedBox(
            height: 170,
            child: ListView(
              children: [
                CarouselSlider(
                  items: [
                    BeritaTerkini('https://lampost.co/wp-content/uploads/2023/11/universitas-teknokrat-indonesia-gelar-workshop-metaverse-102-350x250.jpg', 'Universitas Teknokrat Indonesia Gelar Workshop Metaverse 102', '22/11/2023'),
                    BeritaTerkini('https://lampost.co/wp-content/uploads/2023/10/membanggakan-mahasiswa-universitas-teknokrat-indonesia-kuliah-di-luar-negeri-350x250.jpg', 'Membanggakan! Mahasiswa Universitas Teknokrat Indonesia Kuliah di Luar Negeri', '20/10/2023'),
                    BeritaTerkini('https://lampost.co/wp-content/uploads/2024/04/uti-1-350x250.jpg', 'Prodi Matematika UTI Sukses Tingkatkan Akreditasi', '17/04/2024'),
                    BeritaTerkini('https://lampost.co/wp-content/uploads/2024/04/uti-350x250.jpg', 'UTI dan BPPTIK Selenggarakan Pelatihan dan Sertifikasi Kompetensi Teknologi', '03/04/2024'),
                    BeritaTerkini('https://lampost.co/wp-content/uploads/2024/02/penguasaan-dasar-dasar-jurnalistik-penting-untuk-hasilkan-berita-efektif-350x250.jpg.webp', 'UTI Latih Dosen dan Tendik dengan Ilmu Jurnalistik', '12/02/2024'),
                  ],
                  options: CarouselOptions(
                    height: 170.0,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    aspectRatio: 16 / 9,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    viewportFraction: 0.8,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class IconButton extends StatelessWidget {
  final String nameLabel;
  final IconData iconLabel;
  final int index;

  IconButton(this.nameLabel, this.iconLabel, this.index);

  List<Map> _fragment = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            // margin: EdgeInsets.only(bottom: 5),
            child: Material(
              borderRadius: BorderRadius.all(
                Radius.circular(40),
              ),
              color: Colors.transparent,
              child: InkWell(
                borderRadius: BorderRadius.all(
                  Radius.circular(40),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => _fragment[index]['view'],
                    ),
                  );
                },
                child: Container(
                  // margin: EdgeInsets.all(5),
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Asset.colorPrimaryGreen,
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                  child: Center(
                    child: Stack(
                      children: [
                        Icon(
                          iconLabel,
                          color: Colors.white,
                          size: 40,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, bottom: 5),
            child: Text(
              nameLabel,
              style: TextStyle(fontSize: 14),
            ),
          )
        ],
      ),
    );
  }
}

class BeritaTerkini extends StatelessWidget {
  final String img;
  final String judul;
  final String tanggal;

  BeritaTerkini(this.img, this.judul, this.tanggal);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          Positioned.fill(
            child: Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                image: DecorationImage(
                  image: NetworkImage(img),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                gradient: LinearGradient(
                  colors: [
                    Asset.colorBackground,
                    Colors.transparent,
                  ],
                  end: Alignment.topCenter,
                  begin: Alignment.bottomCenter,
                  stops: [
                    0.1,
                    0.9
                  ],
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    judul,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    tanggal,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      // alignment: Alignment(1, 1),
    );
  }
}
