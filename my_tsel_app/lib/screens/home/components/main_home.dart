import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:my_tsel_app/themes.dart';

class MainHome extends StatelessWidget {
  const MainHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        child: _mainHome(),
      ),
    );
  }

  Widget _mainHome() {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 200),
            child: Divider(
              thickness: 4,
              color: grey5Color,
            ),
          ),
          SizedBox(
            height: 10,
          ),

          // START Container info kartu
          Container(
            // End Container info kartu
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 80,
                          width: 150,
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          // margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "RP ",
                                          style: TextStyle(
                                            fontSize: 9,
                                          ),
                                        ),
                                        Text(
                                          "300.000",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        IconButton(
                                          onPressed: () {},
                                          constraints: BoxConstraints(),
                                          icon: Image.asset(
                                              "assets/icons/add.png"),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Nomor aktif sampai",
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "04 Feb 2023",
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        // ignore: prefer_const_constructors
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 80,
                          width: 150,
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          // margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "Silver",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        IconButton(
                                          onPressed: () {},
                                          constraints: BoxConstraints(),
                                          icon: Image.asset(
                                              "assets/icons/gold-tsel.png"),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  Text("0"),
                                  Text(" Poin"),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 180,
                      width: 195,
                      padding: EdgeInsets.symmetric(vertical: 8),
                      // margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(top: 8, left: 10),
                            child: Row(
                              children: [
                                Text(
                                  "Kuota Kamu",
                                  style: TextStyle(
                                    fontWeight: semiBold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 8),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  const SizedBox(
                                    width: 13,
                                  ),
                                  _listKuota(
                                    "globe-blue.png",
                                    "70 GB",
                                    "Internet",
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  _listKuota(
                                    "app.png",
                                    "5 GB",
                                    "Aplikasi",
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  _listKuota(
                                    "sms.png",
                                    "20 Min",
                                    "SMS",
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  _listKuota(
                                    "Pphone.png",
                                    "120 Min",
                                    "Telepon",
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  _listKuota(
                                    "rp.png",
                                    "Rp 200",
                                    "Monetary",
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            padding:
                                EdgeInsets.only(top: 20, left: 10, right: 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Rincian Pemakaian",
                                  style: TextStyle(
                                    fontWeight: semiBold,
                                  ),
                                ),
                                IconButton(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  constraints: BoxConstraints(),
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.arrow_right_alt_sharp,
                                    size: 30.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                // END Container info kartu
              ],
            ),
          ),
          // START Container info kartu

          const SizedBox(
            height: 10,
          ),

          // START Scroll icon
          // ignore: avoid_unnecessary_containers
          Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  _iconScroll("glob-red.png", "Paket", "Internet"),
                  _iconScroll("gift.png", "Kirim", "Hadiah"),
                  _iconScroll("phone.png", "Pulsa", ""),
                  _iconScroll("voucher.png", "Voucher", "Internet"),
                  _iconScroll("sim-card.png", "Migrasi", "Ke Halo"),
                  _iconScroll("cart.png", "Beli", "Kartu Halo"),
                  _iconScroll("scooter.png", "Jelajah", "Nusantara"),
                  _iconScroll("wallet.png", "Telkomsel", "Paylater"),
                  _iconScroll("qr.png", "Scan", "QR promo"),
                  _iconScroll("more.png", "Lainya", ""),
                ],
              ),
            ),
          ),
          // END Scroll icon

          const SizedBox(
            height: 10,
          ),

          // START Scroll Container paket Kuota
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Rekomendasi Untukmu",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Lihat Semua",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.blue[800],
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Row(
                    children: [
                      _containerPaket(
                        "Combo Sakti",
                        "7 GB",
                        "32.000",
                        "30 Hari",
                      ),
                      _containerPaket(
                        "Combo Sakti",
                        "17 GB",
                        "41.000",
                        "7 Hari",
                      ),
                      _containerPaket(
                        "Internet",
                        "6 GB",
                        "17.000",
                        "1 Hari",
                      ),
                      _containerPaket(
                        "Promo Internet dan Telpon",
                        "2 GB",
                        "3.000",
                        "3 Hari",
                      ),
                      _containerPaket(
                        "Telpon Unlimited",
                        "333353 Min",
                        "10.000",
                        "7 Hari",
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          // END Scroll Container paket Kuota

          const SizedBox(
            height: 20,
          ),

          // Start Banner Penawaran
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 20,
              ),
              Text(
                "Penawaran Pilihan",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      _bannerPenawaran("images-1.png"),
                      _bannerPenawaran("images-2.png"),
                      _bannerPenawaran("images-1.png"),
                      _bannerPenawaran("images-2.png"),
                      _bannerPenawaran("images-1.png"),
                      _bannerPenawaran("images-2.png"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // END Banner Penawaran

          const SizedBox(
            height: 20,
          ),

          // Start Banner Apa yang baru
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 20,
              ),
              Text(
                "Apa yang baru",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      _bannerPenawaran("images-1.png"),
                      _bannerPenawaran("images-2.png"),
                      _bannerPenawaran("images-1.png"),
                      _bannerPenawaran("images-2.png"),
                      _bannerPenawaran("images-1.png"),
                      _bannerPenawaran("images-2.png"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      _bannerPenawaran("images-2.png"),
                      _bannerPenawaran("images-1.png"),
                      _bannerPenawaran("images-2.png"),
                      _bannerPenawaran("images-1.png"),
                      _bannerPenawaran("images-2.png"),
                      _bannerPenawaran("images-1.png"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // END Banner Apa yang baru

          const SizedBox(
            height: 20,
          ),

          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            width: Get.width,
            decoration: BoxDecoration(
              color: Colors.grey[100],
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // ignore: prefer_const_constructors
                    Text(
                      "Butuh bantuan?",
                      // ignore: prefer_const_constructors
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Lihat Semua",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.blue[800],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                _getHelp(
                  "fax.png",
                  "FAQ",
                  "complain.png",
                  "Lacak Komplain",
                  true,
                ),
                const SizedBox(
                  height: 10,
                ),
                _getHelp(
                  "reservation.png",
                  "Reservarsi GraPARI",
                  "connection.png",
                  "Cek Koneksi",
                  true,
                ),
                const SizedBox(
                  height: 10,
                ),
                _getHelp(
                  "shop.png",
                  "GraPARI Online",
                  "phone-time.png",
                  "Hubungi Kami",
                  false,
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Column _listKuota(String icon, String qty, String nama) {
    return Column(
      children: [
        IconButton(
          onPressed: () {},
          icon: Image.asset("assets/icons/$icon"),
        ),
        Text(
          "$qty",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "$nama",
          style: TextStyle(
            fontSize: 12,
          ),
        ),
      ],
    );
  }

  Row _getHelp(
      String icon1, String text1, String icon2, String text2, bool dash) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Image.asset("assets/icons/$icon1"),
                ),
                Text(
                  "$text1",
                ),
              ],
            ),
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                dash == true
                    ? Dash(length: 155, dashColor: Colors.grey)
                    : Dash(length: 155, dashColor: grey2Color)
              ],
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Image.asset("assets/icons/$icon2"),
                ),
                Text(
                  "$text2",
                ),
              ],
            ),
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                dash == true
                    ? Dash(length: 140, dashColor: Colors.grey)
                    : Dash(length: 140, dashColor: grey2Color)
              ],
            ),
          ],
        ),
      ],
    );
  }

  Row _iconScroll(String icon, String nama1, String nama2) {
    return Row(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {},
              icon: Image.asset("assets/icons/$icon"),
            ),
            // ignore: unnecessary_string_interpolations
            Text("$nama1"),
            // ignore: unnecessary_string_interpolations
            Text("$nama2"),
          ],
        ),
        // ignore: prefer_const_constructors
        SizedBox(
          width: 13,
        ),
      ],
    );
  }

  Container _bannerPenawaran(String gambar) {
    return Container(
      // ignore: prefer_const_constructors
      margin: EdgeInsets.only(right: 20),
      width: Get.width * 0.7,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage("assets/images/$gambar"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Container _containerPaket(String nama, String qty, String harga, String exp) {
    return Container(
      height: 85,
      width: 270,
      // ignore: sort_child_properties_last
      child: Column(
        children: [
          // ignore: prefer_const_constructors
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Text("$nama"),
            ],
          ),
          // ignore: prefer_const_constructors
          SizedBox(
            height: 1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("$qty",
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
              Text("Rp$harga",
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
            ],
          ),
          // ignore: prefer_const_constructors
          SizedBox(
            height: 1,
          ),
          Row(
            children: [
              Text("$exp"),
            ],
          ),
        ],
      ),
      // ignore: prefer_const_constructors
      margin: EdgeInsets.only(right: 20),
      // ignore: prefer_const_constructors
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      // margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
