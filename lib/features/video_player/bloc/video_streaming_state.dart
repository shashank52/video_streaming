part of 'video_streaming_bloc.dart';

abstract class VideoStreamingState extends Equatable {
  const VideoStreamingState();
}

final class VideoStreamingInitial extends VideoStreamingState {
  @override
  List<Object> get props => [];
}

final class VideoStreamingLoading extends VideoStreamingState {
  @override
  List<Object> get props => [];
}

final class VideoStreamingLoaded extends VideoStreamingState {
  const VideoStreamingLoaded({required this.vlcPlayerController});
  final VlcPlayerController vlcPlayerController;
  @override
  List<Object> get props => [vlcPlayerController];
}
