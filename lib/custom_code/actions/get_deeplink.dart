// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:io';
import 'package:shared_preferences/shared_preferences.dart';

Future<String> getDeeplink() async {
  // Add your function code here!
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String deeplink = prefs.getString('deeplink') ?? "";
  print("Raw Deeplink: $deeplink");

  try {
    final uri = Uri.parse(deeplink);

    if (Platform.isAndroid) {
      return uri.host;
    } else if (Platform.isIOS) {
      return uri.pathSegments.isNotEmpty ? uri.pathSegments.last : "";
    } else {
      return "";
    }
  } catch (e) {
    print("Error parsing deeplink: $e");
    return "";
  }
}
