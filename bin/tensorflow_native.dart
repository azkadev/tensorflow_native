import 'package:tensorflow_native/tensorflow_native.dart';

void main(List<String> arguments) {
  TensorFlowLite tensorFlowLite = TensorFlowLite("/usr/lib/libtensorflowlite.so");
  print(tensorFlowLite.load().lookup("symbolName"));
}
