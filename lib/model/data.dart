import 'package:flutter/foundation.dart';

class Film {
  String judul;
  String keterangan;
  String tahun;
  String thumbnail;

//constructnya
  Film({
    @required this.judul,
    @required this.keterangan,
    @required this.tahun,
    @required this.thumbnail,
  });
}

final filmList = <Film>[
  Film(
    judul: "Harry Potter and the Sorcerer's Stone",
    keterangan:
        "Harry Potter dan Batu Bertuah atau Harry Potter and the Philosopher\'s Stone (di Amerika Serikat, Pakistan, Sri Lanka dan India dikenal dengan judul Harry Potter and the Sorcerer\'s Stone) adalah sebuah film yang sangat sukses pada tahun 2001 yang diangkat dari novel fantasi J. K. Rowling dengan judul yang sama. Seorang agen Warner Brothers membeli hak cipta film ini dengan harga yang relatif murah, sebelum bukunya meledak di pasaran. Film ini dibuat di Studio Film Leavesden dan dirilis pada tahun 2001. Buku kedua, ketiga dan keempat juga telah diadaptasi ke dalam film. Rencananya petualangan Harry Potter akan berakhir di buku ketujuh, demikian juga filmnya. Film ini meraih pendapatan sebesar 950 juta dolar di seluruh dunia (berada di tempat ketiga film terlaris sepanjang masa setelah Titanic dan The Lord Of The Rings: The Return Of The Kings dan menerima 3 nominasi Oscar.",
    tahun: "2001",
    thumbnail:
        'https://upload.wikimedia.org/wikipedia/en/7/7a/Harry_Potter_and_the_Philosopher%27s_Stone_banner.jpg',
  ),
  Film(
    judul: "Cars 3",
    keterangan:
        'Cars 3 adalah sebuah film komedi animasi komputer 3D Amerika yang diproduksi oleh Pixar Animation Studios dan dirilis oleh Walt Disney Pictures. Film tersebut merupakan sebuah sekuel dari Cars (2006) dan Cars 2 (2011), dan installment ketiga dari waralaba Cars dan dirilis di Amerika Serikat pada 16 Juni 2017 dan di Indonesia pada tanggal 16 Agustus 2017.',
    tahun: '2017',
    thumbnail: 'https://jbkderry.files.wordpress.com/2017/10/maxresdefault.jpg',
  ),
  Film(
    judul: "Incredibles 2",
    keterangan:
        'Incredibles 2 adalah sebuah film pahlawan animasi komputer 3D Amerika 2018, dan merupakan sekuel dari The Incredibles (2004). Film tersebut diproduksi oleh Pixar Animation Studios, dan dirilis oleh Walt Disney Pictures. Film tersebut ditulis dan disutradarai oleh Brad Bird, penulis dan sutradara film pertamanya. Film tersebut dirilis pada 15 Juni 2018 di Amerika Serikat dan Indonesia dan juga diberi perilisan IMAX.',
    tahun: '2018',
    thumbnail:
        'https://lumiere-a.akamaihd.net/v1/images/p_incredible_hero_mobile_incredibles2_b77d1b2d.jpeg?region=0,0,640,487',
  ),
  Film(
    judul: "Toy Story 3",
    keterangan:
        "Toy Story 3 adalah film komedi animasi komputer Amerika 2010 yang diproduksi oleh Pixar Animation Studios untuk Walt Disney Pictures. Ini adalah angsuran ketiga dalam seri Toy Story Pixar, dan sekuel Toy Story 2 1999. Film ini disutradarai oleh Lee Unkrich, editor dari dua film pertama dan co-sutradara Toy Story 2, yang ditulis oleh Michael Arndt, sementara Unkrich menulis cerita bersama dengan John Lasseter dan Andrew Stanton, masing-masing sutradara dan penulis bersama dari dua film pertama.",
    tahun: '2012',
    thumbnail:
        'https://cdn-2.tstatic.net/jateng/foto/bank/images/toy-story-3_20181104_151518.jpg',
  ),
];
