import 'package:event_bus_appevent/demo/demo_event.dart';
import 'package:event_bus_appevent/main.dart';
import 'package:event_bus_appevent/utilties/event.dart';
import 'package:flutter/material.dart';

class Demo2 extends StatefulWidget {
  const Demo2({super.key});

  static const String routeName = '/demo2';
  static Widget builder(BuildContext context){
    return Demo2();
  }

  @override
  State<Demo2> createState() => _Demo2State();
}

class _Demo2State extends State<Demo2> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            ElevatedButton(onPressed: () {
              eventBus.fire(ColorChangeEvent(color: Colors.red));
            }, child: Text('red')),

            ElevatedButton(onPressed: () {
               eventBus.fire(ColorChangeEvent(color: Colors.indigo));
            }, child: Text('indigo')),

          ],
        ),
      ),
    );
  }
}
