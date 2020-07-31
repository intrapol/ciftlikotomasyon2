SET NAMES utf8;DROP TABLE IF EXISTS anliksiparis;

CREATE TABLE `anliksiparis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `masaid` int(11) NOT NULL,
  `garsonid` int(11) NOT NULL,
  `urunid` int(11) NOT NULL,
  `urunad` varchar(222) COLLATE utf8_turkish_ci NOT NULL,
  `urunfiyat` float NOT NULL,
  `adet` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=792 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

INSERT INTO anliksiparis VALUES("258","0","1","1","a-Tereyagli Alabalik","25","7");
INSERT INTO anliksiparis VALUES("774","-1","1","48","a-Balik-Pisirme","35","6");
INSERT INTO anliksiparis VALUES("773","-1","1","8","h-Sac Tava","30","1");



DROP TABLE IF EXISTS doluluk;

CREATE TABLE `doluluk` (
  `id` int(11) NOT NULL DEFAULT 1,
  `bos` int(11) NOT NULL DEFAULT 0,
  `dolu` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

INSERT INTO doluluk VALUES("1","28","1");



DROP TABLE IF EXISTS garson;

CREATE TABLE `garson` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ad` varchar(200) COLLATE utf8_turkish_ci NOT NULL,
  `sifre` int(11) NOT NULL,
  `durum` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

INSERT INTO garson VALUES("1","serdar","123","1");
INSERT INTO garson VALUES("2","burak","123","0");



DROP TABLE IF EXISTS gecicigarson;

CREATE TABLE `gecicigarson` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `garsonid` int(11) NOT NULL,
  `garsonad` varchar(200) COLLATE utf8_turkish_ci NOT NULL,
  `adet` int(11) NOT NULL,
  `hasilat` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;




DROP TABLE IF EXISTS gecicimasa;

