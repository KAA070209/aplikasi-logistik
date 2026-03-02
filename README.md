# 🚚 Logistics – Sistem Manajemen Logistik Berbasis Web

Aplikasi **Logistics** adalah sistem manajemen logistik berbasis **Flask + MySQL** yang dirancang untuk mengelola proses pengiriman barang secara terstruktur, mulai dari pembuatan shipment, assign driver, sortir gudang, hingga pengiriman ke kurir.

Sistem ini mendukung multi-role user seperti **Admin, Gudang, Kurir, dan Driver**, lengkap dengan QR Code system dan tracking berbasis koordinat.

---

# 🏗️ Arsitektur Sistem

* **Backend:** Python (Flask 3.0.2)
* **Database:** MySQL / MariaDB
* **Frontend:** HTML, Bootstrap 5
* **QR Code:** Python `qrcode` library
* **Geocoding:** OpenStreetMap (Nominatim API)
* **Map Routing:** Perhitungan jarak Haversine
* **Session Management:** Flask Session
* **Security:** Password Hashing (Werkzeug PBKDF2)
* **Environment Management:** python-dotenv

---

# 📦 Dependencies

```
Flask==3.0.2
mysql-connector-python==8.3.0
qrcode[pil]==7.4.2
Pillow==10.4.0
python-dotenv==1.0.0
requests==2.31.0
```

---

# 👥 Role & Hak Akses

| Role       | Kode      | Akses                                             |
| ---------- | --------- | ------------------------------------------------- |
| 👑 Admin   | `1`       | Full akses sistem                                |
| 🏢 Gudang  | `2`       | Sortir & distribusi paket                        |
| 📦 Kurir   | `3`       | Antar ke penerima                                |
| 👨‍💼 Manager| `4`       | Mendistribusi logistik barang                    |
| 🚚 Driver  | `5`       | Antar antar-hub                                  |

---

# 🚀 Fitur Lengkap Sistem

## 🔐 1. Authentication & Security

* Login multi-role dengan session management
* Session protection dengan HTTPOnly cookies
* Password hashing (PBKDF2-SHA256)
* Role-based access control (RBAC)
* Auto update last activity untuk user tracking
* Activity logs lengkap (Login / Logout / Action)
* Input validation dan sanitization
* Transaction-safe database operation

---

## 👑 2. Admin Features

### 📊 Dashboard Monitoring

* Total user
* Total gudang
* Total shipment
* Total barang
* Status shipment real-time
* Posisi kurir & driver (IN/OUT gudang)
* Log aktivitas terbaru
* Statistik delivery成功率

### 👤 Manajemen User

* Tambah user baru
* Edit data user
* Reset password
* Hapus user (dengan validasi relasi)
* Status online detection (last_activity)
* Assign wilayah khusus kurir
* Manage role user

### 🏢 Manajemen Gudang

* Tambah gudang (dengan auto geocoding)
* Edit informasi gudang
* Hapus gudang (dengan validasi relasi)
* Generate QR gudang otomatis
* Simpan koordinat latitude & longitude
* Multi-branch warehouse management

### 📦 Manajemen Shipment

* Buat shipment baru
* Generate tracking number otomatis (format: AE-{timestamp}-{random})
* Generate QR Paket otomatis
* Hitung rute origin → hub terdekat → destination
* Assign driver via scan QR
* Delete shipment dengan validasi status
* Lock transaction (FOR UPDATE) untuk data integrity

### 📈 Laporan & Analitik

* Status shipment
* Shipment per gudang
* Aktivitas kurir
* Aktivitas driver
* Shipment per kota
* Trend delivered per bulan

---

## 🏢 3. Gudang Features

* Dashboard sortir berdasarkan kota
* Scan paket masuk sortir
* Scan kurir untuk ready delivery
* Validasi wilayah kurir
* Validasi status paket
* Monitoring shipment dalam perjalanan
* Manajemen lokasi gudang
* QR-based warehouse operations

---

## 🚚 4. Driver Features

* QR Driver personal
* Scan IN / OUT gudang
* Tracking status antar pulau / antar kota
* Validasi tidak bisa aktif di 2 gudang berbeda
* Log aktivitas otomatis
* Coordinate tracking dengan GPS

---

## 📦 5. Kurir Features

