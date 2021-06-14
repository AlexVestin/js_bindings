/// Trusted Types
///
/// https://w3c.github.io/webappsec-trusted-types/dist/spec/
@JS('window')
library trusted_types;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'html.dart';

///
///
///  The interface of the [Trusted Types API] represents a string
/// that a developer can insert into an injection sink that will
/// render it as HTML. These objects are created via
/// [TrustedTypePolicy.createHTML()] and therefore have no
/// constructor.
///
///  The value of a TrustedHTML object is set when the object is
/// created and cannot be changed by JavaScript as there is no setter
/// exposed.
@JS()
class TrustedHTML {
  @override
  external String toString();

  /// Returns a JSON representation of the stored data.
  /// var json = TrustedHTML.toJSON();
  external String toJSON();

  external factory TrustedHTML();
}

///
///
///  The interface of the [Trusted Types API] represents a string
/// with an uncompiled script body that a developer can insert into
/// an injection sink that might execute the script. These objects
/// are created via [TrustedTypePolicy.createScript()] and therefore
/// have no constructor.
///
///  The value of a TrustedScript object is set when the object is
/// created and cannot be changed by JavaScript as there is no setter
/// exposed.
@JS()
class TrustedScript {
  @override
  external String toString();

  /// Returns a JSON representation of the stored data.
  /// var json = TrustedScript.toJSON();
  external String toJSON();

  external factory TrustedScript();
}

///
///
///  The interface of the [Trusted Types API] represents a string
/// that a developer can insert into an injection sink that will
/// parse it as a URL of an external script. These objects are
/// created via [TrustedTypePolicy.createScriptURL()] and therefore
/// have no constructor.
///
///  The value of a TrustedScriptURL object is set when the object is
/// created and cannot be changed by JavaScript as there is no setter
/// exposed.
@JS()
class TrustedScriptURL {
  @override
  external String toString();

  /// Returns a JSON representation of the stored data.
  /// var json = TrustedScriptURL.toJSON();
  external String toJSON();

  external factory TrustedScriptURL();
}

///
///
///  The interface of the [Trusted Types API] creates policies and
/// allows the verification of Trusted Type objects against created
/// policies.
@JS()
class TrustedTypePolicyFactory {
  ///  Creates a [TrustedTypePolicy] object that implements the rules
  /// passed as [policyOptions].
  /// var policy = TrustedTypePolicyFactory.createPolicy(policyName,policyOptions);
  external TrustedTypePolicy createPolicy(String policyName,
      [TrustedTypePolicyOptions? policyOptions]);

  ///  When passed a value checks that it is a valid [TrustedHTML]
  /// object.
  /// var isHTML = TrustedTypePolicyFactory.isHTML(value);
  external bool isHTML(dynamic value);

  ///  When passed a value checks that it is a valid [TrustedScript]
  /// object.
  /// var isScript = TrustedTypePolicyFactory.isScript(value);
  external bool isScript(dynamic value);

  ///  When passed a value checks that it is a valid [TrustedScriptURL]
  /// object.
  /// var isScriptURL = TrustedTypePolicyFactory.isScriptURL(value);
  external bool isScriptURL(dynamic value);

  /// Returns a [TrustedHTML] object containing an empty string.
  external TrustedHTML get emptyHTML;

  /// Returns a [TrustedScript] object containing an empty string.
  external TrustedScript get emptyScript;

  ///  Allows web developers to check whether a Trusted Type is
  /// required for an element and attribute, and if so which one.
  /// var attributeType = TrustedTypePolicyFactory.getAttributeType(tagName,attribute[,elementNs,attrNs]);
  external String? getAttributeType(String tagName, String attribute,
      [String? elementNs = '', String? attrNs = '']);

  ///  Allows web developers to check whether a Trusted Type is
  /// required for a property, and if so which one.
  /// var null = TrustedTypePolicyFactory.getPropertyType(tagName,property[, elementNS]);
  external String? getPropertyType(String tagName, String property,
      [String? elementNs = '']);

  ///  Returns the default [TrustedTypePolicy] or null if this is
  /// empty.
  external TrustedTypePolicy? get defaultPolicy;

  external factory TrustedTypePolicyFactory();
}

///
///
///  The interface of the [Trusted Types API] defines a group of
/// functions which create [TrustedType] objects.
///
///  A object is created by [TrustedTypePolicyFactory.createPolicy()]
/// to define a policy for enforcing security rules on input.
/// Therefore, has no constructor.
@JS()
class TrustedTypePolicy {
  /// A [DOMString] containing the name of the policy.
  external String get name;

  /// Creates a [TrustedHTML] object.
  /// var str = TrustedTypePolicy.createHTML(input[,args]);
  external TrustedHTML createHTML(String input, [dynamic arguments]);

  /// Creates a [TrustedScript] object.
  /// var str = TrustedTypePolicy.createScript(input[,args]);
  external TrustedScript createScript(String input, [dynamic arguments]);

  /// Creates a [TrustedScriptURL] object.
  /// var str = TrustedTypePolicy.createScriptURL(input[,args]);
  external TrustedScriptURL createScriptURL(String input, [dynamic arguments]);

  external factory TrustedTypePolicy();
}

@anonymous
@JS()
class TrustedTypePolicyOptions {
  external CreateHTMLCallback? get createHTML;
  external set createHTML(CreateHTMLCallback? newValue);
  external CreateScriptCallback? get createScript;
  external set createScript(CreateScriptCallback? newValue);
  external CreateScriptURLCallback? get createScriptURL;
  external set createScriptURL(CreateScriptURLCallback? newValue);

  external factory TrustedTypePolicyOptions(
      {CreateHTMLCallback? createHTML,
      CreateScriptCallback? createScript,
      CreateScriptURLCallback? createScriptURL});
}