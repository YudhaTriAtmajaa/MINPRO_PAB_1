# MINPRO_1_PAB

# 🛍️ Toko Baju Muslim 🌙

Toko Baju Muslim adalah aplikasi mobile yang dirancang untuk membantu pengelolaan produk pada toko baju muslim secara digital. Aplikasi ini memudahkan pemilik toko dalam mencatat nama produk, harga, stok, dan deskripsi produk - semua dalam satu aplikasi yang simpel dan intuitif.

Aplikasi dibangun menggunakan Flutter dengan pendekatan Stateful Widget untuk manajemen state, serta navigasi antar halaman menggunakan Navigator.push(). Data produk dikelola secara lokal di dalam aplikasi.

Aplikasi manajemen produk untuk toko baju muslim berbasis Flutter. Pengguna dapat melihat, menambah, mengedit, dan menghapus data produk.

---

## Struktur Folder
```
lib/
├── main.dart                  
├── models/
│   └── produk.dart            
├── pages/
│   ├── home_page.dart         
│   ├── tambah_page.dart      
│   └── edit_page.dart        
└── widgets/
    └── produk_card.dart      
```

---

## Fitur Aplikasi

### 1. Daftar Produk
- Menampilkan seluruh produk dalam tampilan **Grid 2 kolom**
- Setiap kartu produk menampilkan **nama, harga, stok, deskripsi**, dan ikon produk
- Tombol **EDIT** dan **DELETE** tersedia langsung di setiap kartu produk

### 2. Tambah Produk
- Halaman form khusus untuk menambahkan produk baru
- Input field untuk **nama produk, harga, stok, dan deskripsi**
- Produk baru langsung muncul di halaman utama setelah disimpan

### 3. Edit Produk
- Form edit yang sudah **terisi otomatis** dengan data produk yang dipilih
- Pengguna dapat mengubah semua field: **nama, harga, stok, dan deskripsi**
- Perubahan langsung diperbarui di halaman utama setelah disimpan

### 4. Hapus Produk
- Tombol DELETE tersedia langsung di setiap kartu produk
- Produk langsung **dihapus secara real-time** dari daftar tanpa konfirmasi tambahan
- Daftar produk otomatis diperbarui setelah penghapusan

### 5. Tampilan & Tema
- Desain konsisten bertema **hijau islami** di seluruh halaman
- **Gradient AppBar** dari hijau muda ke hijau tua
- Background halaman utama menggunakan **gradient hijau lembut**
- Kartu produk dengan **shadow dan rounded corner** untuk tampilan modern

### 6. Navigasi
- Halaman **daftar produk** sebagai halaman utama
- Halaman **tambah produk** diakses melalui FloatingActionButton
- Halaman **edit produk** diakses langsung dari tombol EDIT pada kartu produk
---

## Widget yang Digunakan

### Widget Bawaan Flutter

| Widget | Fungsi |
|--------|--------|
| `MaterialApp` | Root aplikasi & konfigurasi tema global |
| `Scaffold` | Struktur dasar halaman (AppBar, Body, FAB) |
| `AppBar` | Header halaman utama dengan gradient |
| `GridView.builder` | Menampilkan produk dalam format grid 2 kolom |
| `FloatingActionButton` | Tombol navigasi ke halaman tambah produk |
| `ListView` | Scroll form input |
| `TextField` | Input data produk |
| `TextEditingController` | Mengambil & mengisi nilai input |
| `ElevatedButton` | Tombol simpan & update |
| `Card` | Kontainer tampilan produk dengan shadow |
| `InkWell` | Tombol EDIT & DELETE dengan efek ripple |
| `Container` | Dekorasi warna, ukuran, dan gradient |
| `Column` | Susunan vertikal elemen dalam card |
| `Row` | Susunan horizontal tombol Edit & Delete |
| `Text` | Menampilkan teks (nama, harga, deskripsi) |
| `Icon` |  Ikon baju (`Icons.checkroom`) pada card |
| `Padding` | Memberikan jarak/ruang antar elemen |
| `Divider` | Pemisah antara info produk dan tombol aksi |
| `SizedBox` | Mengatur spacing antar widget |
| `Spacer` | Mendorong elemen ke posisi yang tepat |
| `Center` | Memusatkan ikon di area header card |
| `BoxDecoration` | Dekorasi gradient & border radius |
| `LinearGradient` | Gradasi warna pada AppBar dan background |

### Widget Kustom

| Widget | Fungsi |
|--------|--------|
| `ProdukCard` | Menampilkan kartu info produk + tombol aksi |
| `HomePage` | Halaman utama dengan state management produk |
| `TambahPage` | Halaman form tambah produk baru |
| `EditPage` | Halaman form edit produk yang dipilih |

---


## Dokumentasi Aplikasi

> Tampilan utama aplikasi, menampilkan beberapa produk yang sudah tersedia. Apabila ingin menambah produk, tekan button + dipojok kanan bawah
> <img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/5c8c99e5-d7ff-4a05-9747-65365a0d10be" />

> Halaman tambah produk, menampilkan form nama produk, harga, stok, deskripsi
> <img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/19d90378-de99-49fd-90a5-4e9ce45bd97d" />

> Halaman edit produk, menampilkan form nama produk, harga, stok, deskripsi yang bisa di update/edit dan button update guna untuk mengubah data produk
> <img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/31a99a4f-6419-488f-9b3c-47efaaf787d6" />

> Hapus produk, apabila pengguna menekan button delete. Maka, data produk langsung terhapus
> <img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/5228b91c-3371-4847-b8a1-982c7c965ca8" />

---