* QR Kurir pribadi
* Scan IN / OUT gudang
* Ambil paket sesuai wilayah
* Validasi wilayah pengiriman
* Dashboard status terakhir
* Log aktivitas penyerahan paket
* POD (Proof of Delivery) management

---

## 🌍 6. Sistem Geolocation & Routing

* Geocoding alamat otomatis via Nominatim API
* Simpan latitude & longitude
* Hitung jarak menggunakan rumus Haversine
* Tentukan hub terdekat otomatis
* Simulasi posisi truck
* Real-time coordinate tracking

---

## 🔄 7. Status Flow Shipment

```
CREATED
   ↓
DRIVER_ASSIGNED
   ↓
PICKUP
   ↓
ARRIVED_AT_ORIGIN_HUB
   ↓
IN_TRANSIT
   ↓
TRANSIT_HUB
   ↓
SORTING
   ↓
READY_FOR_DELIVERY
   ↓
DELIVERED
```

Sistem memiliki validasi ketat agar status tidak bisa melompat (sequential flow).

---

# 📁 Struktur Project

```
aplikasi-logistik/
│
├── app.py                 # Main application entry point
├── config.py              # Configuration settings
├── wsgi.py                # WSGI entry point for production
├── requirements.txt       # Python dependencies
├── .env                  # Environment variables (gitignored)
├── README.md             # Documentation
│
├── db/
│   └── db_logistik_barang_azkaa (6).sql    # Database schema & data
│
├── ERD/
│   ├── ERD.drawio        # ERD diagram source
│   └── *.png             # ERD images
│
├── static/
│   ├── icon/
│   │   └── icon.png
│   ├── qr_paket/         # Generated package QR codes
│   ├── qr_kurir/         # Generated courier QR codes
│   └── qr_gudang_azka/  # Generated warehouse QR codes
│
└── templates/
    ├── login_azka.html           # Login page
    ├── admin_dashboard_azka.html    # Admin dashboard
    ├── admin_users_azka.html         # User management
    ├── gudang_azka.html              # Warehouse management
    ├── gudang_dashboard_azka.html    # Warehouse dashboard
    ├── shipment_azka.html            # Shipment management
    ├── product_azka.html             # Product management
    ├── kurir_dashboard_azka.html     # Courier dashboard
    ├── dashboard_sopir_azka.html     # Driver dashboard
    ├── laporan_azka.html              # Reports
    └── activity_logs_azka.html        # Activity logs
```

---

# ⚙️ Instalasi

### 1️⃣ Clone Repository

```
bash
git clone https://github.com/KAA070209/aplikasi-logistik.git
cd aplikasi-logistik
```

### 2️⃣ Buat Virtual Environment

```
bash
python -m venv .venv
```

**Windows:**

```
bash
.venv\Scripts\activate
```

**Linux/Mac:**

```
bash
source .venv/bin/activate
```

### 3️⃣ Install Dependency

```
bash
pip install -r requirements.txt
```

### 4️⃣ Setup Environment Variable

Buat file `.env` di root directory:

```
env
# Flask Configuration
FLASK_APP=app.py
FLASK_ENV=development
SECRET_KEY=logistik-barang

# Database Configuration
DB_HOST=localhost
DB_USER=root
DB_PASSWORD=your_password_here
DB_NAME=db_logistik_barang_azkaa
```

**Windows (CMD):**

```
cmd
set FLASK_APP=app.py
set FLASK_ENV=development
```

**Windows (PowerShell):**

```
powershell
$env:FLASK_APP="app.py"
$env:FLASK_ENV="development"
```

**Linux/Mac:**

```
bash
export FLASK_APP=app.py
export FLASK_ENV=development
```

### 5️⃣ Setup Database

Import database dari file SQL yang disediakan:

```
bash
# Via MySQL Command Line
mysql -u root -p < db/db_logistik_barang_azkaa\(6\).sql

# Atau via phpMyAdmin
# Import file db/db_logistik_barang_azkaa (6).sql
```

### 6️⃣ Jalankan Aplikasi

```
bash
flask run
# atau
python app.py
```

**Mode Debug:**

```
bash
flask --debug run
```

### 7️⃣ Akses Aplikasi

Buka browser dan akses:

```
http://127.0.0.1:5000
```

---

# 🔑 Default Login Credentials

| Role  | Username   | Email                         | Password |
| ----- | ---------- | ----------------------------- | -------- |
| Admin | Admin      | m.azkanabhan07@gmail.com      | (cek di database) |

