import 'package:flutter/material.dart';
// Uncomment lines 3 and 6 to view the visual layout at runtime.
// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  // debugPaintSizeEnabled = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Pura Rambut Siwi',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Bali, Kab.Jembrana, Kec.Mendoyo, Ds.Yehembang Kangin',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.star,
            color: Color.fromARGB(255, 255, 247, 0),
          ),
          const Text('100'),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    Widget textSection = const Padding(
      padding: EdgeInsets.all(32),
      child: Text(
        'Pura Bali Rambut Siwi terletak di kabupaten Jembrana, sebelah timur desa Yeh Embang, distrik Mendoyo. Jaraknya sekitar 10 km dari Negara dan dapat dijangkau oleh mobil, kendaraan umum atau sepeda motor karena terletak di jalan utama Denpasar - Gilimanuk. Candi Utama terletak di tebing dan memberikan view samudra Hindia yang menakjubkan. Candi-candi ini memiliki bangunan candi perwakilan yang terletak di samping jalan utama Denpasar ke Gilimanuk. Nama Rambut Siwi mengandung peninggalan yang merupakan kunci rambut bijak (rambut) yang dihormati (siwi). Pura Rambut Siwi adalah salah satu pura Dang Kahyangan jagat yang terletak di Kabupaten Jembrana Bali. Pura Dang Kahyangan sendiri merupakan tempat suci yang diperuntukkan untuk menghormati guru-guru suci seperti pandeta, Maha Rsi dan para Empu. Dan pura Rambu Siwi berkaitan dengan perjalanan suci Dang Hyang Nirartha atau Dang Hyang Dwijendra, beliau diberi gelar juga Pedanda Sakti Bawu Rawuh yang berjasa menanamkan ajaran-ajaran agama Hindu. Lokasi pura utama berada di atas tebing pinggir pantai, berlatar belakang pemandangan alam laut Samudera Hindia, sehingga suasananya indah, tenang, damai dan penuh aura spiritual, tidak mengherankan tempat ini menjadi tempat meditasi ataupun menenangkan diri yang paling ideal. Selain sebagai tempat suci, pura Rambut Siwi juga menjadi salah satu objek wisata di Kabupaten Jembrana yang menjadi satu tujuan wajib saat mengagendakan tour dengan tujuan wisata Bali Barat. Sebelum sampai di tujuan utama anda akan disuguhi hamparan persawahan seolah menyambut kedatangan pengunjung. Pura Rambut Siwi terlihat megah dan cantik berdiri di pinggir tebing, berbatasan langsung dengan pantai, suasana alam sekitarnya indah dan asri, membuat anda betah berlama-lama mengagumi keagungan Tuhan ini. Apalagi kunjungan wisatawan ke Pura ini cukup sepi tidak seperti pura Tanah Lot yang selalu ramai, sehingga di sini anda bisa lebih leluasa untuk bersantai dan menikmati keindahan yang disuguhkan, apalagi jika anda datang pada sore hari keindahan matahari terbenam menjadi daya tarik istimewa. Jika anda warga Hindu dan melakukan perjalanan wisata rohani atau perjalanan Tirtayatra dari arah Denpasar menuju ke arah Bali Barat dan Utara seperti dengan tujuan ke pura Pulaki, Melanting, Pabean, Pemuteran dan ke Pulau Menjangan, maka tentunya juga tidak akan melewatkan Pura Rambut Siwi untuk melakukan persembahyangan. Di kawasan Pura Rambut Siwi setidaknya anda bertemu dengan 8 buah pura termasuk pura Pesanggrahan dan juga pura yang berada di bawah tebing tepi pantai, tempat pertama persembahyangan adalah pura Pesanggrahan kemudian Pura Taman, Penataran, Goa Tirta, Melanting, Pura Gading Wani, pura Ratu Gede Dalem Ped dan tempat terakhir persembahyangan adalah di kawasan pura Luhur yaitu Pura Rambut Siwi. Yang menjadi inti dari pura di kawasan ini adalah Pura Penataran dan pura Luhur (Rambut Siwi) sedangkan lainnya adalah pura Pesanakan. Pada pelataran utama pura luhur terdapat sejumlah bangunan suci, seperti Padma, meru tumpang tiga linggih Ida Betara Pedanda Sakti Bawu Rawuh (Dang Hyang Nirartha), Pengayeng Betara Gunung Agung, Gedong, meru tumpang dua stana Batari Dewa Ayu Ulun Danu, palinggih Rambut Sedana, Peselang, Taksu serta sejumlah bangunan suci lainnya.',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Wisata Di Bali',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Tempat Wisata'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/lake.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
