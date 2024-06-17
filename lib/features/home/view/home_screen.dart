import 'package:flutter/material.dart';
import 'package:video_streaming/core/constants/app_endpoints.dart';
import 'package:video_streaming/core/routes/route_path.dart';
import 'package:video_streaming/features/video_player/view/video_player_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Video-1'),
            onTap: () => Navigator.of(context).pushNamed(RoutePath.video,
                arguments: const VideoPlayerScreenArgs(
                    videoUrl: AppEndpoints.videoUrl)),
          ),
          ListTile(
            title: const Text('Video-2'),
            onTap: () => Navigator.of(context).pushNamed(RoutePath.video,
                arguments: const VideoPlayerScreenArgs(
                    videoUrl: AppEndpoints.videoUrl2)),
          ),
          ListTile(
            title: const Text('Video-3'),
            onTap: () => Navigator.of(context).pushNamed(RoutePath.video,
                arguments: const VideoPlayerScreenArgs(
                    videoUrl: AppEndpoints.videoUrl3)),
          )
        ],
      ),
    );
  }
}
