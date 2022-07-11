import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:tensorflow_native/tensorflow_native.dart';

void main(List<String> arguments) {
  TensorFlowLite tflite = TensorFlowLite("/usr/lib/tensorflow64.so");
  print(tflite.tfLiteVersion);
}
