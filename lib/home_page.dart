import 'package:flutter/material.dart';
import 'package:mvc/user.dart';
import 'package:mvc/user_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = UserController();
  // late User user;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //  user = controller.fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(controller.user.title),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('${controller.user.id}'),
            Text('${controller.user.userId}'),
            Text('${controller.user.completed}'),
          ],
        ),
      ),
    );
  }
}
