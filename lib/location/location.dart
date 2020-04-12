import 'dart:html';
import 'dart:js' as js;

import 'package:experiments_with_web/app_level/widgets/desktop/custom_scaffold.dart';
import 'package:experiments_with_web/location/utilities/stringify.dart';

import 'package:flutter/material.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({Key key}) : super(key: key);

  static const _obj = '{ name: "AseemWangoo", location: "Earth" }';

  @override
  Widget build(BuildContext context) {
    //
    return CustomScaffold(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            OutlineButton(
              onPressed: () {
                final _res = stringify(_obj);
                window.console.log(_res);

                js.context['console'].callMethod(
                  'log',
                  <String>['still in the same page', '\n', 'asas'],
                );
              },
              child: const Text('Call JS Stringify'),
            ),
            OutlineButton(
              onPressed: () {
                js.context['console'].callMethod(
                  'log',
                  <String>['I am', '\n', 'CONSOLEDDD'],
                );
              },
              child: const Text('Print in Console'),
            ),
          ],
        ),
      ),
    );
  }
}

// CANNOT WORK ON WEB SERVER
