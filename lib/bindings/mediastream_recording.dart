/// MediaStream Recording
///
/// https://w3c.github.io/mediacapture-record/
@JS('window')
library mediastream_recording;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'dom.dart';
import 'mediacapture_streams.dart';
import 'html.dart';
import 'file_a_p_i.dart';
import 'hr_time_3.dart';

///
///
///  The interface of the MediaStream Recording API provides
/// functionality to easily record media. It is created using the
/// [MediaRecorder()] constructor.
@JS()
class MediaRecorder extends EventTarget {
  external factory MediaRecorder(
      {MediaStream stream, MediaRecorderOptions? options});

  ///  Returns the stream that was passed into the constructor when the
  /// [MediaRecorder] was created.
  external MediaStream get stream;

  ///  Returns the MIME type that was selected as the recording
  /// container for the [MediaRecorder] object when it was created.
  external String get mimeType;

  ///  Returns the current state of the [MediaRecorder] object
  /// ([inactive], [recording], or [paused].)
  external RecordingState get state;
  external EventHandlerNonNull? get onstart;
  external set onstart(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onstop;
  external set onstop(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get ondataavailable;
  external set ondataavailable(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onpause;
  external set onpause(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onresume;
  external set onresume(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onerror;
  external set onerror(EventHandlerNonNull? newValue);

  ///  Returns the video encoding bit rate in use. This may differ from
  /// the bit rate specified in the constructor (if it was provided).
  external int get videoBitsPerSecond;

  ///  Returns the audio encoding bit rate in use. This may differ from
  /// the bit rate specified in the constructor (if it was provided).
  external int get audioBitsPerSecond;
  external BitrateMode get audioBitrateMode;

  ///  Begins recording media; this method can optionally be passed a
  /// [timeslice] argument with a value in milliseconds. If this is
  /// specified, the media will be captured in separate chunks of that
  /// duration, rather than the default behavior of recording the media
  /// in a single large chunk.
  /// mediaRecorder.start(timeslice)
  /// ...
  ///
  ///  record.onclick = function() {
  ///   mediaRecorder.start();
  ///   console.log("recorder started");
  ///  }
  ///
  /// ...
  external Object start([int? timeslice]);

  ///  Stops recording, at which point a [dataavailable] event
  /// containing the final [Blob] of saved data is fired. No more
  /// recording occurs.
  /// MediaRecorder.stop()
  /// ...
  ///
  ///  stop.onclick = function() {
  ///   mediaRecorder.stop();
  ///   console.log("recorder stopped, data available");
  ///  }
  ///
  /// ...
  external Object stop();

  /// Pauses the recording of media.
  /// MediaRecorder.pause()
  /// ...
  ///
  ///  pause.onclick = function() {
  ///    mediaRecorder.pause();
  ///    console.log("recording paused");
  ///  }
  ///
  /// ...
  external Object pause();

  /// Resumes recording of media after having been paused.
  /// MediaRecorder.resume()
  /// ...
  ///
  ///  pause.onclick = function() {
  ///   if(MediaRecorder.state === "recording") {
  ///    mediaRecorder.pause();
  ///    // recording paused
  ///   } else if(MediaRecorder.state === "paused") {
  ///    mediaRecorder.resume();
  ///    // resume recording
  ///   }
  ///  }
  ///
  /// ...
  external Object resume();

  ///  Requests a [Blob] containing the saved data received thus far
  /// (or since the last time [requestData()] was called. After calling
  /// this method, recording continues, but in a new [Blob].
  /// MediaRecorder.requestData()
  /// ...
  ///
  ///  captureMedia.onclick = function() {
  ///   mediaRecorder.requestData();
  ///   // makes snapshot available of data so far
  ///   // ondataavailable fires, then capturing continues
  ///   // in new Blob
  ///  }
  ///
  /// ...
  external Object requestData();
  external static bool isTypeSupported(String type);
}

@anonymous
@JS()
class MediaRecorderOptions {
  external String get mimeType;
  external set mimeType(String newValue);
  external int get audioBitsPerSecond;
  external set audioBitsPerSecond(int newValue);
  external int get videoBitsPerSecond;
  external set videoBitsPerSecond(int newValue);
  external int get bitsPerSecond;
  external set bitsPerSecond(int newValue);
  external BitrateMode get audioBitrateMode;
  external set audioBitrateMode(BitrateMode newValue);

  external factory MediaRecorderOptions(
      {String mimeType = '',
      int audioBitsPerSecond,
      int videoBitsPerSecond,
      int bitsPerSecond,
      BitrateMode audioBitrateMode = BitrateMode.variable});
}

@JS()
enum BitrateMode { constant, variable }

@JS()
enum RecordingState { inactive, recording, paused }

///
///
///  The interface represents events associated with a [Blob]. These
/// blobs are typically, but not necessarily, associated with media
/// content.
@JS()
class BlobEvent extends Event {
  external factory BlobEvent({String type, BlobEventInit eventInitDict});

  ///  A [Blob] representing the data associated with the event. The
  /// event was fired on the [EventTarget] because of something
  /// happening on that specific [Blob].
  external Blob get data;

  ///  A [DOMHighResTimeStamp] indicating the difference between the
  /// timestamp of the first chunk in data and the timestamp of the
  /// first chunk in the first BlobEvent produced by this recorder.
  /// Note that the timecode in the first produced BlobEvent does not
  /// need to be zero.
  external double get timecode;
}

@anonymous
@JS()
class BlobEventInit {
  external Blob get data;
  external set data(Blob newValue);
  external double get timecode;
  external set timecode(double newValue);

  external factory BlobEventInit({Blob data, double timecode});
}

@anonymous
@JS()
class MediaRecorderErrorEventInit extends EventInit {
  external Exception get error;
  external set error(Exception newValue);

  external factory MediaRecorderErrorEventInit({Exception error});
}

///
///
///  The interface represents errors returned by the MediaStream
/// Recording API. It is an [Event] object that encapsulates a
/// reference to a [DOMException] describing the error that occurred.
@JS()
class MediaRecorderErrorEvent extends Event {
  external factory MediaRecorderErrorEvent(
      {String type, MediaRecorderErrorEventInit eventInitDict});

  ///  A [DOMException] containing information about the error that
  /// occurred. Read only.
  external Exception get error;
}
