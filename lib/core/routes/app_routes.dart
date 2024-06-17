import 'package:flutter/material.dart';
import 'package:video_streaming/core/routes/route_path.dart';
import 'package:video_streaming/features/video_player/view/video_player_screen.dart';

import '../../features/home/view/home_screen.dart';

class AppRoutes {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutePath.home:
        return MaterialPageRoute(
          settings: settings,
          builder: ((context) => const HomeScreen()),
        );

      case RoutePath.video:
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => VideoPlayerScreen(
            args: settings.arguments as VideoPlayerScreenArgs,
          ),
        );
      default:
        return MaterialPageRoute(
          settings: settings,
          builder: ((context) => const HomeScreen()),
        );
    }
  }
}
