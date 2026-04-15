import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart'
    show BlocProvider, MultiBlocProvider;
import 'package:flutter_bloc_app/bloc/counter/counter_bloc.dart';
import 'package:flutter_bloc_app/bloc/switch/switch_bloc.dart';
import 'package:flutter_bloc_app/ui/counter/counter_screen.dart';
import 'package:flutter_bloc_app/ui/switch_example/switch_example_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => CounterBloc()),
        BlocProvider(create: (context) => SwitchBloc()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        home: SwitchExampleScreen(),
      ),
    );
  }
}
