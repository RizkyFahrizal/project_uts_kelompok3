import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 251, 228, 12),
        title: const Text(
          'Data Kelompok',
          style: TextStyle(
            fontFamily: 'Palatino',
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(210, 0, 0, 0),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context), // Navigate back on press
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: Color.fromARGB(255, 255, 247, 133),
            child: Padding(
              padding: const EdgeInsets.only(left: 0.0),
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start, // Set alignment to left
                mainAxisAlignment:
                    MainAxisAlignment.center, // Center content vertically
                children: [
                  SizedBox(
                    height: 150,
                    width: double.infinity,
                    child: Image.asset('assets/images/logoBiodata.png'),
                  ),
                  SizedBox(
                    height: 250,
                    width: double.infinity,
                    child: Image.asset('assets/images/profilnanda.png'),
                  ),
                  const SizedBox(height: 10),
                  const Padding(
                    padding: EdgeInsets.only(
                        left: 10.0), // Adjust left padding value
                    child: Text(
                      'Nama  : Nanda Kharisma Safitri',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                        left: 10.0), // Adjust left padding value
                    child: Text(
                      'TTL       : Kediri, 21-Des-2003',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                        left: 10.0), // Adjust left padding value
                    child: Text(
                      'Alamat : Griya Bhayangkara Permai',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0), // Adjust left padding value
                    child: Text(
                      'No. HP  : 087853102149',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0), // Adjust left padding value
                    child: Row(
                      children: [
                        const Text(
                          'Email   : ',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        InkWell(
                          onTap: () async {
                            const url =
                                'https://mail.google.com/mail/u/0/?fs=1&tf=cm&source=mailto&to=22082010036@student.upnjatim.ac.id';
                            if (await canLaunch(url)) {
                              await launch(url);
                            } else {
                              throw 'Could not launch $url';
                            }
                          },
                          child: const Text(
                            '22082010036@student.upnjatim.ac.id',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors
                                  .blue, // Make text blue to indicate link
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0), // Adjust left padding value
                    child: Row(
                      children: [
                        const Text(
                          'GitHub  : ',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        InkWell(
                          onTap: () async {
                            final url = 'https://github.com/nandakharismas22';
                            if (await canLaunch(url)) {
                              await launch(url);
                            } else {
                              throw 'Could not launch $url';
                            }
                          },
                          child: const Text(
                            'nandakharismas22',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors
                                  .blue, // Make text blue to indicate link
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  SizedBox(
                    height: 250,
                    width: double.infinity,
                    // child: Image.asset('assets/images/profilnanda.png'),
                    child: Image.asset('assets/images/profilrijal.png'),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0), // Adjust left padding value
                    child: Text(
                      'Nama  : Muhammad Rizky fahrizal',
                      style: const TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0), // Adjust left padding value
                    child: Text(
                      'TTL       : Surabaya, 12-Aug-2004',
                      style: const TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0), // Adjust left padding value
                    child: Text(
                      'Alamat : Petemon Kuburan 88a',
                      style: const TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0), // Adjust left padding value
                    child: Text(
                      'No. HP  : 085174316699',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0), // Adjust left padding value
                    child: Row(
                      children: [
                        const Text(
                          'Email   : ',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        InkWell(
                          onTap: () async {
                            final url =
                                'https://mail.google.com/mail/u/0/?fs=1&tf=cm&source=mailto&to=22082010041@student.upnjatim.ac.id';
                            if (await canLaunch(url)) {
                              await launch(url);
                            } else {
                              throw 'Could not launch $url';
                            }
                          },
                          child: Text(
                            '22082010041@student.upnjatim.ac.id',
                            style: const TextStyle(
                              fontSize: 16.0,
                              color: Colors
                                  .blue, // Make text blue to indicate link
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0), // Adjust left padding value
                    child: Row(
                      children: [
                        const Text(
                          'GitHub  : ',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        InkWell(
                          onTap: () async {
                            final url = 'https://github.com/RizkyFahrizal';
                            if (await canLaunch(url)) {
                              await launch(url);
                            } else {
                              throw 'Could not launch $url';
                            }
                          },
                          child: Text(
                            'RizkyFahrizal',
                            style: const TextStyle(
                              fontSize: 16.0,
                              color: Colors
                                  .blue, // Make text blue to indicate link
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
