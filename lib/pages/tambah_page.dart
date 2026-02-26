import 'package:flutter/material.dart';
import '../models/produk.dart';

class TambahPage extends StatelessWidget {
  final Function(Produk) onSave;

  TambahPage({super.key, required this.onSave});

  final nama = TextEditingController();
  final harga = TextEditingController();
  final stok = TextEditingController();
  final deskripsi = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tambah Produk")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: ListView(
          children: [
            field("Nama Produk", nama),
            field("Harga", harga),
            field("Stok", stok),
            field("Deskripsi", deskripsi),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text("Simpan"),
              onPressed: () {
                final produk = Produk(
                  nama: nama.text,
                  harga: double.tryParse(harga.text) ?? 0,
                  stok: stok.text,
                  deskripsi: deskripsi.text,
                );
                onSave(produk);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget field(String label, TextEditingController c) {
    return Padding(
      padding: EdgeInsets.only(bottom: 12),
      child: TextField(
        controller: c,
        decoration: InputDecoration(
          labelText: label,
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        ),
      ),
    );
  }
}
