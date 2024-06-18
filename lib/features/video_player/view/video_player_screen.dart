import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_vlc_player/flutter_vlc_player.dart';
import 'package:video_streaming/features/video_player/bloc/video_streaming_bloc.dart';

class VideoPlayerScreenArgs {
  const VideoPlayerScreenArgs({required this.videoUrl});
  final String videoUrl;
}

class VideoPlayerScreen extends StatelessWidget {
  const VideoPlayerScreen({super.key, required this.args});

  final VideoPlayerScreenArgs args;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Video Player'),
        ),
        body: BlocProvider(
          create: (context) => VideoStreamingBloc()
            ..add(VideoStreamingPlayEvent(videoUrl: args.videoUrl)),
          child: Center(
            child: BlocBuilder<VideoStreamingBloc, VideoStreamingState>(
              builder: (context, state) {
                if (state is VideoStreamingInitial ||
                    state is VideoStreamingLoading) {
                  return const CircularProgressIndicator();
                } else if (state is VideoStreamingLoaded) {
                  return VlcPlayer(
                    controller: state.vlcPlayerController,
                    aspectRatio: 16 / 9,
                    placeholder:
                        const Center(child: CircularProgressIndicator()),
                  );
                }
                return const SizedBox.shrink();
              },
            ),
          ),
        ));
  }
}
