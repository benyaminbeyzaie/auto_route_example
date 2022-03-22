import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class PageTwo extends StatefulWidget {
  final Patient patient;

  const PageTwo({
    Key? key,
    required this.patient,
  }) : super(key: key);

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            widget.patient.name +
                widget.patient.age.toString() +
                (widget.patient.optionalArgument ?? "----"),
          ),
          TextButton(
            onPressed: () {
              context.router.pop(widget.patient);
            },
            child: const Text("pop with patient"),
          )
        ],
      ),
    );
  }
}

class Patient {
  final String name;
  final int age;
  final String? optionalArgument;

  Patient({
    required this.age,
    required this.name,
    this.optionalArgument,
  });

  @override
  String toString() {
    return name + ": " + age.toString();
  }
}
