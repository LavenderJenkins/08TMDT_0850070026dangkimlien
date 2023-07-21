import 'package:flutter/material.dart';

void main() {
  runApp(
    //nơi bạn định cấu hình các thuộc tính chung của ứng dụng
    MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'My app', // used by the OS task switcher
      home: MyHomeScreen(),
    ),
  );
}

class MyHomeScreen extends StatelessWidget {
  //@override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Trang chu'),
      ),
      body: SafeArea(
        child: Container(
            alignment: Alignment.topCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  'Đặng Kim Liên, 08TMĐT',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                ),
                buildRowLayout(),
                const SizedBox(
                  height: 20,
                ),
                Image.network(
                  'https://res.cloudinary.com/practicaldev/image/fetch/s--QVNsJDfg--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_auto%2Cw_880/https://flutter.dev/images/flutter-logo-sharing.png',
                ),
                ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Nut da duoc bam!')));
                    },
                    child: const Text('Bấm vào đây!')),
              ],
            )),
      ),
    );
  }
}

Widget buildRowLayout() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        color: Colors.blue,
        height: 100,
        width: 100,
      ),
      Container(
        color: Colors.green,
        height: 100,
        width: 100,
      ),
      Container(
        color: Colors.orange,
        height: 100,
        width: 100,
      )
    ],
  );
}
