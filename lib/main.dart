import 'package:apk_kesehatan/login_page.dart';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil'),
        actions: [
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () {
              // Tambahkan logika untuk logout di sini
              _logout(context);
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CircleAvatar(
              radius: 60.0,
              backgroundImage: AssetImage('assets/profile_picture.jpg'),
            ),
            SizedBox(height: 16.0),
            Text(
              'Nama Pengguna',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'nama_pengguna@example.com',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 16.0),
            _buildProfileInfo(Icons.phone, 'Nomor Telepon', '+62 123 4567 890', Colors.orange),
            _buildProfileInfo(Icons.location_on, 'Alamat', 'Jl. Contoh No. 123', Colors.green),
            _buildProfileInfo(Icons.cake, 'Tanggal Lahir', '01 Januari 1990', Colors.pink),
          ],
        ),
      ),
    );
  }

  void _logout(BuildContext context) {
    // Implementasikan logika logout di sini
    // Contoh: Hapus token akses, bersihkan data sesi, dll.

    // Tampilkan notifikasi atau pindahkan ke halaman login setelah logout
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => LoginPage(),
      ),
    );
  }

  Widget _buildProfileInfo(IconData icon, String label, String value, Color color) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: color),
        borderRadius: BorderRadius.circular(10.0),
      ),
      padding: EdgeInsets.all(16.0),
      margin: EdgeInsets.only(bottom: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                icon,
                size: 20.0,
                color: color,
              ),
              SizedBox(width: 8.0),
              Text(
                '$label:',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: color,
                ),
              ),
            ],
          ),
          SizedBox(height: 8.0),
          Text(
            value,
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.favorite,
                  color: Colors.red,
                  size: 40,
                ),
                SizedBox(width: 8.0),
                Text(
                  'Tentang Layanan Kesehatan',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Text(
              'Layanan Kesehatan adalah platform yang didedikasikan untuk menyediakan informasi terkini seputar kesehatan, artikel, dan tips kesehatan bagi masyarakat. Kami bertujuan untuk meningkatkan kesadaran akan pentingnya kesehatan melalui informasi yang akurat dan bermanfaat.',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 24.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Kontak Kami',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16.0),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.email,
                      color: Colors.blue,
                    ),
                    SizedBox(width: 8.0),
                    Text(
                      'Email: info@layanankesehatan.com',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8.0),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.phone,
                      color: Colors.green,
                    ),
                    SizedBox(width: 8.0),
                    Text(
                      'Telepon: 123-456-7890',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8.0),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.location_on,
                      color: Colors.orange,
                    ),
                    SizedBox(width: 8.0),
                    Text(
                      'Alamat: Jl. Sehat Sejahtera No. 1, Kota Sehat',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
void main() {
  runApp(MyHealthApp());
}
class MyHealthApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layanan Kesehatan Polines',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layanan Kesehatan Polines'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // ... Menu yang sudah ada ...

            // Tombol untuk membuka halaman login
            ElevatedButton(
              onPressed: () {
                // Navigasi ke halaman login
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  ),
                );
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}

class MyHomePage1 extends StatefulWidget {
  @override
  _MyHomePage1State createState() => _MyHomePage1State();
}

class _MyHomePage1State extends State<MyHomePage1> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layanan Kesehatan Polines'),
      ),
      body: _buildBody(context),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_hospital),
            label: 'About Us',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
          // Handle navigation based on the selected index
          if (_currentIndex == 0) {
            // Navigate to Home
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => MyHomePage1(),
              ),
            );
          } else if (_currentIndex == 1) {
            // Navigate to Hospitals or other relevant page
             Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AboutUsPage(),
              ),
            );
          } else if (_currentIndex == 2) {
            // Navigate to Profile or other relevant page
            Navigator.push(
               context,
             MaterialPageRoute(
                 builder: (context) => ProfilePage(),
               ),
             );
          }
        },
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CarouselSlider(
            items: [
              // Item carousel yang sudah ada
              _buildMenuButton(
                context,
                'Konsultasi Kesehatan',
                Icons.chat_bubble,
                ConsultationPage(currentIndex: 0,),
                'assets/consultation_icon.png',
              ),
              _buildMenuButton(
                context,
                'Informasi Kesehatan',
                Icons.info,
                HealthInformationPage(currentIndex: 0,),
                'assets/information_icon.png',
              ),
              // Tambahkan item carousel lebih banyak sesuai kebutuhan
            ],
            options: CarouselOptions(
              height: 200.0,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              viewportFraction: 0.8,
            ),
          ),
          SizedBox(height: 20), // Tambahkan sedikit ruang antara carousel dan konten tambahan
          Text(
            'Layanan Kami',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          _buildServiceCard(
            'Konsultasi Kesehatan',
            'Pertukaran informasi antara pasien dan dokter untuk memahami gejala, mendiagnosis masalah, dan merencanakan pengobatan. Dilakukan secara langsung atau online untuk memberikan pemahaman dan bantuan pengambilan keputusan perawatan.',
            'assets/telemedicine_icon.png',
          ),
          _buildServiceCard(
            'Informasi Kesehatan',
            'Data tentang penyakit, gejala, pengobatan, nutrisi, dan gaya hidup sehat dari berbagai sumber seperti publikasi medis dan situs web kesehatan. Tujuannya memberikan panduan untuk menjaga dan meningkatkan kesehatan.',
            'assets/checkup_icon.png',
          ),
          // Tambahkan kartu layanan atau konten lain sesuai kebutuhan
        ],
      ),
    );
  }

  Widget _buildServiceCard(String title, String description, String imagePath) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.all(10),
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              imagePath,
              height: 80,
            ),
            SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            Text(
              description,
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuButton(
    BuildContext context,
    String label,
    IconData icon,
    Widget page,
    String imagePath,
  ) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      margin: EdgeInsets.symmetric(vertical: 16.0),
      child: ElevatedButton.icon(
        onPressed: () {
          // Navigasi ke halaman terkait
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => page,
            ),
          );
        },
        icon: Image.asset(
          imagePath,
          height: 36.0,
          color: Colors.white,
        ),
        label: Text(
          label,
          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
        ),
        style: ElevatedButton.styleFrom(
          primary: Colors.blue,
          onPrimary: Colors.white,
          padding: EdgeInsets.symmetric(vertical: 16.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          textStyle: TextStyle(fontSize: 16.0),
        ),
      ),
    );
  }
}

