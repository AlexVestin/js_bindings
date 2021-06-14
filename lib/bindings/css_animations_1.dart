/// CSS Animations Level 1
///
/// https://drafts.csswg.org/css-animations/
@JS('window')
library css_animations_1;

import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'dom.dart';
import 'cssom_1.dart';
import 'html.dart';

///
///   Experimental
///    This is an experimental technologyCheck the Browser
/// compatibility table carefully before using this in production.
///  The interface represents events providing information related to
/// animations.
///
///
@experimental
@JS()
class AnimationEvent extends Event {
  external factory AnimationEvent(
      {String type, AnimationEventInit? animationEventInitDict});

  ///  Is a [DOMString] containing the value of the [animation-name]
  /// that generated the animation.
  external String get animationName;

  ///  Is a [float] giving the amount of time the animation has been
  /// running, in seconds, when this event fired, excluding any time
  /// the animation was paused. For an [animationstart] event, is [0.0]
  /// unless there was a negative value for [animation-delay], in which
  /// case the event will be fired with containing [(-1 * delay)].
  external double get elapsedTime;

  ///  Is a [DOMString], starting with ['::'], containing the name of
  /// the pseudo-element the animation runs on. If the animation
  /// doesn't run on a pseudo-element but on the element, an empty
  /// string: [''].
  external String get pseudoElement;
}

@anonymous
@JS()
class AnimationEventInit extends EventInit {
  external String get animationName;
  external set animationName(String newValue);
  external double get elapsedTime;
  external set elapsedTime(double newValue);
  external String get pseudoElement;
  external set pseudoElement(String newValue);

  external factory AnimationEventInit(
      {String animationName = '',
      double elapsedTime = 0.0,
      String pseudoElement = ''});
}

///
///
///  The interface describes an object representing a set of styles
/// for a given keyframe. It corresponds to the contents of a single
/// keyframe of a [@keyframes] [at-rule].
///
///
@JS()
class CSSKeyframeRule extends CSSRule {
  ///  Represents the key of the keyframe, like ['10%'], ['75%']. The
  /// [from] keyword maps to ['0%'] and the [to] keyword maps to
  /// ['100%'].
  external String get keyText;
  external set keyText(String newValue);

  ///  Returns a [CSSStyleDeclaration] of the CSS style associated with
  /// the keyframe.
  external CSSStyleDeclaration get style;

  external factory CSSKeyframeRule();
}

///
///
///  The interface describes an object representing a complete set of
/// keyframes for a CSS animation. It corresponds to the contents of
/// a whole [@keyframes] [at-rule].
///
///
@JS()
class CSSKeyframesRule extends CSSRule {
  ///  Represents the name of the keyframes, used by the
  /// [animation-name] property.
  external String get name;
  external set name(String newValue);

  /// Returns a [CSSRuleList] of the keyframes in the list.
  external CSSRuleList get cssRules;
  external Object appendRule(String rule);
  external Object deleteRule(String select);

  ///  Returns a keyframe rule corresponding to the given key. The key
  /// is a [DOMString] containing an index of the keyframe to be
  /// returned, resolving to a percentage between [0%] and [100%]. If
  /// no such keyframe exists, returns [null].
  /// CSSKeyframesRule.findRule(select);
  ///
  ///   The CSS includes a keyframes at-rule. This will be the first CSSRule returned by document.styleSheets[0].cssRules.
  ///   myRules[0] returns a CSSKeyframesRule object. Calling findRule("to") returns a CSSKeyframeRule representing the second rule.
  /// @keyframes slidein {
  ///  from {
  ///   transform: translateX(0%);
  ///  }
  ///
  ///  to {
  ///   transform: translateX(100%);
  ///  }
  /// }
  ///
  /// let myRules = document.styleSheets[0].cssRules;
  /// let keyframes = myRules[0]; // a CSSKeyframesRule
  /// console.log(keyframes.findRule('to')); // a CSSKeyframeRule object
  external CSSKeyframeRule? findRule(String select);

  external factory CSSKeyframesRule();
}