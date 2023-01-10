import 'package:flutter/material.dart';
// import 'package:my_tsel_app/screens/home/components/card_info_home_1.dart';
import 'package:my_tsel_app/screens/home/components/main_home.dart';
import 'package:my_tsel_app/themes.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Widget headerContent(String icon, String text) {
    //   return Container(
    //     margin: EdgeInsets.only(
    //       top: 15,
    //       right: 10,
    //     ),
    //     padding: EdgeInsets.fromLTRB(8, 5, 2, 5),
    // decoration: BoxDecoration(
    //   borderRadius: BorderRadius.all(
    //     Radius.circular(10),
    //   ),
    //   color: red3Color,
    // ),
    //     child: Row(
    //       children: [
    //         Image.asset(
    //           icon,
    //           width: 10,
    //         ),
    //         SizedBox(width: 10),
    //         Text(
    //           text,
    //           style: bold13.copyWith(color: Colors.white),
    //         ),
    //         Icon(
    //           Icons.chevron_right_rounded,
    //           color: Colors.white,
    //         ),
    //       ],
    //     ),
    //   );
    // }

    Widget header() {
      return Container(
        margin: EdgeInsets.only(top: 16),
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Adam',
                  style: bold15.copyWith(color: Colors.white),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(width: 12),
                    Icon(
                      Icons.notifications,
                      color: Colors.white,
                      size: 28,
                    ),
                    SizedBox(width: 12),
                    Image.asset(
                      'assets/icons/icon-help.png',
                      width: 25,
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  '081296714711',
                  style: bold15.copyWith(color: Colors.white),
                ),
                SizedBox(width: 8),
                Text(
                  "PraBayar",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 9,
                    fontWeight: FontWeight.bold,
                    background: Paint()
                      ..color = Colors.white
                      ..strokeWidth = 9
                      ..strokeJoin = StrokeJoin.round
                      ..strokeCap = StrokeCap.round
                      ..style = PaintingStyle.stroke,
                  ),
                ),
                IconButton(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  constraints: BoxConstraints(),
                  icon: Icon(
                    Icons.expand_more,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25.0),
                          topRight: Radius.circular(25.0),
                        ),
                      ),
                      builder: (context) {
                        return SizedBox(
                          height: 380,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              SizedBox(
                                height: 10,
                              ),
                              Center(
                                child: Container(
                                  width: 50,
                                  height: 4,
                                  decoration: BoxDecoration(
                                    color: grey2Color,
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(20),
                                      topLeft: Radius.circular(20),
                                      bottomLeft: Radius.circular(20),
                                      bottomRight: Radius.circular(20),
                                    ),
                                  ),
                                  padding:
                                      EdgeInsets.only(bottom: 150, right: 150),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                    top: 20, left: 15, right: 15, bottom: 5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Pilih akun",
                                      style: extraBold18,
                                    ),
                                    Divider(),
                                  ],
                                ),
                              ),
                              Container(
                                height: 70,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 5),
                                decoration: const BoxDecoration(
                                  color: Color.fromRGBO(236, 245, 252, 1),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Adam Musyafa",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 3,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "081296714711",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              "PraBayar",
                                              style: TextStyle(
                                                color: Colors.red,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Text(
                                          "Aktif hingga 04 Feb 2023",
                                          style: TextStyle(
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        IconButton(
                                          onPressed: () {},
                                          constraints: BoxConstraints(),
                                          icon: Image.asset(
                                              "assets/icons/checklist.png"),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              _containerGantiAkun(
                                "Nanang Pratama",
                                "085769281657",
                                "Aktif hingga 28 Jun 2023",
                              ),
                              Divider(),
                              _containerGantiAkun(
                                "Djanuardi",
                                "089603879403",
                                "Aktif hingga 25 Sep 2025",
                              ),
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(
                                        left: 8, right: 15, top: 10),
                                    child: Row(
                                      children: [
                                        Column(
                                          children: [
                                            IconButton(
                                              onPressed: () {},
                                              constraints: BoxConstraints(),
                                              icon: Image.asset(
                                                  "assets/icons/add-solid.png"),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Text("Tambahkan nomor telepon",
                                                style: bold15),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                )
              ],
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Text(
                  'Selamat Tahun Baru 2023',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                )
              ],
            ),
            // Row(
            //   children: [
            //     // headerContent('assets/icons/icon-love.png', '19 Poin'),
            //     // headerContent('assets/icons/icon-star.png', 'Daily Check In'),
            //   ],
            // ),
          ],
        ),
      );
    }

    // Widget cardInfo() {
    //   return Column(
    //     children: [
    //       SizedBox(height: 30),
    //       CardInfoHome(),
    //     ],
    //   );

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.topRight,
            stops: [0.6, 1],
            colors: [red2Color, yellowColor],
          ),
        ),
        child: ListView(
          children: [
            header(),
            SizedBox(height: 30),
            MainHome(),
            // cardInfo(),
          ],
        ),
      ),
    );
  }

  Container _containerGantiAkun(String nama, String number, String exp) {
    return Container(
      height: 70,
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "$nama",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 3,
              ),
              Row(
                children: [
                  Text(
                    "$number",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "PraBayar",
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "$exp",
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