class ConsultationPage extends StatelessWidget {
  final int currentIndex;

  ConsultationPage({required this.currentIndex});

  final List<String> carouselImages = [
    'assets/carousel_image1.jpg',
    'assets/carousel_image2.jpg',
    'assets/carousel_image3.jpg',
    // Tambahkan gambar carousel sesuai kebutuhan
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Konsultasi Kesehatan'),
        actions: [
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyHomePage1(),
                ),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Tambahkan carousel di atas tulisan "Konsultasi Kesehatan"
            CarouselSlider(
              items: carouselImages.map((image) {
                return Image.asset(
                  image,
                  fit: BoxFit.cover,
                );
              }).toList(),
              options: CarouselOptions(
                height: 200.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Konsultasi Kesehatan',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.purpleAccent.withOpacity(0.2),
              ),
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Image.asset(
                    'assets/consultation_icon.png',
                    height: 150.0,
                  ),
                  SizedBox(height: 20.0),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Pertanyaan/Keluhan Kesehatan',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: () {
                      // Tambahkan logika untuk mengirim pertanyaan/keluhan ke backend
                      _sendMessage(context);
                    },
                    child: Text('Kirim'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_hospital),
            label: 'Hospitals',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        onTap: (index) {
          if (index == 0) {
            // Navigate to Home
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => MyHomePage1(),
              ),
            );
          } else if (index == 1) {
            // Navigate to Hospitals or other relevant page
             Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AboutUsPage(),
              ),
            );
          } else if (index == 2) {
            // Navigate to Profile or other relevant page
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProfilePage(),
              ),
            );
          }
        },
      ),
    );
  }

  void _sendMessage(BuildContext context) {
    // Implementasikan logika untuk mengirim pesan
    // Anda dapat menambahkan logika HTTP request atau menyimpan pesan ke database, dll.

    // Tampilkan notifikasi atau pesan sukses setelah mengirim
    _showSuccessNotification(context);
  }

  void _showSuccessNotification(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Pertanyaan/Keluhan Kesehatan berhasil dikirim!'),
      ),
    );
  }
}


class HealthInformationPage extends StatelessWidget {
  final int currentIndex;

  HealthInformationPage({required this.currentIndex});

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Informasi Kesehatan'),
        actions: [
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyHomePage1(),
                ),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Informasi Kesehatan',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
              SizedBox(height: 20.0),
              _buildHealthInfoCard(
                'Influenza',
                'Infeksi virus yang menyerang saluran pernapasan.',
                'Istirahat cukup, minum banyak cairan, konsumsi obat pereda demam dan nyeri.',
              ),
              _buildHealthInfoCard(
                'Hipertensi',
                'Tingginya tekanan darah dalam pembuluh darah.',
                'Mengurangi konsumsi garam, berolahraga teratur, menghindari stres.',
              ),
              _buildHealthInfoCard(
                'Diabetes Mellitus',
                'Gangguan metabolisme gula darah.',
                'Pola makan teratur, olahraga, dan pengontrolan gula darah.',
              ),
              _buildHealthInfoCard(
                'Kanker Payudara',
                'Kanker yang dimulai dari sel-sel payudara.',
                'Pemeriksaan payudara berkala, deteksi dini, dan perawatan sesuai jenis kanker.',
              ),
              _buildHealthInfoCard(
                'Anemia',
                'Kekurangan sel darah merah atau hemoglobin dalam darah.',
                'Konsumsi makanan kaya zat besi, suplemen zat besi, dan pemeriksaan penyebab anemia.',
              ),
              // Tambahkan informasi kesehatan lainnya sesuai kebutuhan
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_hospital),
            label: 'Hospitals',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        onTap: (index) {
          if (index == 0) {
            // Navigate to Home
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => MyHomePage1(),
              ),
            );
          } else if (index == 1) {
            // Navigate to Hospitals or other relevant page
             Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AboutUsPage(),
              ),
            );
          } else if (index == 2) {
            // Navigate to Profile or other relevant page
              Navigator.push(
               context,
             MaterialPageRoute(
                 builder: (context) => ProfilePage(),
               ),
             );
          }
        },
      ),
    );
  }

  Widget _buildHealthInfoCard(String title, String description, String treatment) {
    return Card(
      elevation: 4.0,
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Deskripsi: $description',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Pengobatan: $treatment',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

