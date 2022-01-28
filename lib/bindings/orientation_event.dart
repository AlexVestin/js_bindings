/// DeviceOrientation Event Specification
///
/// https://w3c.github.io/deviceorientation/
@JS('window')
@staticInterop
library orientation_event;

import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: html
dom */

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The provides web developers with information from the physical
/// orientation of the device running the web page.
@experimental
@JS()
@staticInterop
class DeviceOrientationEvent implements Event {
  external factory DeviceOrientationEvent(String type,
      [DeviceOrientationEventInit? eventInitDict]);
}

extension PropsDeviceOrientationEvent on DeviceOrientationEvent {
  ///  A number representing the motion of the device around the z
  /// axis, express in degrees with values ranging from 0 (inclusive)
  /// to 360 (exclusive).
  ///
  external double? get alpha;

  ///  A number representing the motion of the device around the x
  /// axis, express in degrees with values ranging from -180
  /// (inclusive) to 180 (exclusive). This represents a front to back
  /// motion of the device.
  ///
  external double? get beta;

  ///  A number representing the motion of the device around the y
  /// axis, express in degrees with values ranging from -90 (inclusive)
  /// to 90 (exclusive). This represents a left to right motion of the
  /// device.
  ///
  external double? get gamma;

  ///  A boolean that indicates whether or not the device is providing
  /// orientation data absolutely.
  ///
  external bool get absolute;
  external static Promise<PermissionState> requestPermission();
}

@anonymous
@JS()
@staticInterop
class DeviceOrientationEventInit implements EventInit {
  external factory DeviceOrientationEventInit(
      {double? alpha, double? beta, double? gamma, bool absolute = false});
}

extension PropsDeviceOrientationEventInit on DeviceOrientationEventInit {
  external double? get alpha;
  external set alpha(double? newValue);
  external double? get beta;
  external set beta(double? newValue);
  external double? get gamma;
  external set gamma(double? newValue);
  external bool get absolute;
  external set absolute(bool newValue);
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting
/// browsers.Experimental: This is an experimental technologyCheck
/// the Browser compatibility table carefully before using this in
/// production.
///  A object provides information about the amount of acceleration
/// the device is experiencing along all three axes.
@experimental
@JS()
@staticInterop
class DeviceMotionEventAcceleration {
  external factory DeviceMotionEventAcceleration();
}

extension PropsDeviceMotionEventAcceleration on DeviceMotionEventAcceleration {
  /// The amount of acceleration along the X axis. Read only.
  ///
  external double? get x;

  /// The amount of acceleration along the Y axis. Read only.
  ///
  external double? get y;

  /// The amount of acceleration along the Z axis. Read only.
  ///
  external double? get z;
}

///  Secure context: This feature is available only in secure
/// contexts (HTTPS), in some or all supporting browsers.
/// Experimental: This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  A object provides information about the rate at which the device
/// is rotating around all three axes.
@experimental
@JS()
@staticInterop
class DeviceMotionEventRotationRate {
  external factory DeviceMotionEventRotationRate();
}

extension PropsDeviceMotionEventRotationRate on DeviceMotionEventRotationRate {
  /// The amount of rotation around the Z axis, in degrees per second.
  ///
  external double? get alpha;

  /// The amount of rotation around the X axis, in degrees per second.
  ///
  external double? get beta;

  /// The amount of rotation around the Y axis, in degrees per second.
  ///
  external double? get gamma;
}

///  Experimental: This is an experimental technologyCheck the
/// Browser compatibility table carefully before using this in
/// production.
///  The provides web developers with information about the speed of
/// changes for the device's position and orientation.
///
///   Warning: Currently, Firefox and Chrome do not handle the
/// coordinates the same way. Take care about this while using them.
///
@experimental
@JS()
@staticInterop
class DeviceMotionEvent implements Event {
  external factory DeviceMotionEvent(String type,
      [DeviceMotionEventInit? eventInitDict]);
}

extension PropsDeviceMotionEvent on DeviceMotionEvent {
  ///  An object giving the acceleration of the device on the three
  /// axis X, Y and Z. Acceleration is expressed in m/s².
  ///
  external DeviceMotionEventAcceleration? get acceleration;

  ///  An object giving the acceleration of the device on the three
  /// axis X, Y and Z with the effect of gravity. Acceleration is
  /// expressed in m/s².
  ///
  external DeviceMotionEventAcceleration? get accelerationIncludingGravity;

  ///  An object giving the rate of change of the device's orientation
  /// on the three orientation axis alpha, beta and gamma. Rotation
  /// rate is expressed in degrees per seconds.
  ///
  external DeviceMotionEventRotationRate? get rotationRate;

  ///  A number representing the interval of time, in milliseconds, at
  /// which data is obtained from the device.
  ///
  external double get interval;
  external static Promise<PermissionState> requestPermission();
}

@anonymous
@JS()
@staticInterop
class DeviceMotionEventAccelerationInit {
  external factory DeviceMotionEventAccelerationInit(
      {double? x, double? y, double? z});
}

extension PropsDeviceMotionEventAccelerationInit
    on DeviceMotionEventAccelerationInit {
  external double? get x;
  external set x(double? newValue);
  external double? get y;
  external set y(double? newValue);
  external double? get z;
  external set z(double? newValue);
}

@anonymous
@JS()
@staticInterop
class DeviceMotionEventRotationRateInit {
  external factory DeviceMotionEventRotationRateInit(
      {double? alpha, double? beta, double? gamma});
}

extension PropsDeviceMotionEventRotationRateInit
    on DeviceMotionEventRotationRateInit {
  external double? get alpha;
  external set alpha(double? newValue);
  external double? get beta;
  external set beta(double? newValue);
  external double? get gamma;
  external set gamma(double? newValue);
}

@anonymous
@JS()
@staticInterop
class DeviceMotionEventInit implements EventInit {
  external factory DeviceMotionEventInit(
      {DeviceMotionEventAccelerationInit acceleration,
      DeviceMotionEventAccelerationInit accelerationIncludingGravity,
      DeviceMotionEventRotationRateInit rotationRate,
      double interval = 0});
}

extension PropsDeviceMotionEventInit on DeviceMotionEventInit {
  external DeviceMotionEventAccelerationInit get acceleration;
  external set acceleration(DeviceMotionEventAccelerationInit newValue);
  external DeviceMotionEventAccelerationInit get accelerationIncludingGravity;
  external set accelerationIncludingGravity(
      DeviceMotionEventAccelerationInit newValue);
  external DeviceMotionEventRotationRateInit get rotationRate;
  external set rotationRate(DeviceMotionEventRotationRateInit newValue);
  external double get interval;
  external set interval(double newValue);
}
