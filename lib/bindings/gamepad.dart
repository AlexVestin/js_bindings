/// Gamepad
///
/// https://w3c.github.io/gamepad/
@JS('window')
@staticInterop
library gamepad;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: hr_time_3
html
dom
gamepad_extensions */

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface of the Gamepad API defines an individual gamepad
/// or other controller, allowing access to information such as
/// button presses, axis positions, and id.
///  A Gamepad object can be returned in one of two ways: via the
/// [gamepad] property of the [gamepadconnected] and
/// [gamepaddisconnected] events, or by grabbing any position in the
/// array returned by the [Navigator.getGamepads()] method.
@JS()
@staticInterop
class Gamepad {
  external factory Gamepad();
}

extension PropsGamepad on Gamepad {
  ///  A [DOMString] containing identifying information about the
  /// controller.
  ///
  external String get id;

  ///  An integer that is auto-incremented to be unique for each device
  /// currently connected to the system.
  ///
  external int get index;

  ///  A boolean indicating whether the gamepad is still connected to
  /// the system.
  ///
  external bool get connected;

  ///  A [DOMHighResTimeStamp] representing the last time the data for
  /// this gamepad was updated.
  ///
  external double get timestamp;

  ///  A string indicating whether the browser has remapped the
  /// controls on the device to a known layout.
  ///
  external GamepadMappingType get mapping;

  ///  An array representing the controls with axes present on the
  /// device (e.g. analog thumb sticks).
  ///
  external Iterable<double> get axes;

  ///  An array of [gamepadButton] objects representing the buttons
  /// present on the device.
  ///
  external Iterable<GamepadButton> get buttons;
  external GamepadHand get hand;
  external Iterable<GamepadHapticActuator> get hapticActuators;
  external GamepadPose? get pose;
  external Iterable<GamepadTouch> get touchEvents;
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The interface defines an individual button of a gamepad or other
/// controller, allowing access to the current state of different
/// types of buttons available on the control device.
///  A object is returned by querying any value of the array returned
/// by the [buttons] property of the [Gamepad] interface.
@JS()
@staticInterop
class GamepadButton {
  external factory GamepadButton();
}

extension PropsGamepadButton on GamepadButton {
  ///  A boolean value indicating whether the button is currently
  /// pressed ([true]) or unpressed ([false]).
  ///
  external bool get pressed;

  ///  A boolean value indicating whether the button is currently
  /// touched ([true]) or not touched ([false]).
  ///
  external bool get touched;

  ///  A double value used to represent the current state of analog
  /// buttons, such as the triggers on many modern gamepads. The values
  /// are normalized to the range 0.0 —1.0, with 0.0 representing a
  /// button that is not pressed, and 1.0 representing a button that is
  /// fully pressed.
  ///
  external double get value;
}

enum GamepadMappingType { empty, standard, xrStandard }

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
///  The GamepadEvent interface of the Gamepad API contains
/// references to gamepads connected to the system, which is what the
/// gamepad events [Window.gamepadconnected] and
/// [Window.gamepaddisconnected] are fired in response to.
@JS()
@staticInterop
class GamepadEvent implements Event {
  external factory GamepadEvent(String type, GamepadEventInit eventInitDict);
}

extension PropsGamepadEvent on GamepadEvent {
  ///  Returns a [Gamepad] object, providing access to the associated
  /// gamepad data for the event fired.
  ///
  external Gamepad get gamepad;
}

@anonymous
@JS()
@staticInterop
class GamepadEventInit implements EventInit {
  external factory GamepadEventInit({Gamepad gamepad});
}

extension PropsGamepadEventInit on GamepadEventInit {
  external Gamepad get gamepad;
  external set gamepad(Gamepad newValue);
}