CREATE TABLE `gecicimasa` (
  `id` int(11) NOT NULL,
  `masaid` int(11) NOT NULL,
  `masaad` varchar(200) COLLATE utf8_turkish_ci NOT NULL,
  `hasilat` float NOT NULL,
  `adet` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

INSERT INTO gecicimasa VALUES("0","4","Ç-4","170.5","11");
INSERT INTO gecicimasa VALUES("0","6","Ç-6","397","17");
INSERT INTO gecicimasa VALUES("0","16","LÖ-2","25","1");
INSERT INTO gecicimasa VALUES("0","5","Ç-5","85","5");
INSERT INTO gecicimasa VALUES("0","10","Araba","102","8");
INSERT INTO gecicimasa VALUES("0","3","Ç-3","125","8");
INSERT INTO gecicimasa VALUES("0","1","Ç-1","200","8");
INSERT INTO gecicimasa VALUES("0","7","Ç-7","158","8");
INSERT INTO gecicimasa VALUES("0","0","KG-Balık","279","1");



DROP TABLE IF EXISTS geciciurun;

CREATE TABLE `geciciurun` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `urunid` int(11) NOT NULL,
  `urunad` varchar(200) COLLATE utf8_turkish_ci NOT NULL,
  `hasilat` float NOT NULL,
  `adet` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

INSERT INTO geciciurun VALUES("1","53","Top","7","1");
INSERT INTO geciciurun VALUES("2","23","j-zero","5","1");
INSERT INTO geciciurun VALUES("3","51","l- Yarım Köfte","12.5","1");
INSERT INTO geciciurun VALUES("4","1","a-Tereyagli Alabalik","625","25");
INSERT INTO geciciurun VALUES("5","4","d-Sebzeli Alabalik","140","5");
INSERT INTO geciciurun VALUES("6","7","g-Kasarli Alabalik","28","1");
INSERT INTO geciciurun VALUES("7","14","a-Kola","35","7");
INSERT INTO geciciurun VALUES("8","3","c-Kasarli Mantar","225","9");
INSERT INTO geciciurun VALUES("9","27","m- Acili Salgam","10","2");
INSERT INTO geciciurun VALUES("10","12","2-Kunefe","30","3");
INSERT INTO geciciurun VALUES("11","37","r-su","2","2");
INSERT INTO geciciurun VALUES("12","17","d-Fanta","10","2");
INSERT INTO geciciurun VALUES("13","43","k-Tava Alabalik","50","2");
INSERT INTO geciciurun VALUES("14","2","b-Izgara Kofte","75","3");
INSERT INTO geciciurun VALUES("15","30","n-Sade Soda","3","1");
INSERT INTO geciciurun VALUES("16","20","g- Gazoz","5","1");
INSERT INTO geciciurun VALUES("17","0","KG Balık","279","1");



DROP TABLE IF EXISTS gider;

CREATE TABLE `gider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ad` varchar(200) COLLATE utf8_turkish_ci NOT NULL,
  `fiyat` float NOT NULL,
  `tarih` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

INSERT INTO gider VALUES("1","tüp","280","2020-06-30");
INSERT INTO gider VALUES("2","sebze","25","2020-06-30");
INSERT INTO gider VALUES("3","eksik hesap","1","2020-06-30");
INSERT INTO gider VALUES("4","balik","220","2020-06-30");
INSERT INTO gider VALUES("5","kasar","60","2020-06-30");
INSERT INTO gider VALUES("6","et","200","2020-06-30");
INSERT INTO gider VALUES("7","mantar","220","2020-06-30");
INSERT INTO gider VALUES("8","dede eksik çay parası","5","2020-07-01");
INSERT INTO gider VALUES("9","dede eksik tahin helva","10","2020-07-01");
INSERT INTO gider VALUES("10","helva","250","2020-07-01");
INSERT INTO gider VALUES("11","balık","330","2020-07-01");
INSERT INTO gider VALUES("12","mantar","60","2020-07-01");
INSERT INTO gider VALUES("13","ekmek","60","2020-07-01");
INSERT INTO gider VALUES("14","eksik","10","2020-07-01");
INSERT INTO gider VALUES("15","yemek gideri","105","2020-07-01");
INSERT INTO gider VALUES("16","yanlıs hesap","75","2020-07-02");
INSERT INTO gider VALUES("17","yanlıs hesap","150","2020-07-02");
INSERT INTO gider VALUES("18","sebze","105","2020-07-02");
INSERT INTO gider VALUES("19","lokanta balik","370","2020-07-02");
INSERT INTO gider VALUES("20","kaşar","60","2020-07-02");
INSERT INTO gider VALUES("21","balık","2376","2020-07-03");
INSERT INTO gider VALUES("22","elektirik parası","63.71","2020-07-03");
INSERT INTO gider VALUES("23","makine arızası","30","2020-07-03");
INSERT INTO gider VALUES("24","parça alımı","43","2020-07-03");
INSERT INTO gider VALUES("25","cips","500","2020-07-03");
INSERT INTO gider VALUES("26","cips","180","2020-07-03");
INSERT INTO gider VALUES("27","sebze","180","2020-07-04");
INSERT INTO gider VALUES("28","kahvaltılık","43","2020-07-06");
INSERT INTO gider VALUES("29","sebze","250","2020-07-06");
INSERT INTO gider VALUES("30","ekmek","400","2020-07-06");
INSERT INTO gider VALUES("31","kaşar","300","2020-07-06");
INSERT INTO gider VALUES("32","et","400","2020-07-06");
INSERT INTO gider VALUES("33","mutfak gereçleri","426","2020-07-08");
INSERT INTO gider VALUES("34","soğan","60","2020-07-08");
INSERT INTO gider VALUES("35","lokanta balık","1100","2020-07-08");
INSERT INTO gider VALUES("36","sebze","200","2020-07-09");
INSERT INTO gider VALUES("37","kola","1890","2020-07-10");
INSERT INTO gider VALUES("38","lokanta balık","150","2020-07-10");
INSERT INTO gider VALUES("39","kaşar","300","2020-07-10");
INSERT INTO gider VALUES("40","sebze","300","2020-07-11");
INSERT INTO gider VALUES("41","kaşar","240","2020-07-11");
INSERT INTO gider VALUES("42","lokanta balık","880","2020-07-11");
INSERT INTO gider VALUES("43","lokanta balık","1340","2020-07-13");
INSERT INTO gider VALUES("44","kaşar","168","2020-07-13");
INSERT INTO gider VALUES("45","sebze","650","2020-07-13");
INSERT INTO gider VALUES("46","köfte","450","2020-07-13");



DROP TABLE IF EXISTS kategori;

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ad` varchar(200) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

INSERT INTO kategori VALUES("1","Yemekler");
INSERT INTO kategori VALUES("2","Tatlılar");
INSERT INTO kategori VALUES("3","İçecekler");
INSERT INTO kategori VALUES("4","Çay");
INSERT INTO kategori VALUES("5","Dondurma");
INSERT INTO kategori VALUES("-1","MS-KG-Balik");



DROP TABLE IF EXISTS masalar;

CREATE TABLE `masalar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ad` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `durum` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

INSERT INTO masalar VALUES("0","KG-Balık","1");
INSERT INTO masalar VALUES("-1","Pisirme-Ucreti","1");
INSERT INTO masalar VALUES("1","Ç-1","0");
INSERT INTO masalar VALUES("2","Ç-2","0");
INSERT INTO masalar VALUES("3","Ç-3","0");
INSERT INTO masalar VALUES("4","Ç-4","0");
INSERT INTO masalar VALUES("5","Ç-5","0");
INSERT INTO masalar VALUES("6","Ç-6","0");
INSERT INTO masalar VALUES("7","Ç-7","0");
INSERT INTO masalar VALUES("8","Ç-8","0");
INSERT INTO masalar VALUES("9","Ç-9","0");
INSERT INTO masalar VALUES("10","Araba","0");
INSERT INTO masalar VALUES("11","YÇ-1","0");
INSERT INTO masalar VALUES("12","YÇ-2","0");
INSERT INTO masalar VALUES("13","YÇ-3","0");
INSERT INTO masalar VALUES("14","YÇ-4","0");
INSERT INTO masalar VALUES("15","LÖ-1","0");
INSERT INTO masalar VALUES("16","LÖ-2","0");
INSERT INTO masalar VALUES("17","LÖ-3","0");
INSERT INTO masalar VALUES("18","Lİ-1","0");
INSERT INTO masalar VALUES("19","Lİ-2","0");
INSERT INTO masalar VALUES("20","Lİ-3","0");
INSERT INTO masalar VALUES("21","Lİ-4","0");
INSERT INTO masalar VALUES("22","Lİ-5","0");
INSERT INTO masalar VALUES("23","Lİ-6","0");
INSERT INTO masalar VALUES("24","Demir-Ç-1","0");
INSERT INTO masalar VALUES("25","Karşı-1","0");
INSERT INTO masalar VALUES("26","Karşı-2","0");
INSERT INTO masalar VALUES("27","Karşı-3","0");
INSERT INTO masalar VALUES("28","Karşı-4","0");
INSERT INTO masalar VALUES("29","Kare-Ç","0");



DROP TABLE IF EXISTS mutfak;

CREATE TABLE `mutfak` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `masaid` int(11) NOT NULL,
  `urunid` int(11) NOT NULL,
  `urunad` varchar(200) COLLATE utf8_turkish_ci NOT NULL,
  `adet` int(11) NOT NULL,
  `saat` int(11) NOT NULL,
  `dakika` int(11) NOT NULL,
  `durum` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=906 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;




DROP TABLE IF EXISTS rapor;

CREATE TABLE `rapor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `masaid` int(11) NOT NULL,
  `garsonid` int(11) NOT NULL,
  `urunid` int(11) NOT NULL,
  `urunad` varchar(222) COLLATE utf8_turkish_ci NOT NULL,
  `urunfiyat` float NOT NULL,
  `adet` int(11) NOT NULL,
  `tarih` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1005 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

INSERT INTO rapor VALUES("1","4","1","1","a-Tereyagli Alabalik","25","3","2020-06-30");
INSERT INTO rapor VALUES("2","4","1","3","c-Kasarli Mantar","25","1","2020-06-30");
INSERT INTO rapor VALUES("3","0","0","0","KG Balık","220","1","2020-06-30");
INSERT INTO rapor VALUES("4","0","0","0","KG Balık","200","1","2020-06-30");
INSERT INTO rapor VALUES("5","0","0","0","KG Balık","40","1","2020-06-30");
INSERT INTO rapor VALUES("6","0","0","0","KG Balık","21","1","2020-06-30");
INSERT INTO rapor VALUES("7","7","1","1","a-Tereyagli Alabalik","25","4","2020-06-30");
INSERT INTO rapor VALUES("8","7","1","3","c-Kasarli Mantar","25","2","2020-06-30");
INSERT INTO rapor VALUES("9","7","1","27","m- Acili Salgam","5","2","2020-06-30");
INSERT INTO rapor VALUES("10","6","1","1","a-Tereyagli Alabalik","25","4","2020-06-30");
INSERT INTO rapor VALUES("11","6","1","3","c-Kasarli Mantar","25","4","2020-06-30");
INSERT INTO rapor VALUES("12","6","1","14","a-Kola","5","1","2020-06-30");
INSERT INTO rapor VALUES("13","3","1","7","g-Kasarli Alabalik","28","3","2020-06-30");
INSERT INTO rapor VALUES("14","3","1","17","d-Fanta","5","1","2020-06-30");
INSERT INTO rapor VALUES("15","3","1","14","a-Kola","5","1","2020-06-30");
INSERT INTO rapor VALUES("16","3","1","11","1-Firinda Helva ","20","1","2020-06-30");
INSERT INTO rapor VALUES("17","0","0","0","KG Balık","70","1","2020-06-30");
INSERT INTO rapor VALUES("18","4","1","33","a-Bardak Cay","2","3","2020-06-30");
INSERT INTO rapor VALUES("19","4","1","1","a-Tereyagli Alabalik","25","5","2020-06-30");
INSERT INTO rapor VALUES("20","4","1","3","c-Kasarli Mantar","25","2","2020-06-30");
INSERT INTO rapor VALUES("21","1","1","23","j-zero","5","1","2020-06-30");
INSERT INTO rapor VALUES("22","1","1","14","a-Kola","5","1","2020-06-30");
INSERT INTO rapor VALUES("23","1","1","3","c-Kasarli Mantar","25","2","2020-06-30");
INSERT INTO rapor VALUES("24","0","0","0","KG Balık","75","1","2020-06-30");
INSERT INTO rapor VALUES("25","-1","0","-1","Pişirme Ucreti","30","1","2020-06-30");
INSERT INTO rapor VALUES("26","0","0","0","KG Balık","30","1","2020-06-30");
INSERT INTO rapor VALUES("27","-1","0","-1","Pişirme Ucreti","12","1","2020-06-30");
INSERT INTO rapor VALUES("28","0","0","0","KG Balık","35","1","2020-06-30");
INSERT INTO rapor VALUES("29","0","0","0","KG Balık","25","1","2020-06-30");
INSERT INTO rapor VALUES("30","3","1","3","c-Kasarli Mantar","25","2","2020-06-30");
INSERT INTO rapor VALUES("31","3","1","27","m- Acili Salgam","5","1","2020-06-30");
INSERT INTO rapor VALUES("32","3","1","1","a-Tereyagli Alabalik","25","5","2020-06-30");
INSERT INTO rapor VALUES("33","3","1","7","g-Kasarli Alabalik","28","1","2020-06-30");
INSERT INTO rapor VALUES("34","6","1","1","a-Tereyagli Alabalik","25","3","2020-06-30");
INSERT INTO rapor VALUES("35","6","1","3","c-Kasarli Mantar","25","1","2020-06-30");
INSERT INTO rapor VALUES("36","6","1","14","a-Kola","5","2","2020-06-30");
INSERT INTO rapor VALUES("37","4","1","1","a-Tereyagli Alabalik","25","2","2020-06-30");
INSERT INTO rapor VALUES("38","13","1","2","b-Izgara Kofte","25","2","2020-06-30");
INSERT INTO rapor VALUES("39","13","1","3","c-Kasarli Mantar","25","2","2020-06-30");
INSERT INTO rapor VALUES("40","13","1","11","1-Firinda Helva ","20","2","2020-06-30");
INSERT INTO rapor VALUES("41","0","0","0","KG Balık","100","1","2020-06-30");
INSERT INTO rapor VALUES("42","-1","0","-1","Pişirme Ucreti","40","1","2020-06-30");
INSERT INTO rapor VALUES("43","10","1","1","a-Tereyagli Alabalik","25","2","2020-06-30");
INSERT INTO rapor VALUES("44","10","1","27","m- Acili Salgam","5","2","2020-06-30");
INSERT INTO rapor VALUES("45","10","1","3","c-Kasarli Mantar","25","2","2020-06-30");
INSERT INTO rapor VALUES("46","10","1","37","r-su","1","1","2020-06-30");
INSERT INTO rapor VALUES("47","2","1","3","c-Kasarli Mantar","25","1","2020-06-30");
INSERT INTO rapor VALUES("48","2","1","1","a-Tereyagli Alabalik","25","3","2020-06-30");
INSERT INTO rapor VALUES("49","2","1","11","1-Firinda Helva ","20","1","2020-06-30");
INSERT INTO rapor VALUES("50","2","1","25","k-MS Kays?","5","1","2020-06-30");
INSERT INTO rapor VALUES("51","7","1","14","a-Kola","5","2","2020-06-30");
INSERT INTO rapor VALUES("52","7","1","8","h-Sac Tava","30","2","2020-06-30");
INSERT INTO rapor VALUES("53","7","1","12","2-Kunefe","10","2","2020-06-30");
INSERT INTO rapor VALUES("54","0","0","0","KG Balık","50","1","2020-07-01");
INSERT INTO rapor VALUES("55","10","1","14","a-Kola","5","2","2020-07-01");
INSERT INTO rapor VALUES("56","10","1","30","n-Sade Soda","3","1","2020-07-01");
INSERT INTO rapor VALUES("57","10","1","40","f-Roko","3","9","2020-07-01");
INSERT INTO rapor VALUES("58","0","0","0","KG Balık","25","1","2020-07-01");
INSERT INTO rapor VALUES("59","11","1","44","i-Cips","5","2","2020-07-01");
INSERT INTO rapor VALUES("60","6","1","1","a-Tereyagli Alabalik","25","4","2020-07-01");
INSERT INTO rapor VALUES("61","6","1","3","c-Kasarli Mantar","25","1","2020-07-01");
INSERT INTO rapor VALUES("62","6","1","14","a-Kola","5","3","2020-07-01");
INSERT INTO rapor VALUES("63","6","1","17","d-Fanta","5","1","2020-07-01");
INSERT INTO rapor VALUES("64","4","1","1","a-Tereyagli Alabalik","25","4","2020-07-01");
INSERT INTO rapor VALUES("65","4","1","3","c-Kasarli Mantar","25","1","2020-07-01");
INSERT INTO rapor VALUES("66","4","1","30","n-Sade Soda","3","1","2020-07-01");
INSERT INTO rapor VALUES("67","2","1","1","a-Tereyagli Alabalik","25","2","2020-07-01");
INSERT INTO rapor VALUES("68","2","1","3","c-Kasarli Mantar","25","1","2020-07-01");
INSERT INTO rapor VALUES("69","3","1","35","c-Orta Cay","25","1","2020-07-01");
INSERT INTO rapor VALUES("70","3","1","11","1-Firinda Helva ","20","1","2020-07-01");
INSERT INTO rapor VALUES("71","0","0","0","KG Balık","90","1","2020-07-01");
INSERT INTO rapor VALUES("72","-1","0","-1","Pişirme Ucreti","36","1","2020-07-01");
INSERT INTO rapor VALUES("73","0","0","0","KG Balık","100","1","2020-07-01");
INSERT INTO rapor VALUES("74","-1","0","-1","Pişirme Ucreti","50","1","2020-07-01");
INSERT INTO rapor VALUES("75","0","0","0","KG Balık","53","1","2020-07-01");
INSERT INTO rapor VALUES("76","6","1","17","d-Fanta","5","1","2020-07-01");
INSERT INTO rapor VALUES("77","6","1","1","a-Tereyagli Alabalik","25","2","2020-07-01");
INSERT INTO rapor VALUES("78","6","1","14","a-Kola","5","1","2020-07-01");
INSERT INTO rapor VALUES("79","6","1","3","c-Kasarli Mantar","25","1","2020-07-01");
INSERT INTO rapor VALUES("80","4","1","33","a-Bardak Cay","2","4","2020-07-01");
INSERT INTO rapor VALUES("81","4","1","49","s- Ayran","3","4","2020-07-01");
INSERT INTO rapor VALUES("82","4","1","1","a-Tereyagli Alabalik","25","1","2020-07-01");
INSERT INTO rapor VALUES("83","4","1","3","c-Kasarli Mantar","25","2","2020-07-01");
INSERT INTO rapor VALUES("84","4","1","8","h-Sac Tava","30","3","2020-07-01");
INSERT INTO rapor VALUES("85","4","1","2","b-Izgara Kofte","25","1","2020-07-01");
INSERT INTO rapor VALUES("86","4","1","50","t-Sc 1lt lim sef","8","1","2020-07-01");
INSERT INTO rapor VALUES("87","4","1","38","d-Fatasia","5.5","4","2020-07-01");
INSERT INTO rapor VALUES("88","25","1","48","Balik-Pisirme","35","2","2020-07-01");
INSERT INTO rapor VALUES("89","5","1","1","a-Tereyagli Alabalik","25","3","2020-07-01");
INSERT INTO rapor VALUES("90","5","1","3","c-Kasarli Mantar","25","2","2020-07-01");
INSERT INTO rapor VALUES("91","10","1","17","d-Fanta","5","1","2020-07-01");
INSERT INTO rapor VALUES("92","10","1","27","m- Acili Salgam","5","1","2020-07-01");
INSERT INTO rapor VALUES("93","10","1","1","a-Tereyagli Alabalik","25","5","2020-07-01");
INSERT INTO rapor VALUES("94","10","1","35","c-Orta Cay","25","1","2020-07-01");
INSERT INTO rapor VALUES("95","10","1","7","g-Kasarli Alabalik","28","1","2020-07-01");
INSERT INTO rapor VALUES("96","10","1","15","b-Ms Karisik","5","1","2020-07-01");
INSERT INTO rapor VALUES("97","10","1","11","1-Firinda Helva ","20","1","2020-07-01");
INSERT INTO rapor VALUES("98","3","1","1","a-Tereyagli Alabalik","25","5","2020-07-01");
INSERT INTO rapor VALUES("99","3","1","2","b-Izgara Kofte","25","1","2020-07-01");
INSERT INTO rapor VALUES("100","3","1","14","a-Kola","5","2","2020-07-01");
INSERT INTO rapor VALUES("101","3","1","49","s- Ayran","3","1","2020-07-01");
INSERT INTO rapor VALUES("102","25","1","48","Balik-Pisirme","35","2","2020-07-01");
INSERT INTO rapor VALUES("103","25","1","3","c-Kasarli Mantar","25","1","2020-07-01");
INSERT INTO rapor VALUES("104","25","1","12","2-Kunefe","10","1","2020-07-01");
INSERT INTO rapor VALUES("105","6","1","42","h-Matrax","1.5","1","2020-07-01");
INSERT INTO rapor VALUES("106","6","1","14","a-Kola","5","2","2020-07-01");
INSERT INTO rapor VALUES("107","6","1","17","d-Fanta","5","3","2020-07-01");
INSERT INTO rapor VALUES("108","6","1","3","c-Kasarli Mantar","25","3","2020-07-01");
INSERT INTO rapor VALUES("109","6","1","1","a-Tereyagli Alabalik","25","7","2020-07-01");
INSERT INTO rapor VALUES("110","3","1","1","a-Tereyagli Alabalik","25","2","2020-07-01");
INSERT INTO rapor VALUES("111","3","1","14","a-Kola","5","2","2020-07-01");
INSERT INTO rapor VALUES("112","5","1","35","c-Orta Cay","25","1","2020-07-01");
INSERT INTO rapor VALUES("113","5","1","3","c-Kasarli Mantar","25","2","2020-07-01");
INSERT INTO rapor VALUES("114","5","1","4","d-Sebzeli Alabalik","28","1","2020-07-01");
INSERT INTO rapor VALUES("115","5","1","1","a-Tereyagli Alabalik","25","3","2020-07-01");
INSERT INTO rapor VALUES("116","4","1","3","c-Kasarli Mantar","25","2","2020-07-01");
INSERT INTO rapor VALUES("117","4","1","14","a-Kola","5","2","2020-07-01");
INSERT INTO rapor VALUES("118","4","1","1","a-Tereyagli Alabalik","25","3","2020-07-01");
INSERT INTO rapor VALUES("119","1","1","2","b-Izgara Kofte","25","2","2020-07-01");
INSERT INTO rapor VALUES("120","1","1","14","a-Kola","5","1","2020-07-01");
INSERT INTO rapor VALUES("121","1","1","16","c-SC Seftali","5","1","2020-07-01");
INSERT INTO rapor VALUES("122","0","0","0","KG Balık","140","1","2020-07-01");
INSERT INTO rapor VALUES("123","0","0","0","KG Balık","500","1","2020-07-01");
INSERT INTO rapor VALUES("124","5","1","2","b-Izgara Kofte","25","2","2020-07-02");
INSERT INTO rapor VALUES("125","5","1","1","a-Tereyagli Alabalik","25","2","2020-07-02");
INSERT INTO rapor VALUES("126","1","1","3","c-Kasarli Mantar","25","2","2020-07-02");
INSERT INTO rapor VALUES("127","1","1","1","a-Tereyagli Alabalik","25","4","2020-07-02");
INSERT INTO rapor VALUES("128","3","1","47","Balik","25","5","2020-07-02");
INSERT INTO rapor VALUES("129","3","1","1","a-Tereyagli Alabalik","25","3","2020-07-02");
INSERT INTO rapor VALUES("130","3","1","3","c-Kasarli Mantar","25","1","2020-07-02");
INSERT INTO rapor VALUES("131","3","1","14","a-Kola","5","2","2020-07-02");
INSERT INTO rapor VALUES("132","1","1","1","a-Tereyagli Alabalik","25","4","2020-07-02");
INSERT INTO rapor VALUES("133","1","1","3","c-Kasarli Mantar","25","2","2020-07-02");
INSERT INTO rapor VALUES("134","5","1","3","c-Kasarli Mantar","25","1","2020-07-02");
INSERT INTO rapor VALUES("135","5","1","1","a-Tereyagli Alabalik","25","2","2020-07-02");
INSERT INTO rapor VALUES("136","5","1","3","c-Kasarli Mantar","25","1","2020-07-02");
INSERT INTO rapor VALUES("137","5","1","1","a-Tereyagli Alabalik","25","2","2020-07-02");
INSERT INTO rapor VALUES("138","0","0","0","KG Balık","58","1","2020-07-02");
INSERT INTO rapor VALUES("139","0","0","0","KG Balık","35","1","2020-07-02");
INSERT INTO rapor VALUES("140","0","0","0","KG Balık","45","1","2020-07-02");
INSERT INTO rapor VALUES("141","3","1","3","c-Kasarli Mantar","25","1","2020-07-02");
INSERT INTO rapor VALUES("142","3","1","1","a-Tereyagli Alabalik","25","6","2020-07-02");
INSERT INTO rapor VALUES("143","5","1","3","c-Kasarli Mantar","25","1","2020-07-02");
INSERT INTO rapor VALUES("144","5","1","1","a-Tereyagli Alabalik","25","2","2020-07-02");
INSERT INTO rapor VALUES("145","7","1","1","a-Tereyagli Alabalik","25","3","2020-07-02");
INSERT INTO rapor VALUES("146","7","1","2","b-Izgara Kofte","25","1","2020-07-02");
INSERT INTO rapor VALUES("147","7","1","3","c-Kasarli Mantar","25","2","2020-07-02");
INSERT INTO rapor VALUES("148","7","1","17","d-Fanta","5","1","2020-07-02");
INSERT INTO rapor VALUES("149","7","1","24","a-Bravo","6.5","2","2020-07-02");
INSERT INTO rapor VALUES("150","7","1","34","b-Kucuk Cay","15","1","2020-07-02");
INSERT INTO rapor VALUES("151","4","1","3","c-Kasarli Mantar","25","2","2020-07-02");
INSERT INTO rapor VALUES("152","4","1","14","a-Kola","5","2","2020-07-02");
INSERT INTO rapor VALUES("153","4","1","17","d-Fanta","5","1","2020-07-02");
INSERT INTO rapor VALUES("154","4","1","1","a-Tereyagli Alabalik","25","3","2020-07-02");
INSERT INTO rapor VALUES("155","6","1","34","b-Kucuk Cay","15","1","2020-07-02");
INSERT INTO rapor VALUES("156","6","1","27","m- Acili Salgam","5","1","2020-07-02");
INSERT INTO rapor VALUES("157","6","1","3","c-Kasarli Mantar","25","1","2020-07-02");
INSERT INTO rapor VALUES("158","6","1","1","a-Tereyagli Alabalik","25","3","2020-07-02");
INSERT INTO rapor VALUES("159","6","1","32","p-Acısiz Salgam","5","1","2020-07-02");
INSERT INTO rapor VALUES("160","3","1","1","a-Tereyagli Alabalik","25","4","2020-07-02");
INSERT INTO rapor VALUES("161","3","1","2","b-Izgara Kofte","25","1","2020-07-02");
INSERT INTO rapor VALUES("162","5","1","9","i-salata","5","1","2020-07-02");
INSERT INTO rapor VALUES("163","5","1","34","b-Kucuk Cay","15","1","2020-07-02");
INSERT INTO rapor VALUES("164","5","1","7","g-Kasarli Alabalik","28","2","2020-07-02");
INSERT INTO rapor VALUES("165","5","1","4","d-Sebzeli Alabalik","28","1","2020-07-02");
INSERT INTO rapor VALUES("166","5","1","1","a-Tereyagli Alabalik","25","1","2020-07-02");
INSERT INTO rapor VALUES("167","0","0","0","KG Balık","1100","1","2020-07-02");
INSERT INTO rapor VALUES("168","3","1","1","a-Tereyagli Alabalik","25","2","2020-07-02");
INSERT INTO rapor VALUES("169","3","1","3","c-Kasarli Mantar","25","1","2020-07-02");
INSERT INTO rapor VALUES("170","3","1","14","a-Kola","5","1","2020-07-02");
INSERT INTO rapor VALUES("171","16","1","3","c-Kasarli Mantar","25","1","2020-07-02");
INSERT INTO rapor VALUES("172","16","1","1","a-Tereyagli Alabalik","25","3","2020-07-02");
INSERT INTO rapor VALUES("173","1","1","1","a-Tereyagli Alabalik","25","4","2020-07-02");
INSERT INTO rapor VALUES("174","1","1","3","c-Kasarli Mantar","25","1","2020-07-02");
INSERT INTO rapor VALUES("175","15","1","1","a-Tereyagli Alabalik","25","2","2020-07-02");
INSERT INTO rapor VALUES("176","15","1","30","n-Sade Soda","3","1","2020-07-02");
INSERT INTO rapor VALUES("177","15","1","49","s- Ayran","3","1","2020-07-02");
INSERT INTO rapor VALUES("178","15","1","34","b-Kucuk Cay","15","1","2020-07-02");
INSERT INTO rapor VALUES("179","0","0","0","KG Balık","50","1","2020-07-03");
INSERT INTO rapor VALUES("180","10","1","34","b-Kucuk Cay","15","1","2020-07-03");
INSERT INTO rapor VALUES("181","0","0","0","KG Balık","2200","1","2020-07-03");
INSERT INTO rapor VALUES("182","0","0","0","KG Balık","75","1","2020-07-03");
INSERT INTO rapor VALUES("183","-1","0","-1","Pişirme Ucreti","30","1","2020-07-03");
INSERT INTO rapor VALUES("184","3","1","5","e-Firin Kofte","25","1","2020-07-03");
INSERT INTO rapor VALUES("185","3","1","47","b-Balik","25","2","2020-07-03");
INSERT INTO rapor VALUES("186","3","1","1","a-Tereyagli Alabalik","25","2","2020-07-03");
INSERT INTO rapor VALUES("187","3","1","3","c-Kasarli Mantar","25","1","2020-07-03");
INSERT INTO rapor VALUES("188","3","1","4","d-Sebzeli Alabalik","28","2","2020-07-03");
INSERT INTO rapor VALUES("189","3","1","11","1-Firinda Helva ","20","1","2020-07-03");
INSERT INTO rapor VALUES("190","3","1","34","b-Kucuk Cay","15","1","2020-07-03");
INSERT INTO rapor VALUES("191","24","1","1","a-Tereyagli Alabalik","25","4","2020-07-03");
INSERT INTO rapor VALUES("192","24","1","3","c-Kasarli Mantar","25","2","2020-07-03");
INSERT INTO rapor VALUES("193","24","1","14","a-Kola","5","4","2020-07-03");
INSERT INTO rapor VALUES("194","4","1","1","a-Tereyagli Alabalik","25","5","2020-07-03");
INSERT INTO rapor VALUES("195","4","1","14","a-Kola","5","4","2020-07-03");
INSERT INTO rapor VALUES("196","4","1","40","f-Roko","3","2","2020-07-03");
INSERT INTO rapor VALUES("197","4","1","24","a-Bravo","6.5","4","2020-07-03");
INSERT INTO rapor VALUES("198","29","1","31","o-Limonlu Soda","3.5","1","2020-07-03");
INSERT INTO rapor VALUES("199","29","1","49","s- Ayran","3","1","2020-07-03");
INSERT INTO rapor VALUES("200","29","1","42","h-Matrax","1.5","1","2020-07-03");
INSERT INTO rapor VALUES("201","6","1","14","a-Kola","5","1","2020-07-03");
INSERT INTO rapor VALUES("202","6","1","3","c-Kasarli Mantar","25","3","2020-07-03");
INSERT INTO rapor VALUES("203","6","1","7","g-Kasarli Alabalik","28","5","2020-07-03");
INSERT INTO rapor VALUES("204","6","1","11","1-Firinda Helva ","20","1","2020-07-03");
INSERT INTO rapor VALUES("205","24","1","48","a-Balik-Pisirme","35","6","2020-07-03");
INSERT INTO rapor VALUES("206","5","1","3","c-Kasarli Mantar","25","3","2020-07-03");
INSERT INTO rapor VALUES("207","5","1","1","a-Tereyagli Alabalik","25","7","2020-07-03");
INSERT INTO rapor VALUES("208","5","1","35","c-Orta Cay","25","1","2020-07-03");
INSERT INTO rapor VALUES("209","5","1","17","d-Fanta","5","4","2020-07-03");
INSERT INTO rapor VALUES("210","5","1","14","a-Kola","5","3","2020-07-03");
INSERT INTO rapor VALUES("211","5","1","11","1-Firinda Helva ","20","2","2020-07-03");
INSERT INTO rapor VALUES("212","4","1","4","d-Sebzeli Alabalik","28","1","2020-07-03");
INSERT INTO rapor VALUES("213","4","1","7","g-Kasarli Alabalik","28","2","2020-07-03");
INSERT INTO rapor VALUES("214","4","1","2","b-Izgara Kofte","25","1","2020-07-03");
INSERT INTO rapor VALUES("215","4","1","3","c-Kasarli Mantar","25","3","2020-07-03");
INSERT INTO rapor VALUES("216","4","1","14","a-Kola","5","2","2020-07-03");
INSERT INTO rapor VALUES("217","3","1","1","a-Tereyagli Alabalik","25","5","2020-07-03");
INSERT INTO rapor VALUES("218","3","1","3","c-Kasarli Mantar","25","1","2020-07-03");
INSERT INTO rapor VALUES("219","3","1","11","1-Firinda Helva ","20","1","2020-07-03");
INSERT INTO rapor VALUES("220","29","1","42","h-Matrax","1.5","1","2020-07-03");
INSERT INTO rapor VALUES("221","29","1","41","g-Lungo","2","1","2020-07-03");
INSERT INTO rapor VALUES("222","0","0","0","KG Balık","100","1","2020-07-04");
INSERT INTO rapor VALUES("223","3","1","1","a-Tereyagli Alabalik","25","4","2020-07-04");
INSERT INTO rapor VALUES("224","3","1","3","c-Kasarli Mantar","25","2","2020-07-04");
INSERT INTO rapor VALUES("225","3","1","27","m- Acili Salgam","5","2","2020-07-04");
INSERT INTO rapor VALUES("226","5","1","35","c-Orta Cay","25","1","2020-07-04");
INSERT INTO rapor VALUES("227","5","1","11","1-Firinda Helva ","20","1","2020-07-04");
INSERT INTO rapor VALUES("228","1","1","1","a-Tereyagli Alabalik","25","2","2020-07-04");
INSERT INTO rapor VALUES("229","1","1","3","c-Kasarli Mantar","25","1","2020-07-04");
INSERT INTO rapor VALUES("230","1","1","2","b-Izgara Kofte","25","1","2020-07-04");
INSERT INTO rapor VALUES("231","1","1","30","n-Sade Soda","3","1","2020-07-04");
INSERT INTO rapor VALUES("232","1","1","20","g- Gazoz","5","1","2020-07-04");
INSERT INTO rapor VALUES("233","1","1","49","s- Ayran","3","1","2020-07-04");
INSERT INTO rapor VALUES("234","1","1","24","a-Bravo","6.5","1","2020-07-04");
INSERT INTO rapor VALUES("235","1","1","28","b-Marasim","5.5","2","2020-07-04");
INSERT INTO rapor VALUES("236","5","1","1","a-Tereyagli Alabalik","25","2","2020-07-04");
INSERT INTO rapor VALUES("237","7","1","11","1-Firinda Helva ","20","2","2020-07-04");
INSERT INTO rapor VALUES("238","7","1","12","2-Kunefe","10","1","2020-07-04");
INSERT INTO rapor VALUES("239","7","1","41","g-Lungo","2","1","2020-07-04");
INSERT INTO rapor VALUES("240","7","1","3","c-Kasarli Mantar","25","2","2020-07-04");
INSERT INTO rapor VALUES("241","7","1","1","a-Tereyagli Alabalik","25","5","2020-07-04");
INSERT INTO rapor VALUES("242","7","1","14","a-Kola","5","1","2020-07-04");
INSERT INTO rapor VALUES("243","7","1","33","a-Bardak Cay","2","5","2020-07-04");
INSERT INTO rapor VALUES("244","4","1","1","a-Tereyagli Alabalik","25","5","2020-07-04");
INSERT INTO rapor VALUES("245","4","1","3","c-Kasarli Mantar","25","1","2020-07-04");
INSERT INTO rapor VALUES("246","4","1","11","1-Firinda Helva ","20","1","2020-07-04");
INSERT INTO rapor VALUES("247","4","1","27","m- Acili Salgam","5","3","2020-07-04");
INSERT INTO rapor VALUES("248","4","1","33","a-Bardak Cay","2","5","2020-07-04");
INSERT INTO rapor VALUES("249","10","1","34","b-Kucuk Cay","15","1","2020-07-04");
INSERT INTO rapor VALUES("250","10","1","3","c-Kasarli Mantar","25","2","2020-07-04");
INSERT INTO rapor VALUES("251","10","1","52","e-Nescafe","5","1","2020-07-04");
INSERT INTO rapor VALUES("252","10","1","14","a-Kola","5","1","2020-07-04");
INSERT INTO rapor VALUES("253","6","1","1","a-Tereyagli Alabalik","25","3","2020-07-04");
INSERT INTO rapor VALUES("254","5","1","1","a-Tereyagli Alabalik","25","3","2020-07-04");
INSERT INTO rapor VALUES("255","5","1","3","c-Kasarli Mantar","25","1","2020-07-04");
INSERT INTO rapor VALUES("256","5","1","8","h-Sac Tava","30","1","2020-07-04");
INSERT INTO rapor VALUES("257","5","1","30","n-Sade Soda","3","1","2020-07-04");
INSERT INTO rapor VALUES("258","5","1","27","m- Acili Salgam","5","2","2020-07-04");
INSERT INTO rapor VALUES("259","5","1","32","p-Acısiz Salgam","5","1","2020-07-04");
INSERT INTO rapor VALUES("260","2","1","24","a-Bravo","6.5","3","2020-07-04");
INSERT INTO rapor VALUES("261","4","1","3","c-Kasarli Mantar","25","2","2020-07-04");
INSERT INTO rapor VALUES("262","4","1","1","a-Tereyagli Alabalik","25","5","2020-07-04");
INSERT INTO rapor VALUES("263","3","1","2","b-Izgara Kofte","25","6","2020-07-04");
INSERT INTO rapor VALUES("264","3","1","17","d-Fanta","5","2","2020-07-04");
INSERT INTO rapor VALUES("265","3","1","14","a-Kola","5","5","2020-07-04");
INSERT INTO rapor VALUES("266","3","1","12","2-Kunefe","10","6","2020-07-04");
INSERT INTO rapor VALUES("267","7","1","29","c-Marasim Cup","4","4","2020-07-04");
INSERT INTO rapor VALUES("268","7","1","3","c-Kasarli Mantar","25","2","2020-07-04");
INSERT INTO rapor VALUES("269","7","1","1","a-Tereyagli Alabalik","25","6","2020-07-04");
INSERT INTO rapor VALUES("270","4","1","9","i-salata","5","3","2020-07-04");
INSERT INTO rapor VALUES("271","4","1","14","a-Kola","5","2","2020-07-04");
INSERT INTO rapor VALUES("272","4","1","27","m- Acili Salgam","5","4","2020-07-04");
INSERT INTO rapor VALUES("273","4","1","32","p-Acısiz Salgam","5","2","2020-07-04");
INSERT INTO rapor VALUES("274","4","1","1","a-Tereyagli Alabalik","25","8","2020-07-04");
INSERT INTO rapor VALUES("275","4","1","11","1-Firinda Helva ","20","1","2020-07-04");
INSERT INTO rapor VALUES("276","0","0","0","KG Balık","300","1","2020-07-04");
INSERT INTO rapor VALUES("277","1","1","3","c-Kasarli Mantar","25","3","2020-07-04");
INSERT INTO rapor VALUES("278","1","1","1","a-Tereyagli Alabalik","25","13","2020-07-04");
INSERT INTO rapor VALUES("279","1","1","11","1-Firinda Helva ","20","3","2020-07-04");
INSERT INTO rapor VALUES("280","10","1","38","d-Fatasia","5.5","2","2020-07-04");
INSERT INTO rapor VALUES("281","10","1","41","g-Lungo","2","1","2020-07-04");
INSERT INTO rapor VALUES("282","10","1","33","a-Bardak Cay","2","6","2020-07-04");
INSERT INTO rapor VALUES("283","3","1","4","d-Sebzeli Alabalik","28","3","2020-07-05");
INSERT INTO rapor VALUES("284","25","1","48","a-Balik-Pisirme","35","3","2020-07-05");
INSERT INTO rapor VALUES("285","3","1","16","c-SC Seftali","5","4","2020-07-05");
INSERT INTO rapor VALUES("286","3","1","3","c-Kasarli Mantar","25","2","2020-07-05");
INSERT INTO rapor VALUES("287","3","1","1","a-Tereyagli Alabalik","25","5","2020-07-05");
INSERT INTO rapor VALUES("288","0","0","0","KG Balık","87","1","2020-07-05");
INSERT INTO rapor VALUES("289","10","1","9","i-salata","5","1","2020-07-05");
INSERT INTO rapor VALUES("290","10","1","44","i-Cips","5","1","2020-07-05");
INSERT INTO rapor VALUES("291","10","1","7","g-Kasarli Alabalik","28","3","2020-07-05");
INSERT INTO rapor VALUES("292","10","1","30","n-Sade Soda","3","1","2020-07-05");
INSERT INTO rapor VALUES("293","10","1","14","a-Kola","5","3","2020-07-05");
INSERT INTO rapor VALUES("294","10","1","33","a-Bardak Cay","2","5","2020-07-05");
INSERT INTO rapor VALUES("295","4","1","3","c-Kasarli Mantar","25","1","2020-07-05");
INSERT INTO rapor VALUES("296","4","1","1","a-Tereyagli Alabalik","25","2","2020-07-05");
INSERT INTO rapor VALUES("297","1","1","1","a-Tereyagli Alabalik","25","4","2020-07-05");
INSERT INTO rapor VALUES("298","1","1","3","c-Kasarli Mantar","25","2","2020-07-05");
INSERT INTO rapor VALUES("299","6","1","2","b-Izgara Kofte","25","2","2020-07-05");
INSERT INTO rapor VALUES("300","6","1","1","a-Tereyagli Alabalik","25","2","2020-07-05");
INSERT INTO rapor VALUES("301","6","1","47","b-Balik","25","3","2020-07-05");
INSERT INTO rapor VALUES("302","6","1","14","a-Kola","5","4","2020-07-05");
INSERT INTO rapor VALUES("303","6","1","12","2-Kunefe","10","1","2020-07-05");
INSERT INTO rapor VALUES("304","7","1","3","c-Kasarli Mantar","25","1","2020-07-05");
INSERT INTO rapor VALUES("305","7","1","4","d-Sebzeli Alabalik","28","2","2020-07-05");
INSERT INTO rapor VALUES("306","7","1","1","a-Tereyagli Alabalik","25","4","2020-07-05");
INSERT INTO rapor VALUES("307","7","1","14","a-Kola","5","3","2020-07-05");
INSERT INTO rapor VALUES("308","7","1","17","d-Fanta","5","1","2020-07-05");
INSERT INTO rapor VALUES("309","7","1","31","o-Limonlu Soda","3.5","2","2020-07-05");
INSERT INTO rapor VALUES("310","7","1","9","i-salata","5","1","2020-07-05");
INSERT INTO rapor VALUES("311","15","1","3","c-Kasarli Mantar","25","2","2020-07-05");
INSERT INTO rapor VALUES("312","15","1","1","a-Tereyagli Alabalik","25","2","2020-07-05");
INSERT INTO rapor VALUES("313","15","1","17","d-Fanta","5","1","2020-07-05");
INSERT INTO rapor VALUES("314","5","1","1","a-Tereyagli Alabalik","25","2","2020-07-05");
INSERT INTO rapor VALUES("315","5","1","14","a-Kola","5","1","2020-07-05");
INSERT INTO rapor VALUES("316","5","1","17","d-Fanta","5","1","2020-07-05");
INSERT INTO rapor VALUES("317","2","1","47","b-Balik","25","1","2020-07-05");
INSERT INTO rapor VALUES("318","2","1","1","a-Tereyagli Alabalik","25","2","2020-07-05");
INSERT INTO rapor VALUES("319","3","1","33","a-Bardak Cay","2","3","2020-07-05");
INSERT INTO rapor VALUES("320","3","1","1","a-Tereyagli Alabalik","25","3","2020-07-05");
INSERT INTO rapor VALUES("321","3","1","3","c-Kasarli Mantar","25","1","2020-07-05");
INSERT INTO rapor VALUES("322","3","1","27","m- Acili Salgam","5","1","2020-07-05");
INSERT INTO rapor VALUES("323","3","1","17","d-Fanta","5","1","2020-07-05");
INSERT INTO rapor VALUES("324","3","1","32","p-Acısiz Salgam","5","1","2020-07-05");
INSERT INTO rapor VALUES("325","10","1","4","d-Sebzeli Alabalik","28","4","2020-07-05");
INSERT INTO rapor VALUES("326","10","1","17","d-Fanta","5","2","2020-07-05");
INSERT INTO rapor VALUES("327","6","1","3","c-Kasarli Mantar","25","1","2020-07-05");
INSERT INTO rapor VALUES("328","6","1","14","a-Kola","5","2","2020-07-05");
INSERT INTO rapor VALUES("329","6","1","1","a-Tereyagli Alabalik","25","2","2020-07-05");
INSERT INTO rapor VALUES("330","4","1","3","c-Kasarli Mantar","25","1","2020-07-05");
INSERT INTO rapor VALUES("331","4","1","1","a-Tereyagli Alabalik","25","2","2020-07-05");
INSERT INTO rapor VALUES("332","4","1","34","b-Kucuk Cay","15","1","2020-07-05");
INSERT INTO rapor VALUES("333","4","1","14","a-Kola","5","2","2020-07-05");
INSERT INTO rapor VALUES("334","3","1","14","a-Kola","5","2","2020-07-05");
INSERT INTO rapor VALUES("335","3","1","3","c-Kasarli Mantar","25","1","2020-07-05");
INSERT INTO rapor VALUES("336","3","1","1","a-Tereyagli Alabalik","25","4","2020-07-05");
INSERT INTO rapor VALUES("337","16","1","14","a-Kola","5","4","2020-07-05");
INSERT INTO rapor VALUES("338","16","1","1","a-Tereyagli Alabalik","25","1","2020-07-05");
INSERT INTO rapor VALUES("339","16","1","8","h-Sac Tava","30","3","2020-07-05");
INSERT INTO rapor VALUES("340","29","1","1","a-Tereyagli Alabalik","25","2","2020-07-05");
INSERT INTO rapor VALUES("341","29","1","3","c-Kasarli Mantar","25","2","2020-07-05");
INSERT INTO rapor VALUES("342","29","1","14","a-Kola","5","3","2020-07-05");
INSERT INTO rapor VALUES("343","29","1","33","a-Bardak Cay","2","3","2020-07-05");
INSERT INTO rapor VALUES("344","29","1","12","2-Kunefe","10","1","2020-07-05");
INSERT INTO rapor VALUES("345","29","1","8","h-Sac Tava","30","4","2020-07-05");
INSERT INTO rapor VALUES("346","5","1","23","j-zero","5","2","2020-07-05");
INSERT INTO rapor VALUES("347","5","1","1","a-Tereyagli Alabalik","25","2","2020-07-05");
INSERT INTO rapor VALUES("348","5","1","3","c-Kasarli Mantar","25","1","2020-07-05");
INSERT INTO rapor VALUES("349","6","1","16","c-SC Seftali","5","1","2020-07-05");
INSERT INTO rapor VALUES("350","6","1","1","a-Tereyagli Alabalik","25","7","2020-07-05");
INSERT INTO rapor VALUES("351","6","1","3","c-Kasarli Mantar","25","3","2020-07-05");
INSERT INTO rapor VALUES("352","3","1","42","h-Matrax","1.5","2","2020-07-05");
INSERT INTO rapor VALUES("353","3","1","14","a-Kola","5","3","2020-07-05");
INSERT INTO rapor VALUES("354","3","1","1","a-Tereyagli Alabalik","25","2","2020-07-05");
INSERT INTO rapor VALUES("355","3","1","51","l- Yarım Köfte","12.5","2","2020-07-05");
INSERT INTO rapor VALUES("356","3","1","2","b-Izgara Kofte","25","1","2020-07-05");
INSERT INTO rapor VALUES("357","4","1","17","d-Fanta","5","1","2020-07-05");
INSERT INTO rapor VALUES("358","4","1","1","a-Tereyagli Alabalik","25","4","2020-07-05");
INSERT INTO rapor VALUES("359","4","1","3","c-Kasarli Mantar","25","2","2020-07-05");
INSERT INTO rapor VALUES("360","11","1","41","g-Lungo","2","1","2020-07-05");
INSERT INTO rapor VALUES("361","11","1","39","e-CoCo Star","3.5","2","2020-07-05");
INSERT INTO rapor VALUES("362","11","1","24","a-Bravo","6.5","2","2020-07-05");
INSERT INTO rapor VALUES("363","29","1","35","c-Orta Cay","25","1","2020-07-05");
INSERT INTO rapor VALUES("364","29","1","37","r-su","1","2","2020-07-05");
INSERT INTO rapor VALUES("365","29","1","1","a-Tereyagli Alabalik","25","7","2020-07-05");
INSERT INTO rapor VALUES("366","29","1","3","c-Kasarli Mantar","25","1","2020-07-05");
INSERT INTO rapor VALUES("367","16","1","15","b-Ms Karisik","5","1","2020-07-05");
INSERT INTO rapor VALUES("368","16","1","14","a-Kola","5","2","2020-07-05");
INSERT INTO rapor VALUES("369","16","1","1","a-Tereyagli Alabalik","25","1","2020-07-05");
INSERT INTO rapor VALUES("370","16","1","3","c-Kasarli Mantar","25","1","2020-07-05");
INSERT INTO rapor VALUES("371","16","1","8","h-Sac Tava","30","1","2020-07-05");
INSERT INTO rapor VALUES("372","0","0","0","KG Balık","1.5","1","2020-07-05");
INSERT INTO rapor VALUES("373","0","0","0","KG Balık","1.5","1","2020-07-05");
INSERT INTO rapor VALUES("374","14","1","14","a-Kola","5","1","2020-07-05");
INSERT INTO rapor VALUES("375","14","1","3","c-Kasarli Mantar","25","1","2020-07-05");
INSERT INTO rapor VALUES("376","14","1","8","h-Sac Tava","30","1","2020-07-05");
INSERT INTO rapor VALUES("377","14","1","2","b-Izgara Kofte","25","1","2020-07-05");
INSERT INTO rapor VALUES("378","14","1","1","a-Tereyagli Alabalik","25","1","2020-07-05");
INSERT INTO rapor VALUES("379","7","1","14","a-Kola","5","2","2020-07-05");
INSERT INTO rapor VALUES("380","7","1","3","c-Kasarli Mantar","25","1","2020-07-05");
INSERT INTO rapor VALUES("381","7","1","2","b-Izgara Kofte","25","1","2020-07-05");
INSERT INTO rapor VALUES("382","7","1","1","a-Tereyagli Alabalik","25","4","2020-07-05");
INSERT INTO rapor VALUES("383","5","1","3","c-Kasarli Mantar","25","2","2020-07-05");
INSERT INTO rapor VALUES("384","5","1","14","a-Kola","5","3","2020-07-05");
INSERT INTO rapor VALUES("385","5","1","2","b-Izgara Kofte","25","3","2020-07-05");
INSERT INTO rapor VALUES("386","5","1","37","r-su","1","1","2020-07-05");
INSERT INTO rapor VALUES("387","5","1","1","a-Tereyagli Alabalik","25","3","2020-07-05");
INSERT INTO rapor VALUES("388","2","1","17","d-Fanta","5","1","2020-07-05");
INSERT INTO rapor VALUES("389","2","1","2","b-Izgara Kofte","25","3","2020-07-05");
INSERT INTO rapor VALUES("390","2","1","1","a-Tereyagli Alabalik","25","12","2020-07-05");
INSERT INTO rapor VALUES("391","6","1","14","a-Kola","5","6","2020-07-05");
INSERT INTO rapor VALUES("392","6","1","7","g-Kasarli Alabalik","28","1","2020-07-05");
INSERT INTO rapor VALUES("393","6","1","3","c-Kasarli Mantar","25","1","2020-07-05");
INSERT INTO rapor VALUES("394","6","1","1","a-Tereyagli Alabalik","25","5","2020-07-05");
INSERT INTO rapor VALUES("395","10","1","3","c-Kasarli Mantar","25","3","2020-07-05");
INSERT INTO rapor VALUES("396","10","1","1","a-Tereyagli Alabalik","25","4","2020-07-05");
INSERT INTO rapor VALUES("397","10","1","7","g-Kasarli Alabalik","28","1","2020-07-05");
INSERT INTO rapor VALUES("398","10","1","11","1-Firinda Helva ","20","2","2020-07-05");
INSERT INTO rapor VALUES("399","11","1","3","c-Kasarli Mantar","25","2","2020-07-05");
INSERT INTO rapor VALUES("400","11","1","1","a-Tereyagli Alabalik","25","5","2020-07-05");
INSERT INTO rapor VALUES("401","3","1","1","a-Tereyagli Alabalik","25","4","2020-07-06");
INSERT INTO rapor VALUES("402","3","1","3","c-Kasarli Mantar","25","1","2020-07-06");
INSERT INTO rapor VALUES("403","5","1","1","a-Tereyagli Alabalik","25","4","2020-07-06");
INSERT INTO rapor VALUES("404","5","1","7","g-Kasarli Alabalik","28","1","2020-07-06");
INSERT INTO rapor VALUES("405","5","1","2","b-Izgara Kofte","25","1","2020-07-06");
INSERT INTO rapor VALUES("406","5","1","3","c-Kasarli Mantar","25","2","2020-07-06");
INSERT INTO rapor VALUES("407","24","1","48","a-Balik-Pisirme","35","3","2020-07-06");
INSERT INTO rapor VALUES("408","3","1","12","2-Kunefe","10","3","2020-07-06");
INSERT INTO rapor VALUES("409","3","1","1","a-Tereyagli Alabalik","25","2","2020-07-06");
INSERT INTO rapor VALUES("410","3","1","2","b-Izgara Kofte","25","2","2020-07-06");
INSERT INTO rapor VALUES("411","3","1","14","a-Kola","5","1","2020-07-06");
INSERT INTO rapor VALUES("412","3","1","15","b-Ms Karisik","5","2","2020-07-06");
INSERT INTO rapor VALUES("413","3","1","16","c-SC Seftali","5","1","2020-07-06");
INSERT INTO rapor VALUES("414","3","1","39","e-CoCo Star","3.5","1","2020-07-06");
INSERT INTO rapor VALUES("415","5","1","11","1-Firinda Helva ","20","1","2020-07-06");
INSERT INTO rapor VALUES("416","5","1","3","c-Kasarli Mantar","25","1","2020-07-06");
INSERT INTO rapor VALUES("417","5","1","8","h-Sac Tava","30","2","2020-07-06");
INSERT INTO rapor VALUES("418","5","1","1","a-Tereyagli Alabalik","25","3","2020-07-06");
INSERT INTO rapor VALUES("419","5","1","23","j-zero","5","1","2020-07-06");
INSERT INTO rapor VALUES("420","16","1","3","c-Kasarli Mantar","25","1","2020-07-06");
INSERT INTO rapor VALUES("421","16","1","1","a-Tereyagli Alabalik","25","3","2020-07-06");
INSERT INTO rapor VALUES("422","7","1","34","b-Kucuk Cay","15","1","2020-07-06");
INSERT INTO rapor VALUES("423","7","1","1","a-Tereyagli Alabalik","25","2","2020-07-06");
INSERT INTO rapor VALUES("424","7","1","8","h-Sac Tava","30","1","2020-07-06");
INSERT INTO rapor VALUES("425","29","1","12","2-Kunefe","10","4","2020-07-06");
INSERT INTO rapor VALUES("426","29","1","3","c-Kasarli Mantar","25","4","2020-07-06");
INSERT INTO rapor VALUES("427","29","1","1","a-Tereyagli Alabalik","25","16","2020-07-06");
INSERT INTO rapor VALUES("428","4","1","11","1-Firinda Helva ","20","1","2020-07-06");
INSERT INTO rapor VALUES("429","4","1","14","a-Kola","5","4","2020-07-06");
INSERT INTO rapor VALUES("430","4","1","1","a-Tereyagli Alabalik","25","4","2020-07-06");
INSERT INTO rapor VALUES("431","4","1","12","2-Kunefe","10","1","2020-07-06");
INSERT INTO rapor VALUES("432","3","1","11","1-Firinda Helva ","20","1","2020-07-06");
INSERT INTO rapor VALUES("433","3","1","3","c-Kasarli Mantar","25","1","2020-07-06");
INSERT INTO rapor VALUES("434","3","1","12","2-Kunefe","10","1","2020-07-06");
INSERT INTO rapor VALUES("435","3","1","1","a-Tereyagli Alabalik","25","4","2020-07-06");
INSERT INTO rapor VALUES("436","3","1","14","a-Kola","5","3","2020-07-06");
INSERT INTO rapor VALUES("437","3","1","17","d-Fanta","5","1","2020-07-06");
INSERT INTO rapor VALUES("438","25","1","48","a-Balik-Pisirme","35","3","2020-07-06");
INSERT INTO rapor VALUES("439","25","1","42","h-Matrax","1.5","1","2020-07-06");
INSERT INTO rapor VALUES("440","25","1","41","g-Lungo","2","1","2020-07-06");
INSERT INTO rapor VALUES("441","25","1","3","c-Kasarli Mantar","25","1","2020-07-06");
INSERT INTO rapor VALUES("442","25","1","11","1-Firinda Helva ","20","1","2020-07-06");
INSERT INTO rapor VALUES("443","25","1","12","2-Kunefe","10","1","2020-07-06");
INSERT INTO rapor VALUES("444","0","0","0","KG Balık","50","1","2020-07-06");
INSERT INTO rapor VALUES("445","0","0","0","KG Balık","75","1","2020-07-06");
INSERT INTO rapor VALUES("446","0","0","0","KG Balık","75","1","2020-07-06");
INSERT INTO rapor VALUES("447","16","1","1","a-Tereyagli Alabalik","25","5","2020-07-06");
INSERT INTO rapor VALUES("448","16","1","3","c-Kasarli Mantar","25","2","2020-07-06");
INSERT INTO rapor VALUES("449","0","0","0","KG Balık","2200","1","2020-07-06");
INSERT INTO rapor VALUES("450","0","0","0","KG Balık","250","1","2020-07-06");
INSERT INTO rapor VALUES("451","28","1","48","a-Balik-Pisirme","35","4","2020-07-06");
INSERT INTO rapor VALUES("452","28","1","3","c-Kasarli Mantar","25","2","2020-07-06");
INSERT INTO rapor VALUES("453","4","1","14","a-Kola","5","1","2020-07-07");
INSERT INTO rapor VALUES("454","4","1","3","c-Kasarli Mantar","25","1","2020-07-07");
INSERT INTO rapor VALUES("455","4","1","1","a-Tereyagli Alabalik","25","2","2020-07-07");
INSERT INTO rapor VALUES("456","10","1","1","a-Tereyagli Alabalik","25","4","2020-07-07");
INSERT INTO rapor VALUES("457","10","1","3","c-Kasarli Mantar","25","1","2020-07-07");
INSERT INTO rapor VALUES("458","10","1","24","a-Bravo","6.5","1","2020-07-07");
INSERT INTO rapor VALUES("459","0","0","0","KG Balık","73","1","2020-07-07");
INSERT INTO rapor VALUES("460","0","0","0","KG Balık","56","1","2020-07-07");
INSERT INTO rapor VALUES("461","2","1","30","n-Sade Soda","3","1","2020-07-07");
INSERT INTO rapor VALUES("462","2","1","14","a-Kola","5","6","2020-07-07");
INSERT INTO rapor VALUES("463","7","1","1","a-Tereyagli Alabalik","25","4","2020-07-07");
INSERT INTO rapor VALUES("464","7","1","3","c-Kasarli Mantar","25","4","2020-07-07");
INSERT INTO rapor VALUES("465","5","1","3","c-Kasarli Mantar","25","1","2020-07-07");
INSERT INTO rapor VALUES("466","5","1","27","m- Acili Salgam","5","1","2020-07-07");
INSERT INTO rapor VALUES("467","5","1","1","a-Tereyagli Alabalik","25","2","2020-07-07");
INSERT INTO rapor VALUES("468","6","1","11","1-Firinda Helva ","20","1","2020-07-07");
INSERT INTO rapor VALUES("469","6","1","17","d-Fanta","5","3","2020-07-07");
INSERT INTO rapor VALUES("470","6","1","8","h-Sac Tava","30","1","2020-07-07");
INSERT INTO rapor VALUES("471","6","1","1","a-Tereyagli Alabalik","25","3","2020-07-07");
INSERT INTO rapor VALUES("472","5","1","2","b-Izgara Kofte","25","5","2020-07-07");
INSERT INTO rapor VALUES("473","3","1","17","d-Fanta","5","2","2020-07-07");
INSERT INTO rapor VALUES("474","3","1","14","a-Kola","5","2","2020-07-07");
INSERT INTO rapor VALUES("475","24","1","14","a-Kola","5","1","2020-07-07");
INSERT INTO rapor VALUES("476","24","1","30","n-Sade Soda","3","2","2020-07-07");
INSERT INTO rapor VALUES("477","24","1","1","a-Tereyagli Alabalik","25","4","2020-07-07");
INSERT INTO rapor VALUES("478","24","1","3","c-Kasarli Mantar","25","2","2020-07-07");
INSERT INTO rapor VALUES("479","24","1","11","1-Firinda Helva ","20","1","2020-07-07");
INSERT INTO rapor VALUES("480","2","1","15","b-Ms Karisik","5","1","2020-07-07");
INSERT INTO rapor VALUES("481","2","1","14","a-Kola","5","4","2020-07-07");
INSERT INTO rapor VALUES("482","2","1","2","b-Izgara Kofte","25","5","2020-07-07");
INSERT INTO rapor VALUES("483","4","1","7","g-Kasarli Alabalik","28","2","2020-07-07");
INSERT INTO rapor VALUES("484","5","1","37","r-su","1","1","2020-07-07");
INSERT INTO rapor VALUES("485","5","1","3","c-Kasarli Mantar","25","2","2020-07-07");
INSERT INTO rapor VALUES("486","5","1","1","a-Tereyagli Alabalik","25","3","2020-07-07");
INSERT INTO rapor VALUES("487","5","1","14","a-Kola","5","3","2020-07-07");
INSERT INTO rapor VALUES("488","7","1","1","a-Tereyagli Alabalik","25","12","2020-07-07");
INSERT INTO rapor VALUES("489","1","1","3","c-Kasarli Mantar","25","1","2020-07-07");
INSERT INTO rapor VALUES("490","1","1","8","h-Sac Tava","30","1","2020-07-07");
INSERT INTO rapor VALUES("491","1","1","1","a-Tereyagli Alabalik","25","2","2020-07-07");
INSERT INTO rapor VALUES("492","1","1","2","b-Izgara Kofte","25","1","2020-07-07");
INSERT INTO rapor VALUES("493","3","1","16","c-SC Seftali","5","1","2020-07-07");
INSERT INTO rapor VALUES("494","3","1","14","a-Kola","5","2","2020-07-07");
INSERT INTO rapor VALUES("495","3","1","3","c-Kasarli Mantar","25","1","2020-07-07");
INSERT INTO rapor VALUES("496","3","1","1","a-Tereyagli Alabalik","25","4","2020-07-07");
INSERT INTO rapor VALUES("497","2","1","27","m- Acili Salgam","5","4","2020-07-07");
INSERT INTO rapor VALUES("498","2","1","1","a-Tereyagli Alabalik","25","6","2020-07-07");
INSERT INTO rapor VALUES("499","2","1","3","c-Kasarli Mantar","25","3","2020-07-07");
INSERT INTO rapor VALUES("500","5","1","3","c-Kasarli Mantar","25","2","2020-07-07");
INSERT INTO rapor VALUES("501","5","1","14","a-Kola","5","4","2020-07-07");
INSERT INTO rapor VALUES("502","5","1","1","a-Tereyagli Alabalik","25","4","2020-07-07");
INSERT INTO rapor VALUES("503","5","1","8","h-Sac Tava","30","1","2020-07-07");
INSERT INTO rapor VALUES("504","6","1","42","h-Matrax","1.5","2","2020-07-07");
INSERT INTO rapor VALUES("505","6","1","14","a-Kola","5","4","2020-07-07");
INSERT INTO rapor VALUES("506","6","1","1","a-Tereyagli Alabalik","25","4","2020-07-07");
INSERT INTO rapor VALUES("507","6","1","17","d-Fanta","5","1","2020-07-07");
INSERT INTO rapor VALUES("508","6","1","38","d-Fatasia","5.5","1","2020-07-07");
INSERT INTO rapor VALUES("509","4","1","14","a-Kola","5","2","2020-07-07");
INSERT INTO rapor VALUES("510","4","1","8","h-Sac Tava","30","2","2020-07-07");
INSERT INTO rapor VALUES("511","2","1","41","g-Lungo","2","5","2020-07-07");
INSERT INTO rapor VALUES("512","3","1","2","b-Izgara Kofte","25","1","2020-07-07");
INSERT INTO rapor VALUES("513","3","1","1","a-Tereyagli Alabalik","25","3","2020-07-07");
INSERT INTO rapor VALUES("514","3","1","3","c-Kasarli Mantar","25","1","2020-07-07");
INSERT INTO rapor VALUES("515","3","1","16","c-SC Seftali","5","2","2020-07-07");
INSERT INTO rapor VALUES("516","3","1","32","p-Acısiz Salgam","5","1","2020-07-07");
INSERT INTO rapor VALUES("517","3","1","14","a-Kola","5","2","2020-07-07");
INSERT INTO rapor VALUES("518","7","1","3","c-Kasarli Mantar","25","2","2020-07-07");
INSERT INTO rapor VALUES("519","7","1","1","a-Tereyagli Alabalik","25","6","2020-07-07");
INSERT INTO rapor VALUES("520","4","1","8","h-Sac Tava","30","2","2020-07-07");
INSERT INTO rapor VALUES("521","4","1","3","c-Kasarli Mantar","25","1","2020-07-07");
INSERT INTO rapor VALUES("522","4","1","32","p-Acısiz Salgam","5","1","2020-07-07");
INSERT INTO rapor VALUES("523","2","1","3","c-Kasarli Mantar","25","2","2020-07-07");
INSERT INTO rapor VALUES("524","2","1","1","a-Tereyagli Alabalik","25","6","2020-07-07");
INSERT INTO rapor VALUES("525","2","1","14","a-Kola","5","2","2020-07-07");
INSERT INTO rapor VALUES("526","5","1","1","a-Tereyagli Alabalik","25","5","2020-07-07");
INSERT INTO rapor VALUES("527","3","1","1","a-Tereyagli Alabalik","25","2","2020-07-07");
INSERT INTO rapor VALUES("528","3","1","3","c-Kasarli Mantar","25","2","2020-07-07");
INSERT INTO rapor VALUES("529","6","1","4","d-Sebzeli Alabalik","28","2","2020-07-07");
INSERT INTO rapor VALUES("530","6","1","7","g-Kasarli Alabalik","28","2","2020-07-07");
INSERT INTO rapor VALUES("531","6","1","3","c-Kasarli Mantar","25","2","2020-07-07");
INSERT INTO rapor VALUES("532","6","1","14","a-Kola","5","3","2020-07-07");
INSERT INTO rapor VALUES("533","6","1","39","e-CoCo Star","3.5","1","2020-07-07");
INSERT INTO rapor VALUES("534","3","1","1","a-Tereyagli Alabalik","25","1","2020-07-07");
INSERT INTO rapor VALUES("535","3","1","43","k-Tava Alabalik","25","1","2020-07-07");
INSERT INTO rapor VALUES("536","0","0","0","KG Balık","125","1","2020-07-08");
INSERT INTO rapor VALUES("537","0","0","0","KG Balık","185","1","2020-07-08");
INSERT INTO rapor VALUES("538","0","0","0","KG Balık","50","1","2020-07-08");
INSERT INTO rapor VALUES("539","-1","0","-1","Pişirme Ucreti","40","1","2020-07-08");
INSERT INTO rapor VALUES("540","2","1","3","c-Kasarli Mantar","25","4","2020-07-08");
INSERT INTO rapor VALUES("541","2","1","1","a-Tereyagli Alabalik","25","4","2020-07-08");
INSERT INTO rapor VALUES("542","6","1","1","a-Tereyagli Alabalik","25","7","2020-07-08");
INSERT INTO rapor VALUES("543","6","1","51","l- Yarım Köfte","12.5","1","2020-07-08");
INSERT INTO rapor VALUES("544","6","1","14","a-Kola","5","1","2020-07-08");
INSERT INTO rapor VALUES("545","4","1","1","a-Tereyagli Alabalik","25","3","2020-07-08");
INSERT INTO rapor VALUES("546","4","1","14","a-Kola","5","3","2020-07-08");
INSERT INTO rapor VALUES("547","4","1","12","2-Kunefe","10","1","2020-07-08");
INSERT INTO rapor VALUES("548","3","1","1","a-Tereyagli Alabalik","25","6","2020-07-08");
INSERT INTO rapor VALUES("549","3","1","14","a-Kola","5","3","2020-07-08");
INSERT INTO rapor VALUES("550","3","1","21","h- MS Vişne","5","1","2020-07-08");
INSERT INTO rapor VALUES("551","3","1","12","2-Kunefe","10","5","2020-07-08");
INSERT INTO rapor VALUES("552","7","1","8","h-Sac Tava","30","2","2020-07-08");
INSERT INTO rapor VALUES("553","7","1","1","a-Tereyagli Alabalik","25","4","2020-07-08");
INSERT INTO rapor VALUES("554","7","1","5","e-Firin Kofte","25","1","2020-07-08");
INSERT INTO rapor VALUES("555","7","1","14","a-Kola","5","6","2020-07-08");
INSERT INTO rapor VALUES("556","7","1","2","b-Izgara Kofte","25","4","2020-07-08");
INSERT INTO rapor VALUES("557","7","1","12","2-Kunefe","10","3","2020-07-08");
INSERT INTO rapor VALUES("558","7","1","3","c-Kasarli Mantar","25","1","2020-07-08");
INSERT INTO rapor VALUES("559","1","1","30","n-Sade Soda","3","1","2020-07-08");
INSERT INTO rapor VALUES("560","1","1","3","c-Kasarli Mantar","25","1","2020-07-08");
INSERT INTO rapor VALUES("561","1","1","4","d-Sebzeli Alabalik","28","2","2020-07-08");
INSERT INTO rapor VALUES("562","1","1","8","h-Sac Tava","30","1","2020-07-08");
INSERT INTO rapor VALUES("563","1","1","12","2-Kunefe","10","3","2020-07-08");
INSERT INTO rapor VALUES("564","1","1","37","r-su","1","3","2020-07-08");
INSERT INTO rapor VALUES("565","1","1","17","d-Fanta","5","1","2020-07-08");
INSERT INTO rapor VALUES("566","10","1","1","a-Tereyagli Alabalik","25","4","2020-07-08");
INSERT INTO rapor VALUES("567","10","1","3","c-Kasarli Mantar","25","1","2020-07-08");
INSERT INTO rapor VALUES("568","0","0","0","KG Balık","150","1","2020-07-08");
INSERT INTO rapor VALUES("569","0","0","0","KG Balık","75","1","2020-07-08");
INSERT INTO rapor VALUES("570","0","0","0","KG Balık","44","1","2020-07-08");
INSERT INTO rapor VALUES("571","4","1","40","f-Roko","3","3","2020-07-08");
INSERT INTO rapor VALUES("572","5","1","1","a-Tereyagli Alabalik","25","2","2020-07-08");
INSERT INTO rapor VALUES("573","5","1","3","c-Kasarli Mantar","25","1","2020-07-08");
INSERT INTO rapor VALUES("574","5","1","14","a-Kola","5","2","2020-07-08");
INSERT INTO rapor VALUES("575","5","1","12","2-Kunefe","10","2","2020-07-08");
INSERT INTO rapor VALUES("576","3","1","1","a-Tereyagli Alabalik","25","2","2020-07-08");
INSERT INTO rapor VALUES("577","0","0","0","KG Balık","100","1","2020-07-08");
INSERT INTO rapor VALUES("578","2","1","1","a-Tereyagli Alabalik","25","3","2020-07-08");
INSERT INTO rapor VALUES("579","2","1","14","a-Kola","5","1","2020-07-08");
INSERT INTO rapor VALUES("580","4","1","3","c-Kasarli Mantar","25","1","2020-07-08");
INSERT INTO rapor VALUES("581","4","1","1","a-Tereyagli Alabalik","25","3","2020-07-08");
INSERT INTO rapor VALUES("582","7","1","14","a-Kola","5","1","2020-07-08");
INSERT INTO rapor VALUES("583","7","1","21","h- MS Vişne","5","2","2020-07-08");
INSERT INTO rapor VALUES("584","7","1","1","a-Tereyagli Alabalik","25","6","2020-07-08");
INSERT INTO rapor VALUES("585","7","1","3","c-Kasarli Mantar","25","2","2020-07-08");
INSERT INTO rapor VALUES("586","3","1","22","i- SC Limon","5","1","2020-07-08");
INSERT INTO rapor VALUES("587","3","1","30","n-Sade Soda","3","1","2020-07-08");
INSERT INTO rapor VALUES("588","3","1","17","d-Fanta","5","1","2020-07-08");
INSERT INTO rapor VALUES("589","3","1","3","c-Kasarli Mantar","25","1","2020-07-08");
INSERT INTO rapor VALUES("590","3","1","1","a-Tereyagli Alabalik","25","7","2020-07-08");
INSERT INTO rapor VALUES("591","3","1","16","c-SC Seftali","5","2","2020-07-08");
INSERT INTO rapor VALUES("592","3","1","14","a-Kola","5","1","2020-07-08");
INSERT INTO rapor VALUES("593","5","1","14","a-Kola","5","6","2020-07-08");
INSERT INTO rapor VALUES("594","5","1","3","c-Kasarli Mantar","25","2","2020-07-08");
INSERT INTO rapor VALUES("595","5","1","1","a-Tereyagli Alabalik","25","6","2020-07-08");
INSERT INTO rapor VALUES("596","6","1","1","a-Tereyagli Alabalik","25","3","2020-07-08");
INSERT INTO rapor VALUES("597","29","1","5","e-Firin Kofte","25","3","2020-07-08");
INSERT INTO rapor VALUES("598","29","1","3","c-Kasarli Mantar","25","4","2020-07-08");
INSERT INTO rapor VALUES("599","29","1","24","a-Bravo","6.5","6","2020-07-08");
INSERT INTO rapor VALUES("600","29","1","1","a-Tereyagli Alabalik","25","5","2020-07-08");
INSERT INTO rapor VALUES("601","29","1","47","b-Balik","25","3","2020-07-08");
INSERT INTO rapor VALUES("602","4","1","3","c-Kasarli Mantar","25","2","2020-07-08");
INSERT INTO rapor VALUES("603","4","1","1","a-Tereyagli Alabalik","25","3","2020-07-08");
INSERT INTO rapor VALUES("604","7","1","16","c-SC Seftali","5","2","2020-07-08");
INSERT INTO rapor VALUES("605","7","1","17","d-Fanta","5","1","2020-07-08");
INSERT INTO rapor VALUES("606","7","1","14","a-Kola","5","1","2020-07-08");
INSERT INTO rapor VALUES("607","7","1","8","h-Sac Tava","30","1","2020-07-08");
INSERT INTO rapor VALUES("608","7","1","7","g-Kasarli Alabalik","28","2","2020-07-08");
INSERT INTO rapor VALUES("609","7","1","2","b-Izgara Kofte","25","2","2020-07-08");
INSERT INTO rapor VALUES("610","7","1","3","c-Kasarli Mantar","25","3","2020-07-08");
INSERT INTO rapor VALUES("611","7","1","13","3-Fıstıklı Kunefe","13","1","2020-07-08");
INSERT INTO rapor VALUES("612","3","1","3","c-Kasarli Mantar","25","2","2020-07-08");
INSERT INTO rapor VALUES("613","3","1","4","d-Sebzeli Alabalik","28","3","2020-07-08");
INSERT INTO rapor VALUES("614","3","1","2","b-Izgara Kofte","25","1","2020-07-08");
INSERT INTO rapor VALUES("615","0","0","0","KG Balık","52","1","2020-07-08");
INSERT INTO rapor VALUES("616","0","0","0","KG Balık","20","1","2020-07-08");
INSERT INTO rapor VALUES("617","6","1","43","k-Tava Alabalik","25","2","2020-07-08");
INSERT INTO rapor VALUES("618","6","1","14","a-Kola","5","1","2020-07-08");
INSERT INTO rapor VALUES("619","6","1","16","c-SC Seftali","5","1","2020-07-08");
INSERT INTO rapor VALUES("620","1","1","1","a-Tereyagli Alabalik","25","2","2020-07-08");
INSERT INTO rapor VALUES("621","1","1","3","c-Kasarli Mantar","25","1","2020-07-08");
INSERT INTO rapor VALUES("622","1","1","8","h-Sac Tava","30","1","2020-07-08");
INSERT INTO rapor VALUES("623","2","1","41","g-Lungo","2","1","2020-07-09");
INSERT INTO rapor VALUES("624","6","1","49","s- Ayran","3","3","2020-07-09");
INSERT INTO rapor VALUES("625","6","1","2","b-Izgara Kofte","25","2","2020-07-09");
INSERT INTO rapor VALUES("626","6","1","8","h-Sac Tava","30","1","2020-07-09");
INSERT INTO rapor VALUES("627","4","1","27","m- Acili Salgam","5","1","2020-07-09");
INSERT INTO rapor VALUES("628","4","1","1","a-Tereyagli Alabalik","25","1","2020-07-09");
INSERT INTO rapor VALUES("629","4","1","3","c-Kasarli Mantar","25","1","2020-07-09");
INSERT INTO rapor VALUES("630","1","1","34","b-Kucuk Cay","15","1","2020-07-09");
INSERT INTO rapor VALUES("631","7","1","14","a-Kola","5","3","2020-07-09");
INSERT INTO rapor VALUES("632","7","1","3","c-Kasarli Mantar","25","1","2020-07-09");
INSERT INTO rapor VALUES("633","7","1","1","a-Tereyagli Alabalik","25","3","2020-07-09");
INSERT INTO rapor VALUES("634","28","1","48","a-Balik-Pisirme","35","4","2020-07-09");
INSERT INTO rapor VALUES("635","3","1","21","h- MS Vişne","5","2","2020-07-09");
INSERT INTO rapor VALUES("636","3","1","31","o-Limonlu Soda","3.5","2","2020-07-09");
INSERT INTO rapor VALUES("637","4","1","17","d-Fanta","5","3","2020-07-09");
INSERT INTO rapor VALUES("638","4","1","7","g-Kasarli Alabalik","28","2","2020-07-09");
INSERT INTO rapor VALUES("639","4","1","4","d-Sebzeli Alabalik","28","1","2020-07-09");
INSERT INTO rapor VALUES("640","7","1","20","g- Gazoz","5","1","2020-07-09");
INSERT INTO rapor VALUES("641","7","1","14","a-Kola","5","2","2020-07-09");
INSERT INTO rapor VALUES("642","7","1","17","d-Fanta","5","3","2020-07-09");
INSERT INTO rapor VALUES("643","7","1","36","d-Buyuk Cay","35","1","2020-07-09");
INSERT INTO rapor VALUES("644","7","1","4","d-Sebzeli Alabalik","28","2","2020-07-09");
INSERT INTO rapor VALUES("645","7","1","1","a-Tereyagli Alabalik","25","2","2020-07-09");
INSERT INTO rapor VALUES("646","7","1","7","g-Kasarli Alabalik","28","1","2020-07-09");
INSERT INTO rapor VALUES("647","7","1","3","c-Kasarli Mantar","25","5","2020-07-09");
INSERT INTO rapor VALUES("648","28","1","48","a-Balik-Pisirme","35","4","2020-07-09");
INSERT INTO rapor VALUES("649","28","1","48","a-Balik-Pisirme","35","0","2020-07-09");
INSERT INTO rapor VALUES("650","26","1","4","d-Sebzeli Alabalik","28","2","2020-07-09");
INSERT INTO rapor VALUES("651","26","1","48","a-Balik-Pisirme","35","3","2020-07-09");
INSERT INTO rapor VALUES("652","26","1","27","m- Acili Salgam","5","1","2020-07-09");
INSERT INTO rapor VALUES("653","26","1","16","c-SC Seftali","5","1","2020-07-09");
INSERT INTO rapor VALUES("654","3","1","2","b-Izgara Kofte","25","1","2020-07-09");
INSERT INTO rapor VALUES("655","3","1","1","a-Tereyagli Alabalik","25","4","2020-07-09");
INSERT INTO rapor VALUES("656","5","1","14","a-Kola","5","1","2020-07-09");
INSERT INTO rapor VALUES("657","5","1","8","h-Sac Tava","30","1","2020-07-09");
INSERT INTO rapor VALUES("658","1","1","1","a-Tereyagli Alabalik","25","1","2020-07-09");
INSERT INTO rapor VALUES("659","1","1","2","b-Izgara Kofte","25","2","2020-07-09");
INSERT INTO rapor VALUES("660","1","1","11","1-Firinda Helva ","20","2","2020-07-09");
INSERT INTO rapor VALUES("661","1","1","9","i-salata","5","1","2020-07-09");
INSERT INTO rapor VALUES("662","6","1","14","a-Kola","5","2","2020-07-09");
INSERT INTO rapor VALUES("663","6","1","1","a-Tereyagli Alabalik","25","2","2020-07-09");
INSERT INTO rapor VALUES("664","6","1","3","c-Kasarli Mantar","25","1","2020-07-09");
INSERT INTO rapor VALUES("665","5","1","7","g-Kasarli Alabalik","28","5","2020-07-09");
INSERT INTO rapor VALUES("666","5","1","14","a-Kola","5","4","2020-07-09");
INSERT INTO rapor VALUES("667","5","1","27","m- Acili Salgam","5","1","2020-07-09");
INSERT INTO rapor VALUES("668","0","0","0","KG Balık","2200","1","2020-07-09");
INSERT INTO rapor VALUES("669","0","0","0","KG Balık","125","1","2020-07-09");
INSERT INTO rapor VALUES("670","0","0","0","KG Balık","125","1","2020-07-09");
INSERT INTO rapor VALUES("671","10","1","1","a-Tereyagli Alabalik","25","2","2020-07-10");
INSERT INTO rapor VALUES("672","10","1","3","c-Kasarli Mantar","25","2","2020-07-10");
INSERT INTO rapor VALUES("673","10","1","37","r-su","1","2","2020-07-10");
INSERT INTO rapor VALUES("674","4","1","2","b-Izgara Kofte","25","4","2020-07-10");
INSERT INTO rapor VALUES("675","4","1","1","a-Tereyagli Alabalik","25","2","2020-07-10");
INSERT INTO rapor VALUES("676","4","1","14","a-Kola","5","3","2020-07-10");
INSERT INTO rapor VALUES("677","4","1","20","g- Gazoz","5","1","2020-07-10");
INSERT INTO rapor VALUES("678","4","1","49","s- Ayran","3","1","2020-07-10");
INSERT INTO rapor VALUES("679","7","1","4","d-Sebzeli Alabalik","28","4","2020-07-10");
INSERT INTO rapor VALUES("680","7","1","3","c-Kasarli Mantar","25","1","2020-07-10");
INSERT INTO rapor VALUES("681","5","1","14","a-Kola","5","3","2020-07-10");
INSERT INTO rapor VALUES("682","5","1","1","a-Tereyagli Alabalik","25","3","2020-07-10");
INSERT INTO rapor VALUES("683","6","1","3","c-Kasarli Mantar","25","3","2020-07-10");
INSERT INTO rapor VALUES("684","6","1","1","a-Tereyagli Alabalik","25","2","2020-07-10");
INSERT INTO rapor VALUES("685","3","1","1","a-Tereyagli Alabalik","25","4","2020-07-10");
INSERT INTO rapor VALUES("686","3","1","7","g-Kasarli Alabalik","28","2","2020-07-10");
INSERT INTO rapor VALUES("687","3","1","5","e-Firin Kofte","25","1","2020-07-10");
INSERT INTO rapor VALUES("688","3","1","3","c-Kasarli Mantar","25","2","2020-07-10");
INSERT INTO rapor VALUES("689","3","1","17","d-Fanta","5","1","2020-07-10");
INSERT INTO rapor VALUES("690","3","1","14","a-Kola","5","6","2020-07-10");
INSERT INTO rapor VALUES("691","3","1","11","1-Firinda Helva ","20","1","2020-07-10");
INSERT INTO rapor VALUES("692","3","1","13","3-Fıstıklı Kunefe","13","1","2020-07-10");
INSERT INTO rapor VALUES("693","1","1","3","c-Kasarli Mantar","25","2","2020-07-10");
INSERT INTO rapor VALUES("694","1","1","1","a-Tereyagli Alabalik","25","2","2020-07-10");
INSERT INTO rapor VALUES("695","1","1","12","2-Kunefe","10","1","2020-07-10");
INSERT INTO rapor VALUES("696","5","1","3","c-Kasarli Mantar","25","2","2020-07-10");
INSERT INTO rapor VALUES("697","5","1","1","a-Tereyagli Alabalik","25","2","2020-07-10");
INSERT INTO rapor VALUES("698","5","1","8","h-Sac Tava","30","2","2020-07-10");
INSERT INTO rapor VALUES("699","5","1","2","b-Izgara Kofte","25","1","2020-07-10");
INSERT INTO rapor VALUES("700","5","1","17","d-Fanta","5","1","2020-07-10");
INSERT INTO rapor VALUES("701","5","1","27","m- Acili Salgam","5","1","2020-07-10");
INSERT INTO rapor VALUES("702","5","1","49","s- Ayran","3","1","2020-07-10");
INSERT INTO rapor VALUES("703","4","1","14","a-Kola","5","3","2020-07-10");
INSERT INTO rapor VALUES("704","4","1","11","1-Firinda Helva ","20","1","2020-07-10");
INSERT INTO rapor VALUES("705","4","1","3","c-Kasarli Mantar","25","1","2020-07-10");
INSERT INTO rapor VALUES("706","4","1","1","a-Tereyagli Alabalik","25","3","2020-07-10");
INSERT INTO rapor VALUES("707","2","1","1","a-Tereyagli Alabalik","25","3","2020-07-10");
INSERT INTO rapor VALUES("708","2","1","3","c-Kasarli Mantar","25","1","2020-07-10");
INSERT INTO rapor VALUES("709","3","1","3","c-Kasarli Mantar","25","2","2020-07-10");
INSERT INTO rapor VALUES("710","3","1","1","a-Tereyagli Alabalik","25","10","2020-07-10");
INSERT INTO rapor VALUES("711","3","1","14","a-Kola","5","4","2020-07-10");
INSERT INTO rapor VALUES("712","3","1","36","d-Buyuk Cay","35","1","2020-07-10");
INSERT INTO rapor VALUES("713","29","1","11","1-Firinda Helva ","20","3","2020-07-10");
INSERT INTO rapor VALUES("714","29","1","18","e-MS Seftali","5","1","2020-07-10");
INSERT INTO rapor VALUES("715","29","1","31","o-Limonlu Soda","3.5","1","2020-07-10");
INSERT INTO rapor VALUES("716","29","1","30","n-Sade Soda","3","3","2020-07-10");
INSERT INTO rapor VALUES("717","29","1","3","c-Kasarli Mantar","25","7","2020-07-10");
INSERT INTO rapor VALUES("718","29","1","1","a-Tereyagli Alabalik","25","8","2020-07-10");
INSERT INTO rapor VALUES("719","11","1","36","d-Buyuk Cay","35","1","2020-07-10");
INSERT INTO rapor VALUES("720","11","1","27","m- Acili Salgam","5","1","2020-07-10");
INSERT INTO rapor VALUES("721","11","1","1","a-Tereyagli Alabalik","25","2","2020-07-10");
INSERT INTO rapor VALUES("722","11","1","35","c-Orta Cay","25","1","2020-07-10");
INSERT INTO rapor VALUES("723","13","1","3","c-Kasarli Mantar","25","1","2020-07-10");
INSERT INTO rapor VALUES("724","13","1","1","a-Tereyagli Alabalik","25","4","2020-07-10");
INSERT INTO rapor VALUES("725","10","1","1","a-Tereyagli Alabalik","25","5","2020-07-10");
INSERT INTO rapor VALUES("726","10","1","3","c-Kasarli Mantar","25","2","2020-07-10");
INSERT INTO rapor VALUES("727","10","1","17","d-Fanta","5","1","2020-07-10");
INSERT INTO rapor VALUES("728","10","1","25","k-MS Kaysı","5","1","2020-07-10");
INSERT INTO rapor VALUES("729","10","1","38","d-Fatasia","5.5","3","2020-07-10");
INSERT INTO rapor VALUES("730","0","0","0","KG Balık","85","1","2020-07-10");
INSERT INTO rapor VALUES("731","0","0","0","KG Balık","2200","1","2020-07-10");
INSERT INTO rapor VALUES("732","3","1","14","a-Kola","5","1","2020-07-10");
INSERT INTO rapor VALUES("733","3","1","30","n-Sade Soda","3","2","2020-07-10");
INSERT INTO rapor VALUES("734","3","1","1","a-Tereyagli Alabalik","25","2","2020-07-10");
INSERT INTO rapor VALUES("735","15","1","1","a-Tereyagli Alabalik","25","2","2020-07-10");
INSERT INTO rapor VALUES("736","15","1","27","m- Acili Salgam","5","2","2020-07-10");
INSERT INTO rapor VALUES("737","1","1","14","a-Kola","5","3","2020-07-10");
INSERT INTO rapor VALUES("738","1","1","25","k-MS Kaysı","5","2","2020-07-10");
INSERT INTO rapor VALUES("739","1","1","32","p-Acısiz Salgam","5","2","2020-07-10");
INSERT INTO rapor VALUES("740","1","1","1","a-Tereyagli Alabalik","25","10","2020-07-10");
INSERT INTO rapor VALUES("741","1","1","27","m- Acili Salgam","5","2","2020-07-10");
INSERT INTO rapor VALUES("742","10","1","41","g-Lungo","2","1","2020-07-10");
INSERT INTO rapor VALUES("743","10","1","1","a-Tereyagli Alabalik","25","4","2020-07-10");
INSERT INTO rapor VALUES("744","10","1","3","c-Kasarli Mantar","25","1","2020-07-10");
INSERT INTO rapor VALUES("745","10","1","14","a-Kola","5","1","2020-07-10");
INSERT INTO rapor VALUES("746","10","1","32","p-Acısiz Salgam","5","1","2020-07-10");
INSERT INTO rapor VALUES("747","9","1","4","d-Sebzeli Alabalik","28","4","2020-07-10");
INSERT INTO rapor VALUES("748","9","1","3","c-Kasarli Mantar","25","1","2020-07-10");
INSERT INTO rapor VALUES("749","9","1","8","h-Sac Tava","30","1","2020-07-10");
INSERT INTO rapor VALUES("750","9","1","14","a-Kola","5","1","2020-07-10");
INSERT INTO rapor VALUES("751","9","1","17","d-Fanta","5","1","2020-07-10");
INSERT INTO rapor VALUES("752","8","1","4","d-Sebzeli Alabalik","28","2","2020-07-10");
INSERT INTO rapor VALUES("753","8","1","2","b-Izgara Kofte","25","1","2020-07-10");
INSERT INTO rapor VALUES("754","8","1","7","g-Kasarli Alabalik","28","1","2020-07-10");
INSERT INTO rapor VALUES("755","8","1","3","c-Kasarli Mantar","25","1","2020-07-10");
INSERT INTO rapor VALUES("756","8","1","14","a-Kola","5","2","2020-07-10");
INSERT INTO rapor VALUES("757","7","1","4","d-Sebzeli Alabalik","28","2","2020-07-10");
INSERT INTO rapor VALUES("758","7","1","1","a-Tereyagli Alabalik","25","1","2020-07-10");
INSERT INTO rapor VALUES("759","7","1","2","b-Izgara Kofte","25","1","2020-07-10");
INSERT INTO rapor VALUES("760","7","1","7","g-Kasarli Alabalik","28","1","2020-07-10");
INSERT INTO rapor VALUES("761","7","1","3","c-Kasarli Mantar","25","1","2020-07-10");
INSERT INTO rapor VALUES("762","1","1","1","a-Tereyagli Alabalik","25","2","2020-07-11");
INSERT INTO rapor VALUES("763","1","1","2","b-Izgara Kofte","25","1","2020-07-11");
INSERT INTO rapor VALUES("764","1","1","3","c-Kasarli Mantar","25","1","2020-07-11");
INSERT INTO rapor VALUES("765","1","1","12","2-Kunefe","10","3","2020-07-11");
INSERT INTO rapor VALUES("766","6","1","1","a-Tereyagli Alabalik","25","3","2020-07-11");
INSERT INTO rapor VALUES("767","6","1","30","n-Sade Soda","3","1","2020-07-11");
INSERT INTO rapor VALUES("768","6","1","26","l-SC Karpuz","5","4","2020-07-11");
INSERT INTO rapor VALUES("769","6","1","51","l- Yarım Köfte","12.5","1","2020-07-11");
INSERT INTO rapor VALUES("770","5","1","12","2-Kunefe","10","2","2020-07-11");
INSERT INTO rapor VALUES("771","5","1","14","a-Kola","5","3","2020-07-11");
INSERT INTO rapor VALUES("772","5","1","1","a-Tereyagli Alabalik","25","1","2020-07-11");
INSERT INTO rapor VALUES("773","5","1","4","d-Sebzeli Alabalik","28","2","2020-07-11");
INSERT INTO rapor VALUES("774","16","1","37","r-su","1","1","2020-07-11");
INSERT INTO rapor VALUES("775","16","1","1","a-Tereyagli Alabalik","25","1","2020-07-11");
INSERT INTO rapor VALUES("776","3","1","47","b-Balik","25","2","2020-07-11");
INSERT INTO rapor VALUES("777","3","1","3","c-Kasarli Mantar","25","1","2020-07-11");
INSERT INTO rapor VALUES("778","3","1","1","a-Tereyagli Alabalik","25","3","2020-07-11");
INSERT INTO rapor VALUES("779","3","1","34","b-Kucuk Cay","15","1","2020-07-11");
INSERT INTO rapor VALUES("780","15","1","43","k-Tava Alabalik","25","1","2020-07-11");
INSERT INTO rapor VALUES("781","1","1","34","b-Kucuk Cay","15","1","2020-07-11");
INSERT INTO rapor VALUES("782","2","1","14","a-Kola","5","3","2020-07-11");
INSERT INTO rapor VALUES("783","2","1","7","g-Kasarli Alabalik","28","2","2020-07-11");
INSERT INTO rapor VALUES("784","2","1","4","d-Sebzeli Alabalik","28","1","2020-07-11");
INSERT INTO rapor VALUES("785","10","1","10","j-Mantali Kasarli Alabalik","28","1","2020-07-11");
INSERT INTO rapor VALUES("786","10","1","1","a-Tereyagli Alabalik","25","1","2020-07-11");
INSERT INTO rapor VALUES("787","10","1","27","m- Acili Salgam","5","1","2020-07-11");
INSERT INTO rapor VALUES("788","10","1","14","a-Kola","5","1","2020-07-11");
INSERT INTO rapor VALUES("789","29","1","3","c-Kasarli Mantar","25","1","2020-07-11");
INSERT INTO rapor VALUES("790","29","1","8","h-Sac Tava","30","2","2020-07-11");
INSERT INTO rapor VALUES("791","7","1","37","r-su","1","2","2020-07-11");
INSERT INTO rapor VALUES("792","7","1","17","d-Fanta","5","1","2020-07-11");
INSERT INTO rapor VALUES("793","7","1","20","g- Gazoz","5","1","2020-07-11");
INSERT INTO rapor VALUES("794","7","1","3","c-Kasarli Mantar","25","2","2020-07-11");
INSERT INTO rapor VALUES("795","7","1","27","m- Acili Salgam","5","1","2020-07-11");
INSERT INTO rapor VALUES("796","7","1","32","p-Acısiz Salgam","5","1","2020-07-11");
INSERT INTO rapor VALUES("797","7","1","1","a-Tereyagli Alabalik","25","2","2020-07-11");
INSERT INTO rapor VALUES("798","7","1","24","a-Bravo","6.5","2","2020-07-11");
INSERT INTO rapor VALUES("799","4","1","14","a-Kola","5","3","2020-07-11");
INSERT INTO rapor VALUES("800","4","1","1","a-Tereyagli Alabalik","25","3","2020-07-11");
INSERT INTO rapor VALUES("801","4","1","8","h-Sac Tava","30","1","2020-07-11");
INSERT INTO rapor VALUES("802","4","1","3","c-Kasarli Mantar","25","2","2020-07-11");
INSERT INTO rapor VALUES("803","4","1","9","i-salata","5","1","2020-07-11");
INSERT INTO rapor VALUES("804","6","1","17","d-Fanta","5","2","2020-07-11");
INSERT INTO rapor VALUES("805","6","1","8","h-Sac Tava","30","3","2020-07-11");
INSERT INTO rapor VALUES("806","6","1","38","d-Fatasia","5.5","2","2020-07-11");
INSERT INTO rapor VALUES("807","3","1","1","a-Tereyagli Alabalik","25","2","2020-07-11");
INSERT INTO rapor VALUES("808","3","1","12","2-Kunefe","10","1","2020-07-11");
INSERT INTO rapor VALUES("809","5","1","1","a-Tereyagli Alabalik","25","10","2020-07-11");
INSERT INTO rapor VALUES("810","5","1","2","b-Izgara Kofte","25","1","2020-07-11");
INSERT INTO rapor VALUES("811","5","1","14","a-Kola","5","7","2020-07-11");
INSERT INTO rapor VALUES("812","5","1","17","d-Fanta","5","2","2020-07-11");
INSERT INTO rapor VALUES("813","5","1","18","e-MS Seftali","5","2","2020-07-11");
INSERT INTO rapor VALUES("814","0","0","0","KG Balık","100","1","2020-07-11");
INSERT INTO rapor VALUES("815","0","0","0","KG Balık","105","1","2020-07-11");
INSERT INTO rapor VALUES("816","0","0","0","KG Balık","34","1","2020-07-11");
INSERT INTO rapor VALUES("817","0","0","0","KG Balık","375","1","2020-07-11");
INSERT INTO rapor VALUES("818","5","1","1","a-Tereyagli Alabalik","25","3","2020-07-11");
INSERT INTO rapor VALUES("819","5","1","3","c-Kasarli Mantar","25","1","2020-07-11");
INSERT INTO rapor VALUES("820","5","1","32","p-Acısiz Salgam","5","1","2020-07-11");
INSERT INTO rapor VALUES("821","5","1","17","d-Fanta","5","1","2020-07-11");
INSERT INTO rapor VALUES("822","7","1","1","a-Tereyagli Alabalik","25","5","2020-07-11");
INSERT INTO rapor VALUES("823","7","1","8","h-Sac Tava","30","1","2020-07-11");
INSERT INTO rapor VALUES("824","7","1","3","c-Kasarli Mantar","25","2","2020-07-11");
INSERT INTO rapor VALUES("825","7","1","17","d-Fanta","5","7","2020-07-11");
INSERT INTO rapor VALUES("826","5","1","1","a-Tereyagli Alabalik","25","2","2020-07-11");
INSERT INTO rapor VALUES("827","5","1","3","c-Kasarli Mantar","25","1","2020-07-11");
INSERT INTO rapor VALUES("828","5","1","2","b-Izgara Kofte","25","1","2020-07-11");
INSERT INTO rapor VALUES("829","6","1","14","a-Kola","5","5","2020-07-12");
INSERT INTO rapor VALUES("830","6","1","10","j-Mantali Kasarli Alabalik","28","5","2020-07-12");
INSERT INTO rapor VALUES("831","7","1","4","d-Sebzeli Alabalik","28","1","2020-07-12");
INSERT INTO rapor VALUES("832","7","1","17","d-Fanta","5","1","2020-07-12");
INSERT INTO rapor VALUES("833","7","1","10","j-Mantali Kasarli Alabalik","28","3","2020-07-12");
INSERT INTO rapor VALUES("834","7","1","1","a-Tereyagli Alabalik","25","1","2020-07-12");
INSERT INTO rapor VALUES("835","7","1","8","h-Sac Tava","30","2","2020-07-12");
INSERT INTO rapor VALUES("836","7","1","14","a-Kola","5","4","2020-07-12");
INSERT INTO rapor VALUES("837","4","1","51","l- Yarım Köfte","12.5","1","2020-07-12");
INSERT INTO rapor VALUES("838","4","1","14","a-Kola","5","4","2020-07-12");
INSERT INTO rapor VALUES("839","4","1","1","a-Tereyagli Alabalik","25","3","2020-07-12");
INSERT INTO rapor VALUES("840","4","1","2","b-Izgara Kofte","25","1","2020-07-12");
INSERT INTO rapor VALUES("841","0","0","0","KG Balık","128","1","2020-07-12");
INSERT INTO rapor VALUES("842","3","1","8","h-Sac Tava","30","2","2020-07-12");
INSERT INTO rapor VALUES("843","3","1","3","c-Kasarli Mantar","25","1","2020-07-12");
INSERT INTO rapor VALUES("844","3","1","14","a-Kola","5","2","2020-07-12");
INSERT INTO rapor VALUES("845","4","1","17","d-Fanta","5","1","2020-07-12");
INSERT INTO rapor VALUES("846","4","1","14","a-Kola","5","1","2020-07-12");
INSERT INTO rapor VALUES("847","4","1","1","a-Tereyagli Alabalik","25","3","2020-07-12");
INSERT INTO rapor VALUES("848","10","1","27","m- Acili Salgam","5","2","2020-07-12");
INSERT INTO rapor VALUES("849","10","1","14","a-Kola","5","2","2020-07-12");
INSERT INTO rapor VALUES("850","10","1","3","c-Kasarli Mantar","25","2","2020-07-12");
INSERT INTO rapor VALUES("851","10","1","4","d-Sebzeli Alabalik","28","1","2020-07-12");
INSERT INTO rapor VALUES("852","10","1","10","j-Mantali Kasarli Alabalik","28","1","2020-07-12");
INSERT INTO rapor VALUES("853","10","1","1","a-Tereyagli Alabalik","25","5","2020-07-12");
INSERT INTO rapor VALUES("854","29","1","2","b-Izgara Kofte","25","2","2020-07-12");
INSERT INTO rapor VALUES("855","29","1","1","a-Tereyagli Alabalik","25","3","2020-07-12");
INSERT INTO rapor VALUES("856","1","1","21","h- MS Vişne","5","1","2020-07-12");
INSERT INTO rapor VALUES("857","1","1","15","b-Ms Karisik","5","1","2020-07-12");
INSERT INTO rapor VALUES("858","1","1","19","f-SC Mango","5","1","2020-07-12");
INSERT INTO rapor VALUES("859","1","1","3","c-Kasarli Mantar","25","2","2020-07-12");
INSERT INTO rapor VALUES("860","1","1","1","a-Tereyagli Alabalik","25","2","2020-07-12");
INSERT INTO rapor VALUES("861","1","1","7","g-Kasarli Alabalik","28","3","2020-07-12");
INSERT INTO rapor VALUES("862","6","1","3","c-Kasarli Mantar","25","1","2020-07-12");
INSERT INTO rapor VALUES("863","6","1","1","a-Tereyagli Alabalik","25","2","2020-07-12");
INSERT INTO rapor VALUES("864","5","1","14","a-Kola","5","2","2020-07-12");
INSERT INTO rapor VALUES("865","5","1","17","d-Fanta","5","1","2020-07-12");
INSERT INTO rapor VALUES("866","5","1","3","c-Kasarli Mantar","25","4","2020-07-12");
INSERT INTO rapor VALUES("867","5","1","1","a-Tereyagli Alabalik","25","4","2020-07-12");
INSERT INTO rapor VALUES("868","29","1","3","c-Kasarli Mantar","25","2","2020-07-12");
INSERT INTO rapor VALUES("869","29","1","1","a-Tereyagli Alabalik","25","5","2020-07-12");
INSERT INTO rapor VALUES("870","29","1","8","h-Sac Tava","30","1","2020-07-12");
INSERT INTO rapor VALUES("871","29","1","14","a-Kola","5","3","2020-07-12");
INSERT INTO rapor VALUES("872","3","1","11","1-Firinda Helva ","20","1","2020-07-12");
INSERT INTO rapor VALUES("873","3","1","1","a-Tereyagli Alabalik","25","4","2020-07-12");
INSERT INTO rapor VALUES("874","3","1","34","b-Kucuk Cay","15","1","2020-07-12");
INSERT INTO rapor VALUES("875","3","1","27","m- Acili Salgam","5","4","2020-07-12");
INSERT INTO rapor VALUES("876","6","1","15","b-Ms Karisik","5","2","2020-07-12");
INSERT INTO rapor VALUES("877","6","1","14","a-Kola","5","1","2020-07-12");
INSERT INTO rapor VALUES("878","6","1","1","a-Tereyagli Alabalik","25","4","2020-07-12");
INSERT INTO rapor VALUES("879","6","1","3","c-Kasarli Mantar","25","1","2020-07-12");
INSERT INTO rapor VALUES("880","6","1","24","a-Bravo","6.5","1","2020-07-12");
INSERT INTO rapor VALUES("881","27","1","48","a-Balik-Pisirme","35","6","2020-07-12");
INSERT INTO rapor VALUES("882","27","1","8","h-Sac Tava","30","2","2020-07-12");
INSERT INTO rapor VALUES("883","5","1","47","b-Balik","25","2","2020-07-12");
INSERT INTO rapor VALUES("884","5","1","3","c-Kasarli Mantar","25","1","2020-07-12");
INSERT INTO rapor VALUES("885","5","1","1","a-Tereyagli Alabalik","25","4","2020-07-12");
INSERT INTO rapor VALUES("886","5","1","12","2-Kunefe","10","3","2020-07-12");
INSERT INTO rapor VALUES("887","13","1","2","b-Izgara Kofte","25","4","2020-07-12");
INSERT INTO rapor VALUES("888","13","1","3","c-Kasarli Mantar","25","5","2020-07-12");
INSERT INTO rapor VALUES("889","13","1","14","a-Kola","5","6","2020-07-12");
INSERT INTO rapor VALUES("890","13","1","21","h- MS Vişne","5","3","2020-07-12");
INSERT INTO rapor VALUES("891","13","1","15","b-Ms Karisik","5","1","2020-07-12");
INSERT INTO rapor VALUES("892","13","1","1","a-Tereyagli Alabalik","25","4","2020-07-12");
INSERT INTO rapor VALUES("893","13","1","8","h-Sac Tava","30","2","2020-07-12");
INSERT INTO rapor VALUES("894","13","1","12","2-Kunefe","10","5","2020-07-12");
INSERT INTO rapor VALUES("895","25","1","3","c-Kasarli Mantar","25","2","2020-07-12");
INSERT INTO rapor VALUES("896","25","1","1","a-Tereyagli Alabalik","25","1","2020-07-12");
INSERT INTO rapor VALUES("897","2","1","1","a-Tereyagli Alabalik","25","8","2020-07-12");
INSERT INTO rapor VALUES("898","2","1","3","c-Kasarli Mantar","25","1","2020-07-12");
INSERT INTO rapor VALUES("899","14","1","17","d-Fanta","5","4","2020-07-12");
INSERT INTO rapor VALUES("900","14","1","3","c-Kasarli Mantar","25","3","2020-07-12");
INSERT INTO rapor VALUES("901","14","1","1","a-Tereyagli Alabalik","25","5","2020-07-12");
INSERT INTO rapor VALUES("902","4","1","12","2-Kunefe","10","1","2020-07-12");
INSERT INTO rapor VALUES("903","4","1","11","1-Firinda Helva ","20","1","2020-07-12");
INSERT INTO rapor VALUES("904","4","1","24","a-Bravo","6.5","1","2020-07-12");
INSERT INTO rapor VALUES("905","4","1","3","c-Kasarli Mantar","25","2","2020-07-12");
INSERT INTO rapor VALUES("906","4","1","2","b-Izgara Kofte","25","1","2020-07-12");
INSERT INTO rapor VALUES("907","4","1","1","a-Tereyagli Alabalik","25","3","2020-07-12");
INSERT INTO rapor VALUES("908","4","1","34","b-Kucuk Cay","15","1","2020-07-12");
INSERT INTO rapor VALUES("909","7","1","14","a-Kola","5","4","2020-07-12");
INSERT INTO rapor VALUES("910","7","1","8","h-Sac Tava","30","5","2020-07-12");
INSERT INTO rapor VALUES("911","7","1","12","2-Kunefe","10","1","2020-07-12");
INSERT INTO rapor VALUES("912","7","1","17","d-Fanta","5","1","2020-07-12");
INSERT INTO rapor VALUES("913","7","1","41","g-Lungo","2","4","2020-07-12");
INSERT INTO rapor VALUES("914","3","1","14","a-Kola","5","2","2020-07-12");
INSERT INTO rapor VALUES("915","3","1","3","c-Kasarli Mantar","25","3","2020-07-12");
INSERT INTO rapor VALUES("916","3","1","35","c-Orta Cay","25","1","2020-07-12");
INSERT INTO rapor VALUES("917","3","1","12","2-Kunefe","10","5","2020-07-12");
INSERT INTO rapor VALUES("918","3","1","1","a-Tereyagli Alabalik","25","5","2020-07-12");
INSERT INTO rapor VALUES("919","3","1","17","d-Fanta","5","1","2020-07-12");
INSERT INTO rapor VALUES("920","6","1","3","c-Kasarli Mantar","25","1","2020-07-12");
INSERT INTO rapor VALUES("921","6","1","1","a-Tereyagli Alabalik","25","1","2020-07-12");
INSERT INTO rapor VALUES("922","6","1","12","2-Kunefe","10","1","2020-07-12");
INSERT INTO rapor VALUES("923","3","1","1","a-Tereyagli Alabalik","25","4","2020-07-12");
INSERT INTO rapor VALUES("924","3","1","3","c-Kasarli Mantar","25","1","2020-07-12");
INSERT INTO rapor VALUES("925","1","1","14","a-Kola","5","3","2020-07-12");
INSERT INTO rapor VALUES("926","1","1","3","c-Kasarli Mantar","25","4","2020-07-12");
INSERT INTO rapor VALUES("927","1","1","1","a-Tereyagli Alabalik","25","4","2020-07-12");
INSERT INTO rapor VALUES("928","1","1","44","i-Cips","5","1","2020-07-12");
INSERT INTO rapor VALUES("929","5","1","3","c-Kasarli Mantar","25","1","2020-07-12");
INSERT INTO rapor VALUES("930","5","1","47","b-Balik","25","2","2020-07-12");
INSERT INTO rapor VALUES("931","5","1","1","a-Tereyagli Alabalik","25","2","2020-07-12");
INSERT INTO rapor VALUES("932","5","1","12","2-Kunefe","10","1","2020-07-12");
INSERT INTO rapor VALUES("933","5","1","34","b-Kucuk Cay","15","1","2020-07-12");
INSERT INTO rapor VALUES("934","10","1","1","a-Tereyagli Alabalik","25","2","2020-07-12");
INSERT INTO rapor VALUES("935","10","1","51","l- Yarım Köfte","12.5","1","2020-07-12");
INSERT INTO rapor VALUES("936","16","1","3","c-Kasarli Mantar","25","1","2020-07-12");
INSERT INTO rapor VALUES("937","16","1","1","a-Tereyagli Alabalik","25","2","2020-07-12");
INSERT INTO rapor VALUES("938","16","1","47","b-Balik","25","1","2020-07-12");
INSERT INTO rapor VALUES("939","7","1","12","2-Kunefe","10","1","2020-07-12");
INSERT INTO rapor VALUES("940","7","1","35","c-Orta Cay","25","1","2020-07-12");
INSERT INTO rapor VALUES("941","7","1","2","b-Izgara Kofte","25","1","2020-07-12");
INSERT INTO rapor VALUES("942","7","1","49","s- Ayran","3","1","2020-07-12");
INSERT INTO rapor VALUES("943","7","1","14","a-Kola","5","2","2020-07-12");
INSERT INTO rapor VALUES("944","7","1","40","f-Roko","3","1","2020-07-12");
INSERT INTO rapor VALUES("945","7","1","11","1-Firinda Helva ","20","1","2020-07-12");
INSERT INTO rapor VALUES("946","7","1","8","h-Sac Tava","30","3","2020-07-12");
INSERT INTO rapor VALUES("947","7","1","1","a-Tereyagli Alabalik","25","4","2020-07-12");
INSERT INTO rapor VALUES("948","7","1","3","c-Kasarli Mantar","25","3","2020-07-12");
INSERT INTO rapor VALUES("949","3","1","34","b-Kucuk Cay","15","1","2020-07-12");
INSERT INTO rapor VALUES("950","3","1","12","2-Kunefe","10","1","2020-07-12");
INSERT INTO rapor VALUES("951","3","1","3","c-Kasarli Mantar","25","2","2020-07-12");
INSERT INTO rapor VALUES("952","3","1","1","a-Tereyagli Alabalik","25","4","2020-07-12");
INSERT INTO rapor VALUES("953","4","1","53","Top","7","1","2020-07-13");
INSERT INTO rapor VALUES("954","4","1","23","j-zero","5","1","2020-07-13");
INSERT INTO rapor VALUES("955","4","1","51","l- Yarım Köfte","12.5","1","2020-07-13");
INSERT INTO rapor VALUES("956","4","1","1","a-Tereyagli Alabalik","25","3","2020-07-13");
INSERT INTO rapor VALUES("957","4","1","4","d-Sebzeli Alabalik","28","1","2020-07-13");
INSERT INTO rapor VALUES("958","4","1","7","g-Kasarli Alabalik","28","1","2020-07-13");
INSERT INTO rapor VALUES("959","4","1","14","a-Kola","5","3","2020-07-13");
INSERT INTO rapor VALUES("960","6","1","14","a-Kola","5","2","2020-07-13");
INSERT INTO rapor VALUES("961","6","1","3","c-Kasarli Mantar","25","3","2020-07-13");
INSERT INTO rapor VALUES("962","6","1","1","a-Tereyagli Alabalik","25","3","2020-07-13");
INSERT INTO rapor VALUES("963","16","1","3","c-Kasarli Mantar","25","1","2020-07-13");
INSERT INTO rapor VALUES("964","5","1","1","a-Tereyagli Alabalik","25","3","2020-07-13");
INSERT INTO rapor VALUES("965","5","1","27","m- Acili Salgam","5","1","2020-07-13");
INSERT INTO rapor VALUES("966","5","1","14","a-Kola","5","1","2020-07-13");
INSERT INTO rapor VALUES("967","10","1","1","a-Tereyagli Alabalik","25","3","2020-07-13");
INSERT INTO rapor VALUES("968","10","1","14","a-Kola","5","1","2020-07-13");
INSERT INTO rapor VALUES("969","10","1","12","2-Kunefe","10","2","2020-07-13");
INSERT INTO rapor VALUES("970","10","1","37","r-su","1","2","2020-07-13");
INSERT INTO rapor VALUES("971","3","1","17","d-Fanta","5","2","2020-07-13");
INSERT INTO rapor VALUES("972","3","1","27","m- Acili Salgam","5","1","2020-07-13");
INSERT INTO rapor VALUES("973","3","1","3","c-Kasarli Mantar","25","1","2020-07-13");
INSERT INTO rapor VALUES("974","3","1","1","a-Tereyagli Alabalik","25","1","2020-07-13");
INSERT INTO rapor VALUES("975","3","1","43","k-Tava Alabalik","25","2","2020-07-13");
INSERT INTO rapor VALUES("976","3","1","12","2-Kunefe","10","1","2020-07-13");
INSERT INTO rapor VALUES("977","6","1","4","d-Sebzeli Alabalik","28","4","2020-07-13");
INSERT INTO rapor VALUES("978","6","1","3","c-Kasarli Mantar","25","1","2020-07-13");
INSERT INTO rapor VALUES("979","6","1","2","b-Izgara Kofte","25","1","2020-07-13");
INSERT INTO rapor VALUES("980","6","1","1","a-Tereyagli Alabalik","25","3","2020-07-13");
INSERT INTO rapor VALUES("981","1","1","1","a-Tereyagli Alabalik","25","6","2020-07-13");
INSERT INTO rapor VALUES("982","1","1","3","c-Kasarli Mantar","25","2","2020-07-13");
INSERT INTO rapor VALUES("983","7","1","30","n-Sade Soda","3","1","2020-07-13");
INSERT INTO rapor VALUES("984","7","1","20","g- Gazoz","5","1","2020-07-13");
INSERT INTO rapor VALUES("985","7","1","2","b-Izgara Kofte","25","2","2020-07-13");
INSERT INTO rapor VALUES("986","7","1","3","c-Kasarli Mantar","25","1","2020-07-13");
INSERT INTO rapor VALUES("987","7","1","1","a-Tereyagli Alabalik","25","3","2020-07-13");
INSERT INTO rapor VALUES("988","0","0","0","KG Balık","279","1","2020-07-13");
INSERT INTO rapor VALUES("989","1","1","8","h-Sac Tava","30","2","2020-07-13");
INSERT INTO rapor VALUES("990","1","1","2","b-Izgara Kofte","25","2","2020-07-13");
INSERT INTO rapor VALUES("991","1","1","1","a-Tereyagli Alabalik","25","1","2020-07-13");
INSERT INTO rapor VALUES("992","1","1","3","c-Kasarli Mantar","25","1","2020-07-13");
INSERT INTO rapor VALUES("993","1","1","49","s- Ayran","3","4","2020-07-13");
INSERT INTO rapor VALUES("994","1","1","32","p-Acısiz Salgam","5","1","2020-07-13");
INSERT INTO rapor VALUES("995","29","1","12","2-Kunefe","10","8","2020-07-13");
INSERT INTO rapor VALUES("996","29","1","3","c-Kasarli Mantar","25","4","2020-07-13");
INSERT INTO rapor VALUES("997","29","1","48","a-Balik-Pisirme","35","6","2020-07-13");
INSERT INTO rapor VALUES("998","29","1","8","h-Sac Tava","30","1","2020-07-13");
INSERT INTO rapor VALUES("999","4","1","7","g-Kasarli Alabalik","28","2","2020-07-13");
INSERT INTO rapor VALUES("1000","1","1","37","r-su","1","1","2020-07-13");
INSERT INTO rapor VALUES("1001","1","1","2","b-Izgara Kofte","25","1","2020-07-13");
INSERT INTO rapor VALUES("1002","1","1","3","c-Kasarli Mantar","25","1","2020-07-13");
INSERT INTO rapor VALUES("1003","1","1","1","a-Tereyagli Alabalik","25","1","2020-07-13");
INSERT INTO rapor VALUES("1004","1","1","14","a-Kola","5","1","2020-07-13");



DROP TABLE IF EXISTS urunler;

CREATE TABLE `urunler` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `katid` int(11) NOT NULL,
  `ad` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `fiyat` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

INSERT INTO urunler VALUES("1","1","a-Tereyagli Alabalik","25");
INSERT INTO urunler VALUES("2","1","b-Izgara Kofte","25");
INSERT INTO urunler VALUES("3","1","c-Kasarli Mantar","25");
INSERT INTO urunler VALUES("4","1","d-Sebzeli Alabalik","28");
INSERT INTO urunler VALUES("5","1","e-Firin Kofte","25");
INSERT INTO urunler VALUES("6","1","f-Sade Mantar","25");
INSERT INTO urunler VALUES("7","1","g-Kasarli Alabalik","28");
INSERT INTO urunler VALUES("8","1","h-Sac Tava","30");
INSERT INTO urunler VALUES("9","1","i-salata","5");
INSERT INTO urunler VALUES("10","1","j-Mantali Kasarli Alabalik","28");
INSERT INTO urunler VALUES("11","2","1-Firinda Helva ","20");
INSERT INTO urunler VALUES("12","2","2-Kunefe","10");
INSERT INTO urunler VALUES("13","2","3-Fıstıklı Kunefe","13");
INSERT INTO urunler VALUES("14","3","a-Kola","5");
INSERT INTO urunler VALUES("15","3","b-Ms Karisik","5");
INSERT INTO urunler VALUES("16","3","c-SC Seftali","5");
INSERT INTO urunler VALUES("17","3","d-Fanta","5");
INSERT INTO urunler VALUES("18","3","e-MS Seftali","5");
INSERT INTO urunler VALUES("19","3","f-SC Mango","5");
INSERT INTO urunler VALUES("20","3","g- Gazoz","5");
INSERT INTO urunler VALUES("21","3","h- MS Vişne","5");
INSERT INTO urunler VALUES("22","3","i- SC Limon","5");
INSERT INTO urunler VALUES("23","3","j-zero","5");
INSERT INTO urunler VALUES("24","5","a-Bravo","6.5");
INSERT INTO urunler VALUES("25","3","k-MS Kaysı","5");
INSERT INTO urunler VALUES("26","3","l-SC Karpuz","5");
INSERT INTO urunler VALUES("27","3","m- Acili Salgam","5");
INSERT INTO urunler VALUES("28","5","b-Marasim","5.5");
INSERT INTO urunler VALUES("29","5","c-Marasim Cup","4");
INSERT INTO urunler VALUES("30","3","n-Sade Soda","3");
INSERT INTO urunler VALUES("31","3","o-Limonlu Soda","3.5");
INSERT INTO urunler VALUES("32","3","p-Acısiz Salgam","5");
INSERT INTO urunler VALUES("33","4","a-Bardak Cay","2");
INSERT INTO urunler VALUES("34","4","b-Kucuk Cay","15");
INSERT INTO urunler VALUES("35","4","c-Orta Cay","25");
INSERT INTO urunler VALUES("36","4","d-Buyuk Cay","35");
INSERT INTO urunler VALUES("37","3","r-su","1");
INSERT INTO urunler VALUES("38","5","d-Fatasia","5.5");
INSERT INTO urunler VALUES("39","5","e-CoCo Star","3.5");
INSERT INTO urunler VALUES("40","5","f-Roko","3");
INSERT INTO urunler VALUES("41","5","g-Lungo","2");
INSERT INTO urunler VALUES("42","5","h-Matrax","1.5");
INSERT INTO urunler VALUES("43","1","k-Tava Alabalik","25");
INSERT INTO urunler VALUES("44","5","i-Cips","5");
INSERT INTO urunler VALUES("48","-1","a-Balik-Pisirme","35");
INSERT INTO urunler VALUES("47","-1","b-Balik","25");
INSERT INTO urunler VALUES("49","3","s- Ayran","3");
INSERT INTO urunler VALUES("50","3","t-Sc 1lt lim sef","8");
INSERT INTO urunler VALUES("51","1","l- Yarım Köfte","12.5");
INSERT INTO urunler VALUES("52","4","e-Nescafe","5");
INSERT INTO urunler VALUES("53","2","Top","7");



DROP TABLE IF EXISTS yonetim;

CREATE TABLE `yonetim` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kulad` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `sifre` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

INSERT INTO yonetim VALUES("1","yasin","1fac1bd0abdcc3bd079f8c1aacdeef6c");



