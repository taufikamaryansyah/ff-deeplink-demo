// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:adjust_sdk/adjust.dart';

Future<String> getDeeplink() async {
  // Add your function code here!
  String deeplink = await Adjust.getLastDeeplink() ?? "";
  final uri = Uri.parse(deeplink);
  try {
    deeplink = uri.path.replaceFirst("/", "");
  } catch (e) {
    deeplink = "";
  }
  return deeplink;
}
