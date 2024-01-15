import 'package:flutter/material.dart';

class HealthInformationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Informasi Kesehatan'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Informasi Kesehatan',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
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
            // Tambahkan informasi kesehatan lainnya sesuai kebutuhan
          ],
        ),
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
