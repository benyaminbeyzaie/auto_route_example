import 'package:auto_route/auto_route.dart';
import 'package:auto_route_example/pages/page_two.dart';
import 'package:auto_route_example/router/router.gr.dart';
import 'package:flutter/material.dart';

class PageOne extends StatefulWidget {
  const PageOne({
    Key? key,
  }) : super(key: key);

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
              child: const Text("Second page"),
              onPressed: () {
                context.router.push(
                  RouteTwo(patient: Patient(age: 21, name: "ben")),
                );
              }),
          TextButton(
              child: const Text("await for result"),
              onPressed: () async {
                final res = await context.router.push(
                  RouteTwo(patient: Patient(age: 21, name: "ben")),
                );
                print(res.toString());
              }),
        ],
      ),
    );
  }
}
