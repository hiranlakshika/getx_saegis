import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_saegis/controller.dart';
import 'package:getx_saegis/demo.dart';
import 'package:getx_saegis/pages/page_one.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      themeMode: ThemeMode.system,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late MyController _myController;

  @override
  void initState() {
    _myController = Get.put(MyController());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              child: const Text('Page One'),
              onPressed: () => Get.to(() =>  PageOne()),
            ),
            ElevatedButton(
                onPressed: () {
                  var student = Student()
                    ..name = 'My Name'
                    ..age = 20;
                  var info = student.getNameAndAge();
                  Get.snackbar('Student Info', 'name ${info.item1}  Age ${info.item2}');
                },
                child: const Text('Get Student')),
          ],
        ),
      ),
    );
  }
}
