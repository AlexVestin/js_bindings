/// Screen Wake Lock API
///
/// https://w3c.github.io/screen-wake-lock/
@JS('window')
library screen_wake_lock;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'html.dart';
import 'dom.dart';

///
///   Draft
///   This page is not complete.
///
///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///
///  The interface of the [Screen Wake Lock API] prevents device
/// screens from dimming or locking when an application needs to keep
/// running.
///
///  The system wake lock is exposed through the global
/// [Navigator.wakelock] property.
@JS()
class WakeLock {
  external Promise<WakeLockSentinel> request(
      [WakeLockType? type = WakeLockType.screen]);

  external factory WakeLock();
}

///
///   Draft
///   This page is not complete.
///
///  Secure contextThis feature is available only in secure contexts
/// (HTTPS), in some or all supporting browsers.
///
///  The interface of the [Screen Wake Lock API] provides a handle to
/// the underlying platform wake lock and can be manually released
/// and reacquired. An [Object] representing the wake lock is
/// returned via the [navigator.wakelock.request()] method.
///
///  An acquired can be released manually via the [release()] method,
/// or automatically via the platform wake lock. This can happen if
/// the document becomes inactive or looses visibility, if the device
/// is low on power or the user turns on a power save mode. Releasing
/// all instances of a given wake lock type will cause the underlying
/// platform wake lock to be released.
@JS()
class WakeLockSentinel extends EventTarget {
  ///  Returns a boolean indicating whether the [WakeLockSentinel] has
  /// been released.
  external bool get released;

  ///  Returns a [String] representation of the currently acquired
  /// [WakeLockSentinel] type.
  /// 	Return values are:
  ///
  ///    ['screen']: A screen wake lock. Prevents devices from dimming
  /// or locking the screen.
  ///
  ///
  external WakeLockType get type;

  ///  Releases the [WakeLockSentinel], returning a [Promise] that is
  /// resolved once the sentinel has been successfully released.
  /// WakeLockSentinel.release().then(...);
  external Promise<Object> release();
  external EventHandlerNonNull? get onrelease;
  external set onrelease(EventHandlerNonNull? newValue);

  external factory WakeLockSentinel();
}

@JS()
enum WakeLockType { screen }