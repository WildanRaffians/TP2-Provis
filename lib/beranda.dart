// import 'package:example_app/button.dart';
import 'package:dihospital_home/jadwal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Beranda extends StatefulWidget {
  const Beranda({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title = 'Halo';

  @override
  State<Beranda> createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      // _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the Beranda object that was created by
        // the App.build method, and use it to set our appbar title.
        automaticallyImplyLeading: false, // Menonaktifkan tombol kembali bawaan
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        flexibleSpace: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/image/logo.png",
                width: 40,
                height: 40,
              ),
              const SizedBox(width: 4), // Jarak antara logo dan teks
              const Text(
                'DIHospital', // Teks yang ingin ditampilkan di sebelah logo
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0), // Warna teks
                  fontSize: 20, // Ukuran teks
                  fontWeight: FontWeight.w800, // Ketebalan teks
                ),
              ),
            ],
          ),
        ),
        toolbarHeight: 100,

      ),
      body: SizedBox(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        height: MediaQuery.of(context).size.height,
        
        child: Stack(
          
          children:[
            Container(
              height: 150,
              width:  MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(color: Color.fromARGB(255, 255, 255, 255)),
            ),
            Positioned(
              left: 20,
              right: 20,
              top: 0,
              bottom: 0,
              child: SingleChildScrollView(
                controller: ScrollController(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children: [
                    //     Image.asset(
                    //       "assets/image/logo.png",
                    //       width: 40,
                    //       height: 40,
                    //     ),
                    //     const SizedBox(width: 4),
                    //     const Text(
                    //       'DIHospital',
                    //       style: TextStyle(
                    //         color: Color.fromARGB(255, 0, 0, 0),
                    //         fontSize: 20,
                    //         fontWeight: FontWeight.w800,
                    //       ),
                    //     ),
                    //   ],
                    // ),
                    // const SizedBox(height: 20), // Tambahkan jarak antara logo/teks dengan "Layanan"
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: const Color.fromARGB(255, 1, 101, 252), // Warna border
                                  width: 2, // Ketebalan border
                                ),
                              ),
                              child: ClipOval(
                                child: Image.network(
                                  "https://picsum.photos/250?image=1",
                                  width: 40,
                                  height: 40,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(width: 8),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start, 
                              children: [
                                Text(
                                  'Celine Rodriguz',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.female,
                                      color: Colors.pink,
                                    ),
                                    Text(
                                      'Wanita',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ]
                        ),
                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                // Navigasi ke halaman baru ketika widget ditekan
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Jadwal()), // Ganti HalamanTujuan dengan halaman yang ingin dituju
                                );
                              },
                              child: Container(
                                padding: const EdgeInsets.all(5),
                                width: 100,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: const Color.fromARGB(255, 255, 62, 62),
                                  ),
                                  borderRadius: const BorderRadius.all(Radius.circular(4)),
                                ),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center, // Center the icon and text horizontally
                                  children: [
                                    Text(
                                      'Darurat',
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 255, 62, 62),
                                        fontSize: 14,
                                      ),
                                    ),
                                    SizedBox(width: 4), // Add spacing between icon and text
                                    Icon(
                                      Icons.local_hospital,
                                      color: Color.fromARGB(255, 255, 62, 62),
                                      size: 20,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(width: 8),
                            const Icon(
                              Icons.notifications,
                              size: 35,
                            )
                          ],
                        )
                      ],
                    ),

                    const Divider(
                      thickness: 2,
                      color: Colors.black,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 5, top: 10), // Atur padding sebanyak yang Anda inginkan
                      child: Text(
                        "Layanan",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    
                    Container(
                      padding: const EdgeInsets.all(12),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: const Color.fromARGB(255, 1, 101, 252),
                            width: 2,
                            ),
                          borderRadius:
                            const BorderRadius.all(Radius.circular(12))),

                      child: Column(
                        children: [
                          Builder(builder: (context) {
                            List menuImage = [
                              {
                                "icon": Icons.library_add,
                                "label": "Buat Janji Temu"
                              },
                              {
                                "icon": Icons.local_hospital,
                                "label": "Informasi Rumah Sakit"
                              },
                              {
                                "icon": Icons.person_pin_rounded,
                                "label": "Informasi Dokter"
                              },
                              {
                                "icon": Icons.local_bar,
                                "label": "Pemeriksaan Lab"
                              },
                              {
                                "icon": Icons.video_call,
                                "label": "Video Call Dokter"
                              },
                              {
                                "icon": Icons.chat,
                                "label": "Chat Dokter"
                              },
                              {
                                "icon": Icons.person_add_alt_1,
                                "label": "Panggil Dokter"
                              },
                              {
                                "icon": Icons.list_alt,
                                "label": "Lainnya"
                              },
                            ];
                            return GridView.builder(
                              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                childAspectRatio: 1,
                                crossAxisCount: 4,
                                mainAxisSpacing: 6,
                                crossAxisSpacing: 20,
                              ),
                              physics: const ScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: menuImage.length,
                              itemBuilder: (BuildContext context, index) {
                                var item = menuImage[index];
                                return Container(
                                  child: Column(
                                    children: [
                                      Expanded(
                                          // backgroundColor: Colors.blue, // Atur warna latar belakang ikon
                                          child: Icon(
                                            item["icon"],
                                            size: 40,
                                            color: const Color.fromARGB(255, 1, 101, 252), // Atur warna ikon
                                          ),
                                      ),
                                      const SizedBox(
                                        height: 2,
                                      ),
                                      Text(
                                        item["label"],
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w800,
                                          ),
                                      )
                                    ],
                                  ),
                                );
                              },
                            );
                          }),

                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),

                    const Padding(
                      padding: EdgeInsets.only(bottom: 5, top: 10), // Atur padding sebanyak yang Anda inginkan
                      child: Text(
                        "Anda memiliki janji temu!",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 1, 101, 252),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 16,
                                offset: const Offset(0, 11)),
                          ],
                          borderRadius:
                              const BorderRadius.all(Radius.circular(12))),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 60,
                                height: 60,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  
                                ),
                                child: ClipOval(
                                  child: Image.network(
                                    "https://picsum.photos/250?image=1",
                                    width: 40,
                                    height: 40,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 8),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start, 
                                children: [
                                  Text(
                                    'dr. Muhammad Rifky Afandi, SpKj',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      fontSize: 16,
                                    ),
                                  ),
                                  Text(
                                    'Psikiatri - Spesialis Jiwa',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.pin_drop_sharp,
                                        color: Color.fromARGB(255, 255, 255, 255),
                                        size: 20,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 5),
                                        child: Text(
                                          'Rumah Sakit Doa Ibu B',
                                          style: TextStyle(
                                            color: Color.fromARGB(255, 255, 255, 255),
                                            fontSize: 12,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ]
                          ),
                          const SizedBox(
                            height: 12,
                          ),

                          Container(
                            width: MediaQuery.of(context).size.width,
                            padding: const EdgeInsets.all(5),
                            decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 8, 88, 209),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12))),
                            
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.calendar_month,
                                      color: Colors.white,
                                    ),
                                    
                                    Padding(
                                      padding: EdgeInsets.all(5),
                                      child : Text(
                                        "Senin, 18 Maret",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      )
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 10, // Atur lebar sesuai kebutuhan
                                      child: VerticalDivider(
                                        thickness: 5,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.access_time_filled,
                                      color: Colors.white,
                                    ),
                                    
                                    Padding(
                                      padding: EdgeInsets.all(5),
                                      child : Text(
                                        "08.00-08.30",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      )
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Lihat detail',
                                style: TextStyle(
                                  color: Colors.white,
                                  
                                ),
                              ),
                              Icon(
                                Icons.keyboard_arrow_right,
                                color: Colors.white,
                              )
                            ],
                          ),
                          
                        ]
                      ),
                    ),

                    
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30), // Mengatur bentuk lingkaran dengan borderRadius
        ),
        onPressed: _incrementCounter,
        backgroundColor: const Color.fromARGB(255, 1, 101, 252),
        child: const Icon(
          Icons.chat,
          color: Colors.white,),
      ), // This trailing comma makes auto-formatting nicer for build methods.

    );
  }
}
