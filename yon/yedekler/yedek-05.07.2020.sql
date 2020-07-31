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
) ENGINE=MyISAM AUTO_INCREMENT=110 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

INSERT INTO anliksiparis VALUES("108","4","1","3","c-Kasarli Mantar","25","1");
INSERT INTO anliksiparis VALUES("105","4","1","33","a-Bardak Cay","2","2");
INSERT INTO anliksiparis VALUES("106","10","1","4","d-Sebzeli Alabalik","28","4");
INSERT INTO anliksiparis VALUES("107","4","1","1","a-Tereyagli Alabalik","25","2");
INSERT INTO anliksiparis VALUES("89","5","1","1","a-Tereyagli Alabalik","25","2");
INSERT INTO anliksiparis VALUES("90","5","1","14","a-Kola","5","1");
INSERT INTO anliksiparis VALUES("91","5","1","17","d-Fanta","5","1");
INSERT INTO anliksiparis VALUES("95","3","1","1","a-Tereyagli Alabalik","25","3");
INSERT INTO anliksiparis VALUES("96","3","1","3","c-Kasarli Mantar","25","1");
INSERT INTO anliksiparis VALUES("97","3","1","27","m- Acili Salgam","5","1");
INSERT INTO anliksiparis VALUES("99","3","1","17","d-Fanta","5","1");
INSERT INTO anliksiparis VALUES("100","3","1","32","p-Acısiz Salgam","5","1");
INSERT INTO anliksiparis VALUES("101","2","1","1","a-Tereyagli Alabalik","25","2");



DROP TABLE IF EXISTS doluluk;

