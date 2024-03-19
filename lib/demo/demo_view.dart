import 'package:event_bus_appevent/demo/demo2.dart';
import 'package:event_bus_appevent/demo/demo_cubit.dart';
import 'package:event_bus_appevent/demo/demo_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DemoView extends StatefulWidget {
  const DemoView({super.key});

  static const String routeName = '/demo_view';

  static Widget builder(BuildContext context) {
    return BlocProvider(
        create: (context) => DemoCubit(const DemoState(color: Colors.black)),
        child: const DemoView());
  }

  @override
  State<DemoView> createState() => _DemoViewState();
}

class _DemoViewState extends State<DemoView> {
  int value = 0;
  Color? changeColor;

  @override
  void initState() {
    super.initState();
    context.read<DemoCubit>().change();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<DemoCubit, DemoState>(
          builder: (context, state) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 200,
                  height: 200,
                  color: state.color,
                ),
                ElevatedButton(
                    onPressed: () =>
                        Navigator.pushNamed(context, Demo2.routeName),
                    child: Text('click me'))
              ],
            );
          },
        ),
      ),
    );
  }
}
