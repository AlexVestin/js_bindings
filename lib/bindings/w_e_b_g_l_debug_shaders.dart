/// WebGL WEBGL_debug_shaders Khronos Ratified Extension Specification
///
/// https://www.khronos.org/registry/webgl/extensions/WEBGL_debug_shaders/
@JS('window')
library w_e_b_g_l_debug_shaders;

import 'package:js/js.dart';

import 'callbacks.dart';
import '../manual.dart';
import 'webgl1.dart';

///
///
///  The [WEBGL_debug_shaders] extension is part of the WebGL API and
/// exposes a method to debug shaders from privileged contexts.
///
///  This extension is not directly available to web sites as the way
/// of how the shader is translated may uncover
/// personally-identifiable information to the web page about the
/// kind of graphics card in the user's computer.
///
///  WebGL extensions are available using the
/// [WebGLRenderingContext.getExtension()] method. For more
/// information, see also Using Extensions in the WebGL tutorial.
///  Availability: Depending on the privacy settings of the browser,
/// this extension might only be available to privileged contexts.
///
/// This extension is available to both, WebGL1 and WebGL2 contexts.
///
@JS()
class WEBGL_debug_shaders {
  /// Returns the translated shader source.
  /// gl.getExtension('WEBGL_debug_shaders').getTranslatedShaderSource(shader);
  external String getTranslatedShaderSource(WebGLShader shader);

  external factory WEBGL_debug_shaders();
}