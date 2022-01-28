/// Web Speech API
///
/// https://wicg.github.io/speech-api/
@JS('window')
@staticInterop
library speech_api;

import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: dom
html */

///  The interface of the Web Speech API is the controller interface
/// for the recognition service; this also handles the
/// [SpeechRecognitionEvent] sent from the recognition service.
///
///   Note: On some browsers, like Chrome, using Speech Recognition
/// on a web page involves a server-based recognition engine. Your
/// audio is sent to a web service for recognition processing, so it
/// won't work offline.
///
@JS()
@staticInterop
class SpeechRecognition implements EventTarget {
  external factory SpeechRecognition();
}

extension PropsSpeechRecognition on SpeechRecognition {
  ///  Returns and sets a collection of [SpeechGrammar] objects that
  /// represent the grammars that will be understood by the current
  /// [SpeechRecognition].
  ///
  external SpeechGrammarList get grammars;
  external set grammars(SpeechGrammarList newValue);

  ///  Returns and sets the language of the current
  /// [SpeechRecognition]. If not specified, this defaults to the HTML
  /// attribute value, or the user agent's language setting if that
  /// isn't set either.
  ///
  external String get lang;
  external set lang(String newValue);

  ///  Controls whether continuous results are returned for each
  /// recognition, or only a single result. Defaults to single
  /// ([false].)
  ///
  external bool get continuous;
  external set continuous(bool newValue);

  ///  Controls whether interim results should be returned ([true]) or
  /// not ([false].) Interim results are results that are not yet final
  /// (e.g. the [SpeechRecognitionResult.isFinal] property is [false].)
  ///
  external bool get interimResults;
  external set interimResults(bool newValue);

  ///  Sets the maximum number of [SpeechRecognitionAlternative]s
  /// provided per result. The default value is 1.
  ///
  external int get maxAlternatives;
  external set maxAlternatives(int newValue);

  ///  Starts the speech recognition service listening to incoming
  /// audio with intent to recognize grammars associated with the
  /// current [SpeechRecognition].
  ///
  /// start()
  ///
  external Object start();

  ///  Stops the speech recognition service from listening to incoming
  /// audio, and attempts to return a [SpeechRecognitionResult] using
  /// the audio captured so far.
  ///
  /// stop();
  ///
  external Object stop();

  ///  Stops the speech recognition service from listening to incoming
  /// audio, and doesn't attempt to return a [SpeechRecognitionResult].
  ///
  /// abort()
  ///
  external Object abort();
  external EventHandlerNonNull? get onaudiostart;
  external set onaudiostart(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onsoundstart;
  external set onsoundstart(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onspeechstart;
  external set onspeechstart(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onspeechend;
  external set onspeechend(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onsoundend;
  external set onsoundend(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onaudioend;
  external set onaudioend(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onresult;
  external set onresult(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onnomatch;
  external set onnomatch(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onerror;
  external set onerror(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onstart;
  external set onstart(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onend;
  external set onend(EventHandlerNonNull? newValue);
}

enum SpeechRecognitionErrorCode {
  noSpeech,
  aborted,
  audioCapture,
  network,
  notAllowed,
  serviceNotAllowed,
  badGrammar,
  languageNotSupported
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the Web Speech API represents error messages
/// from the recognition service.
@JS()
@staticInterop
class SpeechRecognitionErrorEvent implements Event {
  external factory SpeechRecognitionErrorEvent(
      String type, SpeechRecognitionErrorEventInit eventInitDict);
}

extension PropsSpeechRecognitionErrorEvent on SpeechRecognitionErrorEvent {
  /// Returns the type of error raised.
  ///
  external SpeechRecognitionErrorCode get error;

  /// Returns a message describing the error in more detail.
  ///
  external String get message;
}

@anonymous
@JS()
@staticInterop
class SpeechRecognitionErrorEventInit implements EventInit {
  external factory SpeechRecognitionErrorEventInit(
      {SpeechRecognitionErrorCode error, String message = ''});
}

extension PropsSpeechRecognitionErrorEventInit
    on SpeechRecognitionErrorEventInit {
  external SpeechRecognitionErrorCode get error;
  external set error(SpeechRecognitionErrorCode newValue);
  external String get message;
  external set message(String newValue);
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the Web Speech API represents a single word
/// that has been recognized by the speech recognition service.
@experimental
@JS()
@staticInterop
class SpeechRecognitionAlternative {
  external factory SpeechRecognitionAlternative();
}

extension PropsSpeechRecognitionAlternative on SpeechRecognitionAlternative {
  ///  Returns a string containing the transcript of the recognized
  /// word.
  ///
  external String get transcript;

  ///  Returns a numeric estimate of how confident the speech
  /// recognition system is that the recognition is correct.
  ///
  external double get confidence;
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the Web Speech API represents a single
/// recognition match, which may contain multiple
/// [SpeechRecognitionAlternative] objects.
@experimental
@JS()
@staticInterop
class SpeechRecognitionResult {
  external factory SpeechRecognitionResult();
}

extension PropsSpeechRecognitionResult on SpeechRecognitionResult {
  ///  Returns the length of the "array" — the number of
  /// [SpeechRecognitionAlternative] objects contained in the result
  /// (also referred to as "n-best alternatives".)
  ///
  external int get length;

  ///  A standard getter that allows [SpeechRecognitionAlternative]
  /// objects within the result to be accessed via array syntax.
  ///
  /// var myAlternative = speechRecognitionResultInstance[0];
  ///
  external SpeechRecognitionAlternative item(int index);

  ///  A boolean value that states whether this result is final (true)
  /// or not (false) — if so, then this is the final time this result
  /// will be returned; if not, then this result is an interim result,
  /// and may be updated later on.
  ///
  external bool get isFinal;
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the Web Speech API represents a list of
/// [SpeechRecognitionResult] objects, or a single one if results are
/// being captured in [continuous] mode.
@experimental
@JS()
@staticInterop
class SpeechRecognitionResultList {
  external factory SpeechRecognitionResultList();
}

extension PropsSpeechRecognitionResultList on SpeechRecognitionResultList {
  ///  Returns the length of the "array" — the number of
  /// [SpeechRecognitionResult] objects in the list.
  ///
  external int get length;

  ///  A standard getter that allows [SpeechRecognitionResult] objects
  /// in the list to be accessed via array syntax.
  ///
  /// var myResult = speechRecognitionResultListInstance[0];
  ///
  external SpeechRecognitionResult item(int index);
}

///  The interface of the Web Speech API represents the event object
/// for the [result] and [nomatch] events, and contains all the data
/// associated with an interim or final speech recognition result.
@experimental
@JS()
@staticInterop
class SpeechRecognitionEvent implements Event {
  external factory SpeechRecognitionEvent(
      String type, SpeechRecognitionEventInit eventInitDict);
}

extension PropsSpeechRecognitionEvent on SpeechRecognitionEvent {
  ///  Returns the lowest index value result in the
  /// [SpeechRecognitionResultList] "array" that has actually changed.
  ///
  external int get resultIndex;

  ///  Returns a [SpeechRecognitionResultList] object representing all
  /// the speech recognition results for the current session.
  ///
  external SpeechRecognitionResultList get results;
}

@anonymous
@JS()
@staticInterop
class SpeechRecognitionEventInit implements EventInit {
  external factory SpeechRecognitionEventInit(
      {int resultIndex = 0, SpeechRecognitionResultList results});
}

extension PropsSpeechRecognitionEventInit on SpeechRecognitionEventInit {
  external int get resultIndex;
  external set resultIndex(int newValue);
  external SpeechRecognitionResultList get results;
  external set results(SpeechRecognitionResultList newValue);
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the Web Speech API represents a set of words or
/// patterns of words that we want the recognition service to
/// recognize.
///  Grammar is defined using JSpeech Grammar Format (JSGF.) Other
/// formats may also be supported in the future.
@experimental
@JS()
@staticInterop
class SpeechGrammar {
  external factory SpeechGrammar();
}

extension PropsSpeechGrammar on SpeechGrammar {
  ///  Sets and returns a string containing the grammar from within in
  /// the [SpeechGrammar] object instance.
  ///
  external String get src;
  external set src(String newValue);

  /// Sets and returns the weight of the [SpeechGrammar] object.
  ///
  external double get weight;
  external set weight(double newValue);
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the Web Speech API represents a list of
/// [SpeechGrammar] objects containing words or patterns of words
/// that we want the recognition service to recognize.
///  Grammar is defined using JSpeech Grammar Format (JSGF.) Other
/// formats may also be supported in the future.
@experimental
@JS()
@staticInterop
class SpeechGrammarList {
  external factory SpeechGrammarList();
}

extension PropsSpeechGrammarList on SpeechGrammarList {
  ///  Returns the number of [SpeechGrammar] objects contained in the
  /// [SpeechGrammarList].
  ///
  external int get length;

  ///  Standard getter — allows individual [SpeechGrammar] objects to
  /// be retrieved from the [SpeechGrammarList] using array syntax.
  ///
  /// var myFirstGrammar = speechGrammarListInstance[0];
  ///
  external SpeechGrammar item(int index);

  ///  Takes a grammar present at a specific URI and adds it to the
  /// [SpeechGrammarList] as a new [SpeechGrammar] object.
  ///
  /// speechGrammarListInstance.addFromURI(src,weight);
  ///
  external Object addFromURI(String src, [double? weight = 1.0]);

  ///  Takes a grammar present in a specific [DOMString] within the
  /// code base (e.g. stored in a variable) and adds it to the
  /// [SpeechGrammarList] as a new [SpeechGrammar] object.
  ///
  /// speechGrammarListInstance.addFromString(string,weight);
  ///
  external Object addFromString(String string, [double? weight = 1.0]);
}

///  The interface of the Web Speech API is the controller interface
/// for the speech service; this can be used to retrieve information
/// about the synthesis voices available on the device, start and
/// pause speech, and other commands besides.
@JS()
@staticInterop
class SpeechSynthesis implements EventTarget {
  external factory SpeechSynthesis();
}

extension PropsSpeechSynthesis on SpeechSynthesis {
  ///  A boolean value that returns [true] if the utterance queue
  /// contains as-yet-unspoken utterances.
  ///
  external bool get pending;

  ///  A boolean value that returns [true] if an utterance is currently
  /// in the process of being spoken — even if [SpeechSynthesis] is in
  /// a paused state.
  ///
  external bool get speaking;

  ///  A boolean value that returns [true] if the [SpeechSynthesis]
  /// object is in a paused state.
  ///
  external bool get paused;
  external EventHandlerNonNull? get onvoiceschanged;
  external set onvoiceschanged(EventHandlerNonNull? newValue);

  ///  Adds an [utterance] to the utterance queue; it will be spoken
  /// when any other utterances queued before it have been spoken.
  ///
  /// speak(utterance)
  ///
  external Object speak(SpeechSynthesisUtterance utterance);

  /// Removes all utterances from the utterance queue.
  ///
  /// cancel()
  ///
  external Object cancel();

  /// Puts the [SpeechSynthesis] object into a paused state.
  ///
  /// pause()
  ///
  external Object pause();

  ///  Puts the [SpeechSynthesis] object into a non-paused state:
  /// resumes it if it was already paused.
  ///
  /// resume()
  ///
  external Object resume();

  ///  Returns a list of [SpeechSynthesisVoice] objects representing
  /// all the available voices on the current device.
  ///
  /// getVoices()
  ///
  external Iterable<SpeechSynthesisVoice> getVoices();
}

///
///   The interface of the Web Speech API represents a speech
/// request.
///   It contains the content the speech service should read and
/// information about how to read it (e.g. language, pitch and
/// volume.)
///
@JS()
@staticInterop
class SpeechSynthesisUtterance implements EventTarget {
  external factory SpeechSynthesisUtterance([String? text]);
}

extension PropsSpeechSynthesisUtterance on SpeechSynthesisUtterance {
  ///  Gets and sets the text that will be synthesised when the
  /// utterance is spoken.
  ///
  external String get text;
  external set text(String newValue);

  /// Gets and sets the language of the utterance.
  ///
  external String get lang;
  external set lang(String newValue);

  ///  Gets and sets the voice that will be used to speak the
  /// utterance.
  ///
  external SpeechSynthesisVoice? get voice;
  external set voice(SpeechSynthesisVoice? newValue);

  /// Gets and sets the volume that the utterance will be spoken at.
  ///
  external double get volume;
  external set volume(double newValue);

  ///  Gets and sets the speed at which the utterance will be spoken
  /// at.
  ///
  external double get rate;
  external set rate(double newValue);

  ///  Gets and sets the pitch at which the utterance will be spoken
  /// at.
  ///
  external double get pitch;
  external set pitch(double newValue);
  external EventHandlerNonNull? get onstart;
  external set onstart(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onend;
  external set onend(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onerror;
  external set onerror(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onpause;
  external set onpause(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onresume;
  external set onresume(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onmark;
  external set onmark(EventHandlerNonNull? newValue);
  external EventHandlerNonNull? get onboundary;
  external set onboundary(EventHandlerNonNull? newValue);
}

///  The interface of the Web Speech API contains information about
/// the current state of [SpeechSynthesisUtterance] objects that have
/// been processed in the speech service.
@JS()
@staticInterop
class SpeechSynthesisEvent implements Event {
  external factory SpeechSynthesisEvent(
      String type, SpeechSynthesisEventInit eventInitDict);
}

extension PropsSpeechSynthesisEvent on SpeechSynthesisEvent {
  ///  Returns the [SpeechSynthesisUtterance] instance that the event
  /// was triggered on.
  ///
  external SpeechSynthesisUtterance get utterance;

  ///  Returns the index position of the character in the
  /// [SpeechSynthesisUtterance.text] that was being spoken when the
  /// event was triggered.
  ///
  external int get charIndex;
  external int get charLength;

  ///  Returns the elapsed time in seconds after the
  /// [SpeechSynthesisUtterance.text] started being spoken that the
  /// event was triggered at.
  ///
  external double get elapsedTime;

  ///  Returns the name associated with certain types of events
  /// occurring as the [SpeechSynthesisUtterance.text] is being spoken:
  /// the name of the SSML marker reached in the case of a [mark]
  /// event, or the type of boundary reached in the case of a
  /// [boundary] event.
  ///
  external String get name;
}

@anonymous
@JS()
@staticInterop
class SpeechSynthesisEventInit implements EventInit {
  external factory SpeechSynthesisEventInit(
      {SpeechSynthesisUtterance utterance,
      int charIndex = 0,
      int charLength = 0,
      double elapsedTime = 0,
      String name = ''});
}

extension PropsSpeechSynthesisEventInit on SpeechSynthesisEventInit {
  external SpeechSynthesisUtterance get utterance;
  external set utterance(SpeechSynthesisUtterance newValue);
  external int get charIndex;
  external set charIndex(int newValue);
  external int get charLength;
  external set charLength(int newValue);
  external double get elapsedTime;
  external set elapsedTime(double newValue);
  external String get name;
  external set name(String newValue);
}

enum SpeechSynthesisErrorCode {
  canceled,
  interrupted,
  audioBusy,
  audioHardware,
  network,
  synthesisUnavailable,
  synthesisFailed,
  languageUnavailable,
  voiceUnavailable,
  textTooLong,
  invalidArgument,
  notAllowed
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The interface of the Web Speech API contains information about
/// any errors that occur while processing [SpeechSynthesisUtterance]
/// objects in the speech service.
@experimental
@JS()
@staticInterop
class SpeechSynthesisErrorEvent implements SpeechSynthesisEvent {
  external factory SpeechSynthesisErrorEvent(
      String type, SpeechSynthesisErrorEventInit eventInitDict);
}

extension PropsSpeechSynthesisErrorEvent on SpeechSynthesisErrorEvent {
  ///  Returns an error code indicating what has gone wrong with a
  /// speech synthesis attempt.
  ///
  external SpeechSynthesisErrorCode get error;
}

@anonymous
@JS()
@staticInterop
class SpeechSynthesisErrorEventInit implements SpeechSynthesisEventInit {
  external factory SpeechSynthesisErrorEventInit(
      {SpeechSynthesisErrorCode error});
}

extension PropsSpeechSynthesisErrorEventInit on SpeechSynthesisErrorEventInit {
  external SpeechSynthesisErrorCode get error;
  external set error(SpeechSynthesisErrorCode newValue);
}

///
///   The interface of the Web Speech API represents a voice that the
/// system supports.
///   Every has its own relative speech service including information
/// about language, name and URI.
///
@JS()
@staticInterop
class SpeechSynthesisVoice {
  external factory SpeechSynthesisVoice();
}

extension PropsSpeechSynthesisVoice on SpeechSynthesisVoice {
  ///  Returns the type of URI and location of the speech synthesis
  /// service for this voice.
  ///
  external String get voiceURI;

  /// Returns a human-readable name that represents the voice.
  ///
  external String get name;

  ///  Returns a BCP 47 language tag indicating the language of the
  /// voice.
  ///
  external String get lang;

  ///  A boolean value indicating whether the voice is supplied by a
  /// local speech synthesizer service ([true]), or a remote speech
  /// synthesizer service ([false].)
  ///
  external bool get localService;

  ///  A boolean value indicating whether the voice is the default
  /// voice for the current app language ([true]), or not ([false].)
  ///
  @JS('default')
  @staticInterop
  external bool get mDefault;
}
