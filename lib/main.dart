import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GETX BOTTOMSHEET'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            //TANPA MENGGUNAKAN GETX
            // showModalBottomSheet(
            //   context: context,
            //   builder: (context) => Container(
            //     height: 300,
            //     color: Colors.amber,
            //     child: ListView(
            //       children: const [
            //         ListTile(
            //           leading: Icon(Icons.abc_outlined),
            //           title: Text('data'),
            //         ),
            //         ListTile(
            //           leading: Icon(Icons.abc_outlined),
            //           title: Text('data'),
            //         ),
            //         ListTile(
            //           leading: Icon(Icons.abc_outlined),
            //           title: Text('data'),
            //         ),
            //       ],
            //     ),
            //   ),
            // );

//MENGGUNAKAN GETX
            Get.bottomSheet(
              Container(
                height: 300,
                color: Colors.amber,
                child: ListView(
                  children: const [
                    ListTile(
                      leading: Icon(Icons.abc_outlined),
                      title: Text('data'),
                    ),
                    ListTile(
                      leading: Icon(Icons.abc_outlined),
                      title: Text('data'),
                    ),
                    ListTile(
                      leading: Icon(Icons.abc_outlined),
                      title: Text('data'),
                    ),
                  ],
                ),
              ),
            );
          },
          child: const Text('Show Bottomsheet'),
        ),
      ),
    );
  }
}
