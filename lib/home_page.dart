import 'package:flutter/material.dart';
import 'package:flutter_cubit/flutter_cubit.dart';
import 'package:flutter_cubit_demo/cubit/counter_cubit.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
//  final cubit = CounterCubit()..increment();

  @override
  Widget build(BuildContext context) {
    return CubitBuilder<CounterCubit, int>(
      builder: (BuildContext context, int state) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Cubit State Management"),
          ),
          body: ListView.builder(
              shrinkWrap: true,
              itemCount: context.cubit<CounterCubit>().state,
              itemBuilder: (context, index) {
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: <Widget>[
                            Text("List Item Count    ${(index+1).toString()}"),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              }),
          floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FloatingActionButton(
                  child: Icon(Icons.add),
                  onPressed: () {
                    context.cubit<CounterCubit>()..increment();
                  }),
              FloatingActionButton(
                  child: Icon(Icons.remove),
                  onPressed: () {
                    context.cubit<CounterCubit>()..decrement();
                  }),
            ],
          ),
        );
      },
    );
  }
}
