# MINPRO 2 PAB - APLIKASI SHOWROOM MOBIL

Aplikasi ini saya rancang sebagai platform katalog digital sederhana untuk pengelolaan dan tampilan koleksi mobil di sebuah showroom.

## 📝 Deskripsi Aplikasi
Aplikasi ini merupakan lanjutan dari projek sebelumnya yang berfokus pada UI yang user-friendly, serta manajemen data (CRUD) untuk pengelolaan stok mobil. Pada projek lanjutan kali ini dilakukan pengembangan menggunakan **Supabase** sebagai backend (database & authentication) agar bisa menawarkan performa yang lebih bagus dengan sinkronisasi data instan.

## ✨ Fitur Aplikasi
1. **Sistem Autentikasi**: Login dan Register menggunakan Supabase Auth.
2. **Manajemen Inventaris (CRUD)**: Tambah, Lihat, Edit, dan Hapus data mobil secara real-time.
3. **Mode Tampilan**: Fitur switch antara Dark Mode dan Light Mode.
4. **Validasi Form**: Memastikan semua data terisi sebelum disimpan ke database.

## 🛠️ Widget yang Digunakan
- **Layout**: `Scaffold`, `AppBar`, `Column`, `Row`, `Padding`, `SizedBox`.
- **Display**: `ListView.builder`, `StreamBuilder`, `Card`, `ListTile`.
- **Input**: `TextField`, `ElevatedButton`, `FloatingActionButton`.
- **UI Feedback**: `CircularProgressIndicator`, `SnackBar`, `AlertDialog`.
- **State Management**: `Provider` (MultiProvider).
