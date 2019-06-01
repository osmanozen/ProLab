-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 22 May 2019, 11:34:00
-- Sunucu sürümü: 10.1.38-MariaDB
-- PHP Sürümü: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `prolab23`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `bilesenler`
--

CREATE TABLE `bilesenler` (
  `bilesen_adi` varchar(64) NOT NULL,
  `bilesen_icerik` varchar(64) NOT NULL,
  `bilesen_miktar` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `bilesenler`
--

INSERT INTO `bilesenler` (`bilesen_adi`, `bilesen_icerik`, `bilesen_miktar`) VALUES
('Amonyak', 'N,H', '1,3'),
('Asetilen', 'C,H', '2,2'),
('Azot', 'N', '1'),
('Glukoz', 'C,H,O', '6,12,6'),
('Hidrojen', 'H', '1'),
('Hidroklorikasit', 'H,Cl', '1,1'),
('Kalsiyum', 'Ca', '1'),
('Karbon', 'C', '1'),
('Karbondioksit', 'C,O', '1,2'),
('Klor', 'Cl', '1'),
('Kükürt', 'S', '1'),
('Kükürtdioksit', 'S,O', '1,2'),
('Neon', 'Ne', '1'),
('Oksijen', 'O', '1'),
('Su', 'H,O', '2,1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hammaddeler`
--

CREATE TABLE `hammaddeler` (
  `firma_ismi` varchar(128) NOT NULL,
  `hammadde_id` int(11) NOT NULL,
  `hammadde_adi` varchar(16) NOT NULL,
  `hammadde_stok` int(11) NOT NULL,
  `hammadde_fiyat` float NOT NULL,
  `hammade_kargo` float NOT NULL,
  `hammadde_ut` varchar(16) NOT NULL,
  `hammadde_skt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `hammaddeler`
--

INSERT INTO `hammaddeler` (`firma_ismi`, `hammadde_id`, `hammadde_adi`, `hammadde_stok`, `hammadde_fiyat`, `hammade_kargo`, `hammadde_ut`, `hammadde_skt`) VALUES
('IST2', 1, 'Oksijen', 0, 100, 55.5, '26041997', 25),
('ANK1', 5, 'Hidrojen', 100, 10, 171, '26041997', 10),
('IST2', 6, 'Hidrojen', 0, 3, 55.5, '26041997', 25),
('IST2', 8, 'Azot', 0, 5, 55.5, '26041997', 25),
('IST2', 9, 'Oksijen', 0, 5, 55.5, '26041997', 25),
('BER1', 10, 'Hidrojen', 0, 5, 1809, '26041997', 25),
('IST2', 11, 'Karbon', 0, 3, 55.5, '26041997', 25);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `mesafeler`
--

CREATE TABLE `mesafeler` (
  `firma_sehir` varchar(128) NOT NULL,
  `firma_konum` varchar(128) NOT NULL,
  `firma_uzaklik` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `mesafeler`
--

INSERT INTO `mesafeler` (`firma_sehir`, `firma_konum`, `firma_uzaklik`) VALUES
('Ankara', 'Yurtici', 342),
('Berlin', 'Yurtdisi', 1809),
('Eskisehir', 'Yurtici', 214),
('Gaziantep', 'Yurtici', 1000),
('Istanbul', 'Yurtici', 111),
('Londra', 'Yurtdisi', 2582),
('Saraybosna', 'Yurtdisi', 1008);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `musteriler`
--

CREATE TABLE `musteriler` (
  `musteri_id` int(11) NOT NULL,
  `musteri_adi` varchar(128) NOT NULL,
  `musteri_adres` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `musteriler`
--

INSERT INTO `musteriler` (`musteri_id`, `musteri_adi`, `musteri_adres`) VALUES
(1, 'Osman', 'Yenişehir Mahallesi Alev Sok'),
(2, 'Tuğba', 'Yenişehir Mahallesi Arda Sok');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `siparisler`
--

CREATE TABLE `siparisler` (
  `siparis_musteriAdi` varchar(64) NOT NULL,
  `siparis_adi` varchar(64) NOT NULL,
  `siparis_miktar` int(11) NOT NULL,
  `siparis_alis` float NOT NULL,
  `siparis_satis` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `siparisler`
--

INSERT INTO `siparisler` (`siparis_musteriAdi`, `siparis_adi`, `siparis_miktar`, `siparis_alis`, `siparis_satis`) VALUES
('Osman', 'Glukoz', 5, 822, 987);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `stoktakiler`
--

CREATE TABLE `stoktakiler` (
  `stoktaki_id` int(11) NOT NULL,
  `stoktaki_urunStok` int(11) NOT NULL,
  `stoktaki_urunFiyat` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `stoktakiler`
--

INSERT INTO `stoktakiler` (`stoktaki_id`, `stoktaki_urunStok`, `stoktaki_urunFiyat`) VALUES
(6, 0, 3.555),
(10, 0, 23.09),
(11, 0, 3.555),
(8, 100, 5.555),
(9, 0, 5.555),
(1, 88, 100.555),
(11, 0, 30.75),
(6, 0, 7.625),
(11, 0, 12.25),
(6, 0, 12.25),
(6, 0, 12.25);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tedarikciler`
--

CREATE TABLE `tedarikciler` (
  `firma_id` int(11) NOT NULL,
  `firma_ismi` varchar(128) NOT NULL,
  `firma_sehir` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `tedarikciler`
--

INSERT INTO `tedarikciler` (`firma_id`, `firma_ismi`, `firma_sehir`) VALUES
(1, 'ANK1', 'Ankara'),
(3, 'ESK1', 'Eskisehir'),
(4, 'GAZ1', 'Gaziantep'),
(5, 'IST1', 'Istanbul'),
(6, 'IST2', 'Istanbul'),
(7, 'IST3', 'Istanbul'),
(8, 'LON1', 'Londra'),
(9, 'BER1', 'Berlin'),
(11, 'BER2', 'Berlin'),
(12, 'SB1', 'Saraybosna'),
(13, 'OS1', 'Ankara'),
(14, 'BEGUM1', 'Londra'),
(15, 'OS2', 'Berlin');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urunler`
--

CREATE TABLE `urunler` (
  `urun_id` int(11) NOT NULL,
  `urun_adi` varchar(16) NOT NULL,
  `urun_stok` int(11) NOT NULL,
  `urun_isciMaliyeti` float NOT NULL,
  `urun_maliyeti` float NOT NULL,
  `urun_satisFiyati` float NOT NULL,
  `urun_UT` varchar(16) NOT NULL,
  `urun_SKT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `urunler`
--

INSERT INTO `urunler` (`urun_id`, `urun_adi`, `urun_stok`, `urun_isciMaliyeti`, `urun_maliyeti`, `urun_satisFiyati`, `urun_UT`, `urun_SKT`) VALUES
(1, 'Glukoz', 16, 16, 3353, 4042, '11111111', 5),
(2, 'Su', 4, 4, 206, 252, '11111111', 5),
(3, 'Glukoz', 1, 1, 769, 924, '11111111', 5),
(4, 'Glukoz', 1, 1, 822, 987, '11111111', 5);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `bilesenler`
--
ALTER TABLE `bilesenler`
  ADD PRIMARY KEY (`bilesen_adi`);

--
-- Tablo için indeksler `hammaddeler`
--
ALTER TABLE `hammaddeler`
  ADD PRIMARY KEY (`hammadde_id`),
  ADD KEY `firma_id` (`firma_ismi`),
  ADD KEY `hammadde_adi` (`hammadde_adi`);

--
-- Tablo için indeksler `mesafeler`
--
ALTER TABLE `mesafeler`
  ADD PRIMARY KEY (`firma_sehir`);

--
-- Tablo için indeksler `musteriler`
--
ALTER TABLE `musteriler`
  ADD PRIMARY KEY (`musteri_id`),
  ADD UNIQUE KEY `musteri_adi` (`musteri_adi`);

--
-- Tablo için indeksler `siparisler`
--
ALTER TABLE `siparisler`
  ADD KEY `siparis_musteriID` (`siparis_musteriAdi`),
  ADD KEY `siparis_adi` (`siparis_adi`);

--
-- Tablo için indeksler `stoktakiler`
--
ALTER TABLE `stoktakiler`
  ADD KEY `stoktaki_id` (`stoktaki_id`);

--
-- Tablo için indeksler `tedarikciler`
--
ALTER TABLE `tedarikciler`
  ADD PRIMARY KEY (`firma_id`),
  ADD UNIQUE KEY `firma_ismi` (`firma_ismi`),
  ADD KEY `firma_sehir` (`firma_sehir`);

--
-- Tablo için indeksler `urunler`
--
ALTER TABLE `urunler`
  ADD PRIMARY KEY (`urun_id`),
  ADD KEY `urun_adi` (`urun_adi`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `hammaddeler`
--
ALTER TABLE `hammaddeler`
  MODIFY `hammadde_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Tablo için AUTO_INCREMENT değeri `musteriler`
--
ALTER TABLE `musteriler`
  MODIFY `musteri_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `tedarikciler`
--
ALTER TABLE `tedarikciler`
  MODIFY `firma_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Tablo için AUTO_INCREMENT değeri `urunler`
--
ALTER TABLE `urunler`
  MODIFY `urun_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `hammaddeler`
--
ALTER TABLE `hammaddeler`
  ADD CONSTRAINT `hammaddeler_ibfk_1` FOREIGN KEY (`firma_ismi`) REFERENCES `tedarikciler` (`firma_ismi`),
  ADD CONSTRAINT `hammaddeler_ibfk_2` FOREIGN KEY (`hammadde_adi`) REFERENCES `bilesenler` (`bilesen_adi`);

--
-- Tablo kısıtlamaları `siparisler`
--
ALTER TABLE `siparisler`
  ADD CONSTRAINT `siparisler_ibfk_2` FOREIGN KEY (`siparis_adi`) REFERENCES `bilesenler` (`bilesen_adi`),
  ADD CONSTRAINT `siparisler_ibfk_3` FOREIGN KEY (`siparis_musteriAdi`) REFERENCES `musteriler` (`musteri_adi`);

--
-- Tablo kısıtlamaları `stoktakiler`
--
ALTER TABLE `stoktakiler`
  ADD CONSTRAINT `stoktakiler_ibfk_1` FOREIGN KEY (`stoktaki_id`) REFERENCES `hammaddeler` (`hammadde_id`);

--
-- Tablo kısıtlamaları `tedarikciler`
--
ALTER TABLE `tedarikciler`
  ADD CONSTRAINT `tedarikciler_ibfk_1` FOREIGN KEY (`firma_sehir`) REFERENCES `mesafeler` (`firma_sehir`);

--
-- Tablo kısıtlamaları `urunler`
--
ALTER TABLE `urunler`
  ADD CONSTRAINT `urunler_ibfk_1` FOREIGN KEY (`urun_adi`) REFERENCES `bilesenler` (`bilesen_adi`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
