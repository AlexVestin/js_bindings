/// WebGL OES_texture_float Khronos Ratified Extension Specification
///
/// https://www.khronos.org/registry/webgl/extensions/OES_texture_float/
@JS('window')
library o_e_s_texture_float;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';

///
///
///  The [OES_texture_float] extension is part of the WebGL API and
/// exposes floating-point pixel types for textures.
///
///  WebGL extensions are available using the
/// [WebGLRenderingContext.getExtension()] method. For more
/// information, see also Using Extensions in the WebGL tutorial.
///  Availability: This extension is only available to WebGL1
/// contexts. In WebGL2, the functionality of this extension is
/// available on the WebGL2 context by default.
///
@JS()
class OES_texture_float {
  external factory OES_texture_float();
}