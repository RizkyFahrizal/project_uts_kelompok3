import 'package:flutter/material.dart';
import 'prodi.dart';
import 'package:url_launcher/url_launcher.dart';

class ProdiDetail extends StatefulWidget {
  final Prodi prodi;

  const ProdiDetail({Key? key, required this.prodi}) : super(key: key);

  @override
  _ProdiDetailState createState() {
    return _ProdiDetailState();
  }
}

class _ProdiDetailState extends State<ProdiDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 251, 228, 12),
        title: Text(
          (widget.prodi.label),
          style: const TextStyle(
              fontFamily: 'Palatino',
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(210, 0, 0, 0)),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(
                  context); // Navigate back when back button is pressed
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 150,
              width: double.infinity,
              child: Image(
                image: AssetImage(widget.prodi.imgUrl),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              widget.prodi.label,
              style: const TextStyle(fontSize: 1),
            ),
            const SizedBox(
              height: 4,
            ),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(10.0),
                itemCount: widget.prodi.information.length,
                itemBuilder: (BuildContext context, int index) {
                  final Information = widget.prodi.information[index];
                  return Text.rich(
                    TextSpan(
                      children: [
                        WidgetSpan(
                          child: Container(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 2.0),
                            decoration: const BoxDecoration(
                              color:
                                  Colors.yellow, // Warna latar belakang kuning
                              // Mengatur sudut border
                            ),
                            child: const Text(
                              'PROFIL                                                                                                                                       ', // Menggunakan \n untuk memastikan tulisan di tengah
                              textAlign:
                                  TextAlign.center, // Tulisan berada di tengah
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                          ),
                        ),
                        TextSpan(text: '${Information.profil}'),
                        TextSpan(text: '\n\n'),
                        WidgetSpan(
                          child: Container(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 2.0),
                            decoration: const BoxDecoration(
                              color:
                                  Colors.yellow, // Warna latar belakang kuning
                              // Mengatur sudut border
                            ),
                            child: const Text(
                              'VISI                                                                                                                                                 ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                          ),
                        ),
                        TextSpan(text: '${Information.visi}'),
                        TextSpan(text: '\n\n'),
                        WidgetSpan(
                          child: Container(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 2.0),
                            decoration: const BoxDecoration(
                              color:
                                  Colors.yellow, // Warna latar belakang kuning
                              // Mengatur sudut border
                            ),
                            child: const Text(
                              'MISI                                                                                                                                                   ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                          ),
                        ),
                        TextSpan(text: '${Information.misi}'),
                        TextSpan(text: '\n\n'),
                        WidgetSpan(
                          child: Container(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 2.0),
                            decoration: const BoxDecoration(
                              color:
                                  Colors.yellow, // Warna latar belakang kuning
                              // Mengatur sudut border
                            ),
                            child: const Text(
                              'AKREDITASI                                                                                                                                                   ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                          ),
                        ),
                        _buildAkreditasiTextSpan(Information.akreditasi),
                        TextSpan(text: '\n\n'),
                        WidgetSpan(
                          child: Container(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 2.0),
                            decoration: const BoxDecoration(
                              color:
                                  Colors.yellow, // Warna latar belakang kuning
                              // Mengatur sudut border
                            ),
                            child: const Text(
                              'KETUA PRODI                                                                                                                                                   ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                          ),
                        ),
                        _buildKaprodiTextSpan(Information.kaprodi),
                        TextSpan(text: '\n\n'),
                        WidgetSpan(
                          child: Container(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 2.0),
                            decoration: const BoxDecoration(
                              color:
                                  Colors.yellow, // Warna latar belakang kuning
                              // Mengatur sudut border
                            ),
                            child: const Text(
                              'DOSEN PRODI                                                                                                                                                   ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                          ),
                        ),
                        _buildDosenTextSpan(Information.dosen1),
                        _buildDosenTextSpan(Information.dosen2),
                        _buildDosenTextSpan(Information.dosen3),
                        TextSpan(text: '\n\n'),
                        WidgetSpan(
                          child: Container(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 2.0),
                            decoration: const BoxDecoration(
                              color:
                                  Colors.yellow, // Warna latar belakang kuning
                              // Mengatur sudut border
                            ),
                            child: const Text(
                              'WEB RESMI                                                                                                                                                   ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                          ),
                        ),
                        TextSpan(
                          children: [
                            WidgetSpan(
                              child: InkWell(
                                onTap: () async {
                                  final url = Information.weblink;
                                  if (await canLaunch(url)) {
                                    await launch(url);
                                  } else {
                                    throw 'Could not launch $url';
                                  }
                                },
                                child: Text(
                                  Information.weblink,
                                  style: const TextStyle(
                                    fontSize: 16.0,
                                    color: Colors
                                        .blue, // Make text blue to indicate link
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        TextSpan(text: '\n'),
                        TextSpan(
                          children: [
                            WidgetSpan(
                              child: InkWell(
                                onTap: () async {
                                  final url =
                                      'https://mail.google.com/mail/u/0/?fs=1&tf=cm&source=mailto&to=${Information.email}';
                                  if (await canLaunch(url)) {
                                    await launch(url);
                                  } else {
                                    throw 'Could not launch $url';
                                  }
                                },
                                child: Text(
                                  Information.email,
                                  style: const TextStyle(
                                    fontSize: 16.0,
                                    color: Colors
                                        .blue, // Make text blue to indicate link
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        TextSpan(text: '\n\n'),
                        WidgetSpan(
                          child: Container(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 2.0),
                            decoration: const BoxDecoration(
                              color:
                                  Colors.yellow, // Warna latar belakang kuning
                              // Mengatur sudut border
                            ),
                            child: const Text(
                              'PRESTASI                                                                                                                                                   ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                          ),
                        ),
                        TextSpan(text: '${Information.presatsi}'),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

TextSpan _buildAkreditasiTextSpan(String akreditasi) {
  String imageName =
      akreditasi.toLowerCase().replaceAll(' ', '_'); // Format image name
  return TextSpan(
    children: [
      WidgetSpan(
        child: SizedBox(
          height: 250.0, // Adjust image height as needed
          width: 600.0, // Adjust image width as needed
          child: Image.asset(
            '$imageName', // Assuming image format is PNG
            errorBuilder: (context, error, stackTrace) {
              return Text('Image Not Found'); // Handle error case (optional)
            },
          ),
        ),
      ),
    ],
  );
}

TextSpan _buildKaprodiTextSpan(String kaprodi) {
  String imageName =
      kaprodi.toLowerCase().replaceAll(' ', '_'); // Format image name
  return TextSpan(
    children: [
      WidgetSpan(
        child: SizedBox(
          height: 250.0, // Adjust image height as needed
          width: 600.0, // Adjust image width as needed
          child: Image.asset(
            '$imageName', // Assuming image format is PNG
            errorBuilder: (context, error, stackTrace) {
              return Text('Image Not Found'); // Handle error case (optional)
            },
          ),
        ),
      ),
    ],
  );
}

TextSpan _buildDosenTextSpan(String dosen) {
  return TextSpan(
    children: [
      WidgetSpan(
        child: SizedBox(
          height: 300.0, // Adjust image height as needed
          width: 600.0, // Adjust image width as needed
          child: Image.asset(
            '$dosen', // Assuming image format is PNG
            errorBuilder: (context, error, stackTrace) {
              return Text('Image Not Found'); // Handle error case (optional)
            },
          ),
        ),
      ),
    ],
  );
}
