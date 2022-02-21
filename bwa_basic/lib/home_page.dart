import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.asset('assets/images/pantai.jpg'),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 30
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Pantai Teluk Penyu',
                            style: TextStyle(
                              fontWeight: FontWeight.w700
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Cilacap, Jawa Tengah",
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 12,
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.favorite,
                            color: Color(0xffFFB800),
                          ),
                          Text(
                            '4.2'
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 30,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.call,
                            color: Color(0xff00a3ff),
                            size: 18,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'CALL',
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Color(0xff00a3ff)
                            ) 
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.near_me,
                            color: Color(0xff00a3ff),
                            size: 18,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'ROUTE',
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Color(0xff00a3ff),
                            ) 
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.share,
                            color: Color(0xff00a3ff),
                            size: 18,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'SHARE',
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Color(0xff00a3ff)
                            ) 
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 30,
                  ),
                  child: Column(
                    children: <Widget>[
                      Text("Teluk Penyu merupakan kawasan pantai diselatan Kabupaten Cilacap, utamanya sepanjang pesisir dari Kecamatan Cilacap Selatan yang lokasinya tidak langsung berhubungan dengan Samudra India atau Indonesia karena dikelilingi oleh Pulau Nusakambangan. Pantai Teluk Penyu berjarak 2 KM ke arah timur dari pusat Pemerintah Kabupaten Cilacap dan dapat dijangkau dengan kendaraan umum dan pribadi, Teluk ini cukup memiliki pemandangan yang indah dengan luas kira-kira 14 ha.\n\nArea Teluk Penyu yang biasa dikunjungi oleh para pengunjung (Utamanya penduduk dan wisatawan lokal) biasanya mulai dari pelabuhan perikanan Samudra dari hingga bibir pantai yang biasa disebut Area 70 (merujuk kepada sebutan masyarakat sekitar terhadap kawasan tangki-tangki penimbunan bahan bakar dari PT Pertamina UP IV) dimana para wisatawan atau pengunjung bisa melihat langsung Pulau Nusakambangan dari bibir pantai.",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        )
      )
    );
  }
}