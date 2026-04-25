# 🛒 E-Ticaret Satış Verileri Temizleme ve SQL Analizi

Bu proje, veri analizi süreçlerindeki "Veri Temizleme (Data Cleaning)" ve "İlişkisel Veritabanı Sorgulama (SQL)" yetkinliklerini göstermek amacıyla hazırlanmıştır. 

## 🛠️ Kullanılan Teknolojiler
* **Python:** Pandas, NumPy (Veri manipülasyonu ve temizleme)
* **Araçlar:** Jupyter Notebook
* **Veritabanı:** MS SQL Server (Veri analizi ve raporlama sorguları)

## 📝 Proje Adımları

1. **Kirli Veri Üretimi:** Python kullanılarak içinde eksik (NULL) değerler, yanlış tarih formatları ve mantıksız değerler (negatif fiyatlar vb.) barındıran 1000 satırlık sentetik bir e-ticaret veri seti oluşturulmuştur.
2. **Veri Temizleme (Data Cleaning):** Jupyter Notebook ortamında `Pandas` kullanılarak veriler incelenmiş, eksik veriler doldurulmuş veya ayıklanmış, metin/tarih formatları standardize edilmiş ve veri tutarlılığı sağlanmıştır.
3. **SQL Analizi:** Temizlenen veriler MS SQL Server ortamına aktarılmış; `SELECT`, `WHERE`, `GROUP BY`, `ORDER BY` ve toplama fonksiyonları (SUM, COUNT) kullanılarak iş birimlerinin ihtiyaçlarına yönelik ciro, iptal ve kategori analizleri yapılmıştır.

## 📂 Dosya Yapısı
* `veri_temizleme_projesi.ipynb` : Veri üretim ve Pandas temizleme adımlarının bulunduğu Python dosyası.
* `satis_verileri_kirli.csv` : Temizleme öncesi ham veri.
* `satis_verileri_temiz.csv` : Analize hazır, temizlenmiş veri.
* `proje1_sorgulari.sql` : MS SQL Server üzerinde çalıştırılan analiz raporlama sorguları.
