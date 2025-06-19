# Perbandingan Print dan Logger di Flutter

## 1. Print
- **Metode**: `print()`
- **Penggunaan**: Fungsi bawaan Dart untuk mencetak pesan ke konsol.
- **Keunggulan**: Mudah digunakan, tidak perlu konfigurasi.
- **Keterbatasan**: Tidak ada level logging, format kustom, atau penyimpanan log; sulit dikelola di proyek besar.
- **Kegunaan**: Cocok untuk debugging cepat pada proyek kecil.

**Contoh Kode**:
```dart
print('Pesan debug sederhana');
```

## 2. Logger
- **Metode**: Paket `logger` atau `logging`
- **Penggunaan**: Solusi logging canggih dengan level logging dan format yang dapat disesuaikan.
- **Keunggulan**: Mendukung level logging (info, debug, error), format kustom, output fleksibel (konsol, file), struktur pesan jelas, dan performa lebih baik di produksi.
- **Keterbatasan**: Memerlukan dependensi eksternal dan konfigurasi awal.
- **Kegunaan**: Ideal untuk aplikasi sedang hingga besar yang butuh logging terstruktur.

**Contoh Kode**:
```dart
import 'package:logging/logging.dart';

final Logger _logger = Logger('AppLogger');
_logger.info('Aplikasi dimulai');
_logger.severe('Error terjadi', Exception('Kesalahan'));
```

## Mengapa Logger Direkomendasikan?
- **Manajemen Pesan**: Level logging memudahkan filtering pesan berdasarkan kepentingan.
- **Analisis**: Log dapat disimpan atau dikirim ke layanan eksternal untuk debugging.
- **Efisiensi Produksi**: Dapat mengurangi log tidak penting, tidak membebani sistem.
- **Skalabilitas**: Cocok untuk aplikasi besar dengan kebutuhan logging kompleks.

## Tabel Perbandingan
| Fitur                | Print               | Logger              |
|----------------------|---------------------|---------------------|
| **Kemudahan**        | Sangat Mudah        | Sedang              |
| **Level Logging**    | Tidak Didukung      | Didukung            |
| **Format Kustom**    | Tidak Didukung      | Didukung            |
| **Output Fleksibel** | Hanya Konsol        | Konsol, File, dll   |
| **Performa Produksi**| Buruk              | Baik (Dapat Filter) |

## Kesimpulan
- **Print**: Hanya untuk debugging sederhana di proyek kecil, hindari di produksi.
- **Logger**: Pilihan terbaik untuk aplikasi yang membutuhkan logging terstruktur dan efisien, dengan fitur canggih untuk debugging dan monitoring.