> ⚠️ **Note:** Untuk keamanan, segera ubah password default setelah login pertama kali.

---

# 🗄️ Database Schema

## Tabel Overview

| No | Table Name                    | Description                    |
|----|-------------------------------|--------------------------------|
| 1  | `tbl_users_azka`              | Data user/pengguna sistem     |
| 2  | `tbl_roles_azka`             | Definisi role pengguna        |
| 3  | `tbl_warehouses_azka`        | Data gudang/lokasi           |
| 4  | `tbl_shipment_azka`          | Data pengiriman/paket         |
| 5  | `tbl_products_azka`          | Detail barang dalam shipment  |
| 6  | `tbl_activity_logs_azka`    | Log aktivitas pengguna       |
| 7  | `tbl_driver_scans_azka`     | Scan IN/OUT driver           |
| 8  | `tbl_courier_scans_azka`    | Scan IN/OUT kurir            |

## Detail Tabel

### tbl_users_azka
```
sql
- id_azka (PK)
- username_azka
- email_azka (UNIQUE)
- password_hash_azka (PBKDF2-SHA256)
- role_id_azka (FK → tbl_roles_azka)
- warehouse_id_azka (FK → tbl_warehouses_azka, nullable)
- created_at_azka
- update_at_azka
- is_active_azka
- last_activity
- wilayah_azka (untuk kurir)
```

### tbl_roles_azka
```
sql
- id_azka (PK)
- nama_azka (admin, Gudang, Kurir, Manager, Driver)
- description_azka
```

### tbl_warehouses_azka
```
sql
- id_azka (PK)
- nama_azka
- address_azka
- qr_code_data_azka
- created_at_azka
- latitude_azka
- longitude_azka
```

### tbl_shipment_azka
```
sql
- id_azka (PK)
- tracking_number_azka (UNIQUE)
- sender_name_azka
- qr_code_data_azka
- receiver_name_azka
- receiver_address_azka
- warehouse_id_azka (FK)
- courier_id_azka (FK, nullable)
- driver_id_azka (FK, nullable)
- status_azka
- is_interisland
- created_at_azka
- updated_at_azka
- origin_lat, origin_lng
- last_lat, last_lng
- destination_lat, destination_lng
- receiver_city_azka
```

### tbl_products_azka
```
sql
- id_azka (PK)
- shipment_id_azka (FK)
- nama_barang_azka
- berat_azka (kg)
- qty_azka
```

### tbl_activity_logs_azka
```
sql
- id_azka (PK)
- user_id_azka (FK)
- shipment_id_azka (FK, nullable)
- actions_azka
- reference_azka
- created_at_azka
```

### tbl_driver_scans_azka
```
sql
- id_azka (PK)
- driver_id_azka (FK)
- warehouse_id_azka (FK)
- scan_type_azka (ENUM: IN, OUT)
- scan_time_azka
- latitude_azka
- longitude_azka
```

### tbl_courier_scans_azka
```
sql
- id_azka (PK)
- courier_id_azka (FK)
- shipment_id_azka (FK, nullable)
- warehouse_id_azka (FK, nullable)
- scan_type_azka (ENUM: IN, OUT)
- scan_time_azka
```

---

# 📊 Gudang (Warehouse) Locations

| ID | Nama Gudang        | Alamat                      | Kota         | Latitude    | Longitude   |
|----|--------------------|-----------------------------|--------------|-------------|-------------|
| 14 | Gudang Utama       | Jl. Merdeka No.05           | Bandung      | -6.9088790  | 107.6106028 |
| 15 | Gudang Utama Barat | Jl. Melati No.90           | Jakarta Barat| -6.1924323  | 106.7648468 |
| 16 | Gudang Utama Timur | Jl. Kusuma Bangsa No.21    | Surabaya     | -7.2489076  | 112.7502949 |

---

# 🛡️ Keamanan Sistem

* Transaction-safe database operation
* Row locking (SELECT ... FOR UPDATE)
* QR validation strict parsing
* Role-based route protection
* Input validation dan sanitization
* Prevention duplicate scan
* Prevent delete processed shipment
* Password hashing dengan PBKDF2
* Session cookie security (HttpOnly, SameSite)
* CORS protection

---

# 🔧 Troubleshooting

