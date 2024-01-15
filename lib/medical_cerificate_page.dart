import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:image/image.dart' as img;

class MedicalCertificatePage extends StatefulWidget {
  @override
  _MedicalCertificatePageState createState() => _MedicalCertificatePageState();
}

class _MedicalCertificatePageState extends State<MedicalCertificatePage> {
  File? _image;
  bool _isImageUploaded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Legalisasi Surat Keterangan Sakit'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _isImageUploaded
                ? Image.file(
                    _image!,
                    height: 150.0,
                  )
                : ElevatedButton(
                    onPressed: _uploadImage,
                    child: Text('Unggah Foto'),
                  ),
            SizedBox(height: 16.0),
            _isImageUploaded
                ? ElevatedButton(
                    onPressed: _generatePDF,
                    child: Text('Buat PDF dan Approve'),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }

  Future<void> _uploadImage() async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() {
        _image = File(image.path);
        _isImageUploaded = true;
      });
    }
  }

  Future<void> _generatePDF() async {
    if (_image == null) {
      // Handle if no image is uploaded
      return;
    }

    // Read image file
final imageBytes = await _image!.readAsBytes();
final image = img.decodeImage(Uint8List.fromList(imageBytes));

// Print a message using the 'image' variable
print('Image decoded successfully: $image');


    // Create PDF document
    final pdf = pw.Document();

    // Add image to PDF
    pdf.addPage(pw.Page(
      build: (pw.Context context) {
        return pw.Center(
          child: pw.Image(
            pw.MemoryImage(imageBytes),
            width: 150.0,
            height: 150.0,
          ),
        );
      },
    ));

    // Add "Approved" text to PDF
    pdf.addPage(pw.Page(
      build: (pw.Context context) {
        return pw.Center(
          child: pw.Text('Approved'),
        );
      },
    ));

    // Save PDF to a file
    final pdfFile = File('/path/to/save/certificate.pdf');
    await pdfFile.writeAsBytes(await pdf.save());

    // Show success message
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('PDF file successfully created and marked as "Approved"'),
      ),
    );
  }
}