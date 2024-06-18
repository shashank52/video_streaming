import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_vlc_player/flutter_vlc_player.dart';

part 'video_streaming_event.dart';
part 'video_streaming_state.dart';

class VideoStreamingBloc
    extends Bloc<VideoStreamingEvent, VideoStreamingState> {
  VideoStreamingBloc() : super(VideoStreamingInitial()) {
    on<VideoStreamingPlayEvent>((event, emit) {
      emit(VideoStreamingLoading());
      final VlcPlayerController videoPlayerController =
          VlcPlayerController.network(
        event.videoUrl,
        hwAcc: HwAcc.full,
        autoPlay: true,
        options: VlcPlayerOptions(),
      );
      emit(VideoStreamingLoaded(vlcPlayerController: videoPlayerController));
    });
  }
}
