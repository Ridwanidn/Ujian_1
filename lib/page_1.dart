import 'package:flutter/material.dart';
import 'package:ujian_flutter_1/page_3.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50], // Warna latar belakang untuk bagian atas
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Gambar di bagian atas
            Image.network(
              '', // URL gambar contoh
              height: 250,
            ),

            // Kotak yang menampilkan teks dan tombol
            Container(
              decoration: BoxDecoration(
                color: Colors.white, // Warna kotak
                borderRadius: BorderRadius.circular(20), // Membuat sudut kotak melengkung
              ),
              margin: const EdgeInsets.symmetric(horizontal: 20), // Margin kiri dan kanan
              padding: const EdgeInsets.all(20), // Padding untuk konten di dalam kotak
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Judul
                  const Text(
                    'Vaccine Types Available',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 10,),

                  // Deskripsi
                  const Text(
                    'Vaccine doses are available every weekday, and make sure you miss getting the first dose.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20,),

                  // Indikator halaman
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Bulatan kecil sebagai indikator
                      Container(
                        width: 8,
                        height: 8,
                        decoration: const BoxDecoration(
                          color: Colors.grey,
                          shape: BoxShape.circle,
                        ),
                      ),
                      const SizedBox(width: 5,),
                      Container(
                        width: 8,
                        height: 8,
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.circle,
                        ),
                      ),
                      const SizedBox(width: 5,),
                      Container(
                        width: 8,
                        height: 8,
                        decoration: const BoxDecoration(
                          color: Colors.grey,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20,),

                  // Tombol "Skip" dan "Next"
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Tombol Skip
                      TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.grey[200], // Warna background tombol
                          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30), // Sudut melengkung
                          ),
                        ),
                        child: const Text(
                          'Skip',
                          style: TextStyle(color: Colors.grey), // Warna teks
                        ),
                      ),

                      // Tombol Next
                      ElevatedButton(
                        onPressed: () {Navigator.push(context, MaterialPageRoute(builder:(context) {
                          return PageTri();
                        },));},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue, // Warna tombol
                          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30), // Sudut melengkung
                          ),
                        ),
                        child: const Text('Next'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

