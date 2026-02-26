import 'package:flutter/material.dart';
import '../models/produk.dart';

class EditPage extends StatelessWidget {
  final Produk produk;
  final Function(Produk) onSave;

  const EditPage({super.key, required this.produk, required this.onSave});

  @override
  Widget build(BuildContext context) {
    final nama = TextEditingController(text: produk.nama);
    final harga = TextEditingController(text: produk.harga.toString());
    final stok = TextEditingController(text: produk.stok);
    final deskripsi = TextEditingController(text: produk.deskripsi);

    return Scaffold(
      appBar: AppBar(title: Text("Edit Produk")),
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
              child: Text("Update"),
              onPressed: () {
                final updated = Produk(
                  nama: nama.text,
                  harga: double.tryParse(harga.text) ?? 0,
                  stok: stok.text,
                  deskripsi: deskripsi.text,
                );
                onSave(updated);
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
