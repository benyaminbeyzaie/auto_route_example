// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../pages/page_one.dart' as _i1;
import '../pages/page_two.dart' as _i2;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    RouteOne.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.PageOne());
    },
    RouteTwo.name: (routeData) {
      final args = routeData.argsAs<RouteTwoArgs>();
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i2.PageTwo(key: args.key, patient: args.patient));
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(RouteOne.name, path: '/'),
        _i3.RouteConfig(RouteTwo.name, path: '/page-two')
      ];
}

/// generated route for
/// [_i1.PageOne]
class RouteOne extends _i3.PageRouteInfo<void> {
  const RouteOne() : super(RouteOne.name, path: '/');

  static const String name = 'RouteOne';
}

/// generated route for
/// [_i2.PageTwo]
class RouteTwo extends _i3.PageRouteInfo<RouteTwoArgs> {
  RouteTwo({_i4.Key? key, required _i2.Patient patient})
      : super(RouteTwo.name,
            path: '/page-two', args: RouteTwoArgs(key: key, patient: patient));

  static const String name = 'RouteTwo';
}

class RouteTwoArgs {
  const RouteTwoArgs({this.key, required this.patient});

  final _i4.Key? key;

  final _i2.Patient patient;

  @override
  String toString() {
    return 'RouteTwoArgs{key: $key, patient: $patient}';
  }
}
