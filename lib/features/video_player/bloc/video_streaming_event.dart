part of 'video_streaming_bloc.dart';

abstract class VideoStreamingEvent extends Equatable {
  const VideoStreamingEvent();
}

class VideoStreamingPlayEvent extends VideoStreamingEvent {
  const VideoStreamingPlayEvent({required this.videoUrl});
  final String videoUrl;
  @override
  List<Object> get props => [videoUrl];
}
