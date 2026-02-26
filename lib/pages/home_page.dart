import 'package:flutter/material.dart';
import '../models/produk.dart';
import '../widgets/produk_card.dart';
import 'tambah_page.dart';
import 'edit_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Produk> produkList = [
    Produk(
      nama: "Baju Muslim Anak",
      harga: 80000,
      stok: "15",
      deskripsi: "Baju Muslim anak dengan kualitas tinggi",
    ),
    Produk(
      nama: "Baju Muslim Wanita",
      harga: 150000,
      stok: "8",
      deskripsi: " Bahan baju adem & lembut",
    ),
    Produk(
      nama: "Baju Muslim Pria",
      harga: 100000,
      stok: "20",
      deskripsi: "Baju dengan kualitas bagus",
    ),
    Produk(
      nama: "Sajadah Muslim",
      harga: 50000,
      stok: "12",
      deskripsi: "Sajadah motif modern",
    ),
  ];

  void tambahProduk(Produk p) {
    setState(() => produkList.add(p));
  }

  void updateProduk(int index, Produk p) {
    setState(() => produkList[index] = p);
  }

  void hapusProduk(int index) {
    setState(() => produkList.removeAt(index));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("🛍️ Toko Baju Muslim 🌙"),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF0F9D58), Color(0xFF1B5E20)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),

      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFE8F5E9), Color(0xFFC8E6C9)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),

        child: GridView.builder(
          padding: EdgeInsets.all(12),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.72,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
          ),
          itemCount: produkList.length,
          itemBuilder: (context, index) {
            return ProdukCard(
              produk: produkList[index],
              onEdit: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => EditPage(
                      produk: produkList[index],
                      onSave: (p) => updateProduk(index, p),
                    ),
                  ),
                );
              },
              onDelete: () => hapusProduk(index),
            );
          },
        ),
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF1B5E20),
        foregroundColor: Colors.white,
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => TambahPage(onSave: tambahProduk)),
          );
        },
      ),
    );
  }
}