CREATE TABLE `doluluk` (
  `id` int(11) NOT NULL DEFAULT 1,
  `bos` int(11) NOT NULL DEFAULT 0,
  `dolu` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

INSERT INTO doluluk VALUES("1","24","5");



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

INSERT INTO gecicimasa VALUES("0","4","Ç-4","2065","126");
INSERT INTO gecicimasa VALUES("0","0","KG-Balık","5824","27");
INSERT INTO gecicimasa VALUES("0","7","Ç-7","891","53");
INSERT INTO gecicimasa VALUES("0","6","Ç-6","1261.5","65");
INSERT INTO gecicimasa VALUES("0","3","Ç-3","2300","115");
INSERT INTO gecicimasa VALUES("0","1","Ç-1","1283.5","60");
INSERT INTO gecicimasa VALUES("0","-1","Pisirme-Ucreti","198","6");
INSERT INTO gecicimasa VALUES("0","13","YÇ-3","140","6");
INSERT INTO gecicimasa VALUES("0","10","Araba","601","59");
INSERT INTO gecicimasa VALUES("0","2","Ç-2","219.5","12");
INSERT INTO gecicimasa VALUES("0","11","YÇ-1","10","2");
INSERT INTO gecicimasa VALUES("0","25","Karşı-1","280","9");
INSERT INTO gecicimasa VALUES("0","5","Ç-5","1350","64");
INSERT INTO gecicimasa VALUES("0","16","LÖ-2","100","4");
INSERT INTO gecicimasa VALUES("0","15","LÖ-1","71","5");
INSERT INTO gecicimasa VALUES("0","24","Demir-Ç-1","380","16");
INSERT INTO gecicimasa VALUES("0","29","Kare-Ç","11.5","5");



DROP TABLE IF EXISTS geciciurun;

CREATE TABLE `geciciurun` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `urunid` int(11) NOT NULL,
  `urunad` varchar(200) COLLATE utf8_turkish_ci NOT NULL,
  `hasilat` float NOT NULL,
  `adet` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

INSERT INTO geciciurun VALUES("1","1","a-Tereyagli Alabalik","5300","212");
INSERT INTO geciciurun VALUES("2","3","c-Kasarli Mantar","2150","86");
INSERT INTO geciciurun VALUES("3","0","KG Balık","5824","27");
INSERT INTO geciciurun VALUES("4","27","m- Acili Salgam","90","18");
INSERT INTO geciciurun VALUES("5","14","a-Kola","265","53");
INSERT INTO geciciurun VALUES("6","7","g-Kasarli Alabalik","476","17");
INSERT INTO geciciurun VALUES("7","17","d-Fanta","75","15");
INSERT INTO geciciurun VALUES("8","11","1-Firinda Helva ","380","19");
INSERT INTO geciciurun VALUES("9","33","a-Bardak Cay","56","28");
INSERT INTO geciciurun VALUES("10","23","j-zero","5","1");
INSERT INTO geciciurun VALUES("11","-1","Pişirme Ucreti","198","6");
INSERT INTO geciciurun VALUES("12","2","b-Izgara Kofte","450","18");
INSERT INTO geciciurun VALUES("13","37","r-su","1","1");
INSERT INTO geciciurun VALUES("14","25","k-MS Kays?","5","1");
INSERT INTO geciciurun VALUES("15","8","h-Sac Tava","180","6");
INSERT INTO geciciurun VALUES("16","12","2-Kunefe","100","10");
INSERT INTO geciciurun VALUES("17","30","n-Sade Soda","18","6");
INSERT INTO geciciurun VALUES("18","40","f-Roko","33","11");
INSERT INTO geciciurun VALUES("19","44","i-Cips","15","3");
INSERT INTO geciciurun VALUES("20","35","c-Orta Cay","125","5");
INSERT INTO geciciurun VALUES("21","49","s- Ayran","24","8");
INSERT INTO geciciurun VALUES("22","50","t-Sc 1lt lim sef","8","1");
INSERT INTO geciciurun VALUES("23","38","d-Fatasia","33","6");
INSERT INTO geciciurun VALUES("24","48","Balik-Pisirme","455","13");
INSERT INTO geciciurun VALUES("25","15","b-Ms Karisik","5","1");
INSERT INTO geciciurun VALUES("26","42","h-Matrax","4.5","3");
INSERT INTO geciciurun VALUES("27","4","d-Sebzeli Alabalik","224","8");
INSERT INTO geciciurun VALUES("28","16","c-SC Seftali","25","5");
INSERT INTO geciciurun VALUES("29","47","Balik","175","7");
INSERT INTO geciciurun VALUES("30","24","a-Bravo","65","10");
INSERT INTO geciciurun VALUES("31","34","b-Kucuk Cay","105","7");
INSERT INTO geciciurun VALUES("32","32","p-Acısiz Salgam","20","4");
INSERT INTO geciciurun VALUES("33","9","i-salata","25","5");
INSERT INTO geciciurun VALUES("34","5","e-Firin Kofte","25","1");
INSERT INTO geciciurun VALUES("35","31","o-Limonlu Soda","3.5","1");
INSERT INTO geciciurun VALUES("36","41","g-Lungo","6","3");
INSERT INTO geciciurun VALUES("37","20","g- Gazoz","5","1");
INSERT INTO geciciurun VALUES("38","28","b-Marasim","11","2");
INSERT INTO geciciurun VALUES("39","52","e-Nescafe","5","1");
INSERT INTO geciciurun VALUES("40","29","c-Marasim Cup","16","4");



DROP TABLE IF EXISTS gider;

CREATE TABLE `gider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ad` varchar(200) COLLATE utf8_turkish_ci NOT NULL,
  `fiyat` float NOT NULL,
  `tarih` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

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

INSERT INTO masalar VALUES("0","KG-Balık","0");
INSERT INTO masalar VALUES("-1","Pisirme-Ucreti","0");
INSERT INTO masalar VALUES("1","Ç-1","0");
INSERT INTO masalar VALUES("2","Ç-2","1");
INSERT INTO masalar VALUES("3","Ç-3","1");
INSERT INTO masalar VALUES("4","Ç-4","1");
INSERT INTO masalar VALUES("5","Ç-5","1");
INSERT INTO masalar VALUES("6","Ç-6","0");
INSERT INTO masalar VALUES("7","Ç-7","0");
INSERT INTO masalar VALUES("8","Ç-8","0");
INSERT INTO masalar VALUES("9","Ç-9","0");
INSERT INTO masalar VALUES("10","Araba","1");
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
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

INSERT INTO mutfak VALUES("126","10","4","d-Sebzeli Alabalik","4","14","27","1");



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
) ENGINE=MyISAM AUTO_INCREMENT=314 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

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



DROP TABLE IF EXISTS urunler;

CREATE TABLE `urunler` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `katid` int(11) NOT NULL,
  `ad` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `fiyat` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

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



DROP TABLE IF EXISTS yonetim;

CREATE TABLE `yonetim` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kulad` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `sifre` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

INSERT INTO yonetim VALUES("1","yasin","1fac1bd0abdcc3bd079f8c1aacdeef6c");



