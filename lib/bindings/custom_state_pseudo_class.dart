/// Custom State Pseudo Class
///
/// https://wicg.github.io/custom-state-pseudo-class/
@JS('window')
@staticInterop
library custom_state_pseudo_class;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'all_bindings.dart';
/* deps: html */

///  The interface of the Document_Object_Model stores a list of
/// possible states for a custom element to be in, and allows states
/// to be added and removed from the set.
@JS()
@staticInterop
class CustomStateSet {
  external factory CustomStateSet();
}

extension PropsCustomStateSet on CustomStateSet {
  ///  Adds a value to the set, first checking that the value is a
  /// [<dashed-ident>].
  ///
  /// CustomStateSet.add(value)
  ///
  external Object add(String value);
}
