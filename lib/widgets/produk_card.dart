import 'package:flutter/material.dart';
import '../models/produk.dart';

class ProdukCard extends StatelessWidget {
  final Produk produk;
  final VoidCallback onEdit;
  final VoidCallback onDelete;

  const ProdukCard({super.key, 
    required this.produk,
    required this.onEdit,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      shadowColor: Colors.black26,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      child: Column(
        children: [
          // HEADER
          Container(
            height: 100,
            decoration: BoxDecoration(
              color: Colors.green.withOpacity(0.15),
              borderRadius: BorderRadius.vertical(top: Radius.circular(14)),
            ),
            child: Center(
              child: Icon(Icons.checkroom, size: 45, color: Colors.green[800]),
            ),
          ),

          Spacer(),

          // INFO PRODUK
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Text(
                  produk.nama,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  textAlign: TextAlign.center,
                ),

                SizedBox(height: 4),

                Text(
                  produk.deskripsi,
                  style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),

                SizedBox(height: 6),

                Text(
                  "Rp ${produk.harga}",
                  style: TextStyle(
                    color: Colors.green[800],
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 8),
          Divider(height: 1),

          // TOMBOL
          Row(
            children: [
              Expanded(
                child: InkWell(
                  onTap: onEdit,
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 14),
                    alignment: Alignment.center,
                    child: Text(
                      "EDIT",
                      style: TextStyle(
                        color: Colors.green[700],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              Container(width: 1, height: 40, color: Colors.grey[300]),
              Expanded(
                child: InkWell(
                  onTap: onDelete,
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 14),
                    alignment: Alignment.center,
                    child: Text(
                      "DELETE",
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
