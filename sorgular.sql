-- =====================================================================================
-- E-TİCARET SATIŞ VERİLERİ SQL ANALİZ RAPORU
-- Bu dosya, temizlenmiş veri seti üzerinden iş birimlerinin (yönetimin) ihtiyaç 
-- duyabileceği temel raporlama sorgularını içermektedir.
-- Kullanılan Yapılar: SELECT, WHERE, GROUP BY, ORDER BY, Aggregation(SUM, COUNT)
-- =====================================================================================

-- 1. FİLTRELEME (WHERE KULLANIMI)
-- Soru: Yalnızca 'İstanbul' bölgesindeki başarılı (Tamamlandı) siparişleri listeleyin.
SELECT 
    Siparis_ID, 
    Musteri_ID, 
    Urun_Kategorisi, 
    (Fiyat * Adet) AS Toplam_Siparis_Tutari
FROM satis_verileri_temiz
WHERE Sehir = 'İstanbul' AND Durum = 'Tamamlandı';


-- 2. GRUPLAMA VE TOPLAMA
-- Soru: Hangi ürün kategorisinden toplam kaç adet satılmış ve ne kadar ciro elde edilmiştir?
SELECT 
    Urun_Kategorisi,
    SUM(Adet) AS Toplam_Satilan_Adet,
    SUM(Fiyat * Adet) AS Kategori_Cirosu
FROM satis_verileri_temiz
WHERE Durum = 'Tamamlandı' -- İptal edilenleri ciroya katmıyoruz
GROUP BY Urun_Kategorisi
ORDER BY Kategori_Cirosu DESC;


-- 3. SIRALAMA VE LİMİTLEME
-- Soru: Şirkete tek seferde en çok para kazandıran (en yüksek cirolu) ilk 5 siparişi bulun.
SELECT TOP 5 
    Siparis_ID, 
    Musteri_ID, 
    Sehir, 
    (Fiyat * Adet) AS Siparis_Cirosu
FROM satis_verileri_temiz
WHERE Durum = 'Tamamlandı'
ORDER BY Siparis_Cirosu DESC;


-- 4. PROBLEMLİ VERİLERİN ANALİZİ
-- Soru: İptal edilen siparişlerin şehirlere göre dağılımı nasıldır? Hangi şehirde sorun yaşıyoruz?
SELECT 
    Sehir,
    COUNT(Siparis_ID) AS Iptal_Sayisi
FROM satis_verileri_temiz
WHERE Durum = 'İptal Edildi'
GROUP BY Sehir
ORDER BY Iptal_Sayisi DESC;