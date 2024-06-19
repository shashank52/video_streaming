import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:media_kit/media_kit.dart';
import 'package:media_kit_video/media_kit_video.dart';

part 'video_streaming_event.dart';
part 'video_streaming_state.dart';

class VideoStreamingBloc
    extends Bloc<VideoStreamingEvent, VideoStreamingState> {
  VideoStreamingBloc() : super(VideoStreamingInitial()) {
    on<VideoStreamingPlayEvent>((event, emit) {
      emit(VideoStreamingLoading());
      final player = Player();

      final videoController = VideoController(player);
      player.open(Media(event.videoUrl));
      emit(VideoStreamingLoaded(
          player: player, videoController: videoController));
    });
  }
}
