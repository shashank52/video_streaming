import 'package:flutter/material.dart';
import 'package:media_kit/media_kit.dart';
import 'package:video_streaming/core/app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MediaKit.ensureInitialized();
  runApp(const App());
}
