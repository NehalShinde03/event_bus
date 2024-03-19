import 'package:event_bus_appevent/demo/demo2.dart';
import 'package:event_bus_appevent/demo/demo_view.dart';
import 'package:event_bus_plus/event_bus_plus.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: DemoView.routeName,
      routes: route,
    );
  }

  Map<String, WidgetBuilder> get route => <String, WidgetBuilder>{
    DemoView.routeName:DemoView.builder,
    Demo2.routeName:Demo2.builder
  };

}

EventBus eventBus = EventBus();