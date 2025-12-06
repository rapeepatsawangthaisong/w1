import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(),
        '/second': (context) => const SecondPage(),

      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(color: Colors.greenAccent),
              margin: const EdgeInsets.only(top: 20, bottom: 20),
              child: Center(
                child: Column(
                  children: [
                    Text(
                      "ข้อมูลส่วนตัว",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        color: Colors.blue[900],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(80),
                      ),
                      child: ClipOval(
                        child: Image.network(
                          "http://e-sis.e-tech.ac.th/etech/Moduls/studentPhotos/photo/2567/6721619169425.jpg",
                          width: 150,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Rapeepat Sawangthaisong",
                      style: TextStyle(
                        color: Colors.blue[800],
                        fontSize: 26,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      "rapeepat.sawangthaisong@tech.ac.th",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.grey[600],
                      ),
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      buildIconBox(
                          Icons.phone, Colors.greenAccent, Colors.cyanAccent[100]!),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("เบอร์"),
                          Text("090-7888848"),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      buildIconBox(
                          Icons.cake, Colors.redAccent, Colors.deepOrangeAccent),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("วันเกิด"),
                          Text("04 กันยายน 2548"),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      buildIconBox(
                          Icons.location_on, Colors.orange, Colors.orangeAccent),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("ที่อยู่"),
                          Text("ชลบุรี"),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      buildIconBox(
                          Icons.school, Colors.purple, Colors.purpleAccent),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("การศึกษา"),
                          Text("วิทยาลัยเทคโนโลยีภาคตะวันออก (อี.เทค)"),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/second'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.cyanAccent,
                padding: const EdgeInsets.symmetric(vertical: 14.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: const Text("Change Page"),
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildIconBox(IconData icon, Color iconColor, Color bgColor) {
  return Container(
    padding: const EdgeInsets.all(10),
    decoration: BoxDecoration(
      color: bgColor.withValues(),
      borderRadius: BorderRadius.circular(8),
    ),
    child: Icon(
      icon,
      size: 30,
      color: iconColor,
    ),
  );
}

// ----------------------------------------

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              width: double.infinity,
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        child: ClipOval(
                          child: Image.network(
                            "https://i.pinimg.com/736x/af/2b/ec/af2becd7bbf7d06181c4a02ebb1a65bf.jpg",
                            width: 80,
                            height: 80,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 15),
                      Column(children: [Text("5"), Text("กำลังติดตาม")]),
                      SizedBox(width: 15),
                      Container(
                        width: 1.5,
                        height: 40,
                        color: Colors.grey.shade400,
                      ),
                      SizedBox(width: 15),
                      Column(children: [Text("3k"), Text("ผู้ติดตาม")]),
                      SizedBox(width: 15),
                      Container(
                        width: 1.5,
                        height: 40,
                        color: Colors.grey.shade400,
                      ),
                      SizedBox(width: 15),
                      Column(children: [Text("35"), Text("ถูกใจและบันทึก")]),
                    ],
                  ),
                  SizedBox(width: 20, height: 20),
                  Container(
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Rapeepat Sawangthaisong",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(width: 10),
                        Icon(Icons.verified, color: Colors.blue),
                      ],
                    ),
                  ),
                  SizedBox(width: 20, height: 5),
                  Container(
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.tiktok, color: Colors.grey),
                        Text(
                          "Akia",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[500],
                          ),
                        ),
                        SizedBox(width: 10),
                        Icon(Icons.arrow_drop_down, color: Colors.grey),
                      ],
                    ),
                  ),
                  SizedBox(width: 10, height: 10),
                  Container(
                    padding: EdgeInsets.only(top: 10, left: 0),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(width: 10),
                        ElevatedButton(
                          onPressed: () =>
                              Navigator.pushNamed(context, '/'),
                          child: Text(
                            "ติดตาม",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                              fixedSize: Size(300, 40),
                              backgroundColor: Colors.yellow,
                              foregroundColor: Colors.black,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              SizedBox(width: 50, height: 13),
                              Icon(Icons.share, color: Colors.black),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.only(top: 0, bottom: 10, left: 12),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        SizedBox(width: 10),
                        Image.network(
                          "https://www.meteorologiaenred.com/wp-content/uploads/2022/06/principales-diferencias-entre-magma-y-lava.jpg",                          width: 165,
                          height: 320,
                        ),
                        SizedBox(width: 10),
                        Image.network(
                          "https://scx2.b-cdn.net/gfx/news/2017/1-ice.jpg",
                          width: 170,
                          height: 320,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}





