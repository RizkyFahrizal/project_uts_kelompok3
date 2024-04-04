import 'package:flutter/material.dart';
import 'prodi.dart';
import 'prodi_detail.dart';
import 'About.dart';

void main() {
  runApp(const FebApp());
}

class FebApp extends StatelessWidget {
  const FebApp({Key? key}) : super(key: key);

  static const MaterialColor white = MaterialColor(
    0xFFFFFFFF,
    <int, Color>{
      50: Color(0xFFFFFFFF),
      100: Color(0xFFFFFFFF),
      200: Color(0xFFFFFFFF),
      300: Color(0xFFFFFFFF),
      400: Color(0xFFFFFFFF),
      500: Color(0xFFFFFFFF),
      600: Color(0xFFFFFFFF),
      700: Color(0xFFFFFFFF),
      800: Color(0xFFFFFFFF),
      900: Color(0xFFFFFFFF),
    },
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fakultas Ekonomi & Bisnis',
      theme: ThemeData(
        primarySwatch: white,
      ),
      home: const MyHomePage(title: 'Fakultas Ekonomi & Bisnis'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required String title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: const Color.fromARGB(255, 251, 228, 12),
        title: const Text(
          'Fakultas Ekonomi & Bisnis',
          style: TextStyle(
              fontFamily: 'Palatino',
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(210, 0, 0, 0)),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            'images/profilheader.png',
            fit: BoxFit.cover,
          ),
          Expanded(
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListView.separated(
                  itemCount: Prodi.samples.length + 1,
                  separatorBuilder: (context, index) => const Divider(),
                  itemBuilder: (BuildContext context, int index) {
                    if (index == Prodi.samples.length) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const About()));
                        },
                        child: Card(
                          elevation: 2.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          color: const Color.fromARGB(255, 251, 228, 12),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Stack(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset(
                                          'assets/images/logoBiodata.png',
                                        ),
                                        const SizedBox(width: 10.0),
                                        const Expanded(
                                          child: Text(
                                            "Data Kelompok",
                                            style: TextStyle(
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.w700,
                                              color:
                                                  Color.fromARGB(255, 0, 0, 0),
                                              fontFamily: 'BeVietnamPro',
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Positioned(
                                  bottom: 0,
                                  left: 220,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0, vertical: 4.0),
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 23, 143, 199),
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                    child: Text(
                                      "Kelompok 3",
                                      style: const TextStyle(
                                        fontSize: 12.0,
                                        color:
                                            Color.fromARGB(255, 255, 255, 252),
                                        fontFamily: 'BeVietnamPro',
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    } else {
                      final prodi = Prodi.samples[index];
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProdiDetail(prodi: prodi),
                            ),
                          );
                        },
                        child: buildProdiCard(prodi),
                      );
                    }
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget buildProdiCard(Prodi prodi) {
  return Card(
    elevation: 2.0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    color: const Color.fromARGB(255, 251, 228, 12),
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(
                      prodi.imgUrl), // Assuming imgUrl is a local asset path
                  const SizedBox(width: 10.0),
                  Expanded(
                    child: Text(
                      prodi.label,
                      style: const TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w700,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontFamily: 'BeVietnamPro',
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            left: 220,
            child: Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
              decoration: BoxDecoration(
                color: prodi.programType == 'S1'
                    ? const Color.fromARGB(255, 39, 70, 37)
                    : const Color.fromARGB(255, 237, 67, 48),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Text(
                prodi.programType == 'S1' ? 'Program S1' : 'Program S2',
                style: const TextStyle(
                  fontSize: 12.0,
                  color: Color.fromARGB(255, 255, 255, 252),
                  fontFamily: 'BeVietnamPro',
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