## Common Issues

### 1. Database Connection Error
```
mysql.connector.errors.DatabaseError: 1049: Unknown database
```
**Solution:** Pastikan database sudah di-import dengan benar.
```
bash
mysql -u root -p -e "CREATE DATABASE db_logistik_barang_azkaa;"
mysql -u root -p db_logistik_barang_azkaa < db/db_logistik_barang_azkaa\ \(6\).sql
```

### 2. Module Not Found
```
ModuleNotFoundError: No module named 'flask'
```
**Solution:** Install dependencies.
```
bash
pip install -r requirements.txt
```

### 3. Environment Variable Not Set
```
TypeError: Secret Key must be set
```
**Solution:** Buat file `.env` dengan konfigurasi yang benar.

### 4. QR Code Image Not Found
```
FileNotFoundError: [Errno 2] No such file or directory
```
**Solution:** Pastikan folder `static/qr_paket/`, `static/qr_kurir/`, dan `static/qr_gudang_azka/` sudah dibuat.

### 5. CORS Error
```
Access to fetch at 'http://localhost:5000' from origin 'http://localhost:3000' blocked by CORS
```
**Solution:** Jika mengakses dari frontend terpisah, tambahkan CORS headers di Flask.

---

# ❓ FAQ (Frequently Asked Questions)

**Q: Bagaimana cara menambah user baru?**
A: Login sebagai Admin → menu Users → Tambah User

**Q: Bagaimana cara membuat shipment baru?**
A: Login sebagai Admin → menu Shipment → Tambah Shipment → Isi data pengirim & penerima

**Q: Bagaimana cara assign driver ke paket?**
A: Admin dashboard → Pilih shipment → Assign Driver via QR scan atau manual

**Q: Bagaimana cara kurir mengambil paket?**
A: Login sebagai Kurir → Scan QR Paket → Paket akan masuk ke list delivery

**Q: Bagaimana cara driver scan IN/OUT gudang?**
A: Login sebagai Driver → Dashboard → Scan QR Gudang → Pilih IN/OUT

**Q: Bagaimana jika paket ingin dibatalkan?**
A: Hanya shipment dengan status CREATED yang bisa dihapus

**Q: Apakah sistem mendukung pengiriman antar pulau?**
A: Ya, ada flag `is_interisland` untuk menandai pengiriman antar pulau

**Q: Bagaimana cara reset password user?**
A: Login sebagai Admin → Users → Pilih User → Reset Password

---

# 📌 Keunggulan Sistem

✅ Real multi-role system dengan RBAC  
✅ QR-based logistics workflow  
✅ Auto geocoding address via Nominatim  
✅ Hub nearest calculation dengan Haversine  
✅ Warehouse region validation  
✅ Strict shipment state machine  
✅ Monitoring & reporting dashboard  
✅ Full activity audit log  
✅ Coordinate-based tracking  
✅ Transaction-safe operations  

---

# 📌 Potensi Pengembangan

* 🔴 Real-time GPS tracking
* 📢 Push notification (Firebase/OneSignal)
* 🌐 REST API external integration
* 📄 Export laporan PDF / Excel
* 🌳 Multi-branch logistic network
* ⏱️ SLA monitoring
* 📱 Mobile app (Android/iOS)
* 🤖 AI-powered route optimization

---

# 🧪 Testing

Untuk testing, berikut beberapa data sample yang sudah ada di database:

**Sample Shipments:**
- AE-1772368955-600 (dalam proses)
- AE-1772369702-231 (DELIVERED)
- AE-1772370054-376 (dalam proses)

**Sample Users:**
- Admin (ID: 1) - Full access
- fadlan (ID: 7) - Kurir
- Alif (ID: 8) - Gudang
- Fauzan (ID: 10) - Driver
- Yusuf Ismail (ID: 17) - Driver

---

# 📄 License

This project is for educational purposes.

---

# 👨‍💻 Developer

Developed by: **Muhammad Azka Sa'adi Nabhan (KAA070209)**

---

# 🙏 Credits

* [Flask](https://flask.palletsprojects.com/) - Web Framework
* [Bootstrap](https://getbootstrap.com/) - CSS Framework
* [OpenStreetMap](https://www.openstreetmap.org/) - Geocoding
* [QRCode](https://github.com/segusoft/Python-QRCode-library) - QR Generation
