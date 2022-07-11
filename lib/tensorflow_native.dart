import 'dart:ffi';

import 'package:ffi/ffi.dart';

class TensorFlowLite {
  late String pathTensorFlowLite;
  TensorFlowLite(this.pathTensorFlowLite);

  DynamicLibrary tensorFlowLitePathFile() {
    return DynamicLibrary.open(pathTensorFlowLite);
  }

  String get tfLiteVersion {
    return tensorFlowLitePathFile().lookupFunction<Pointer<Utf8> Function(), Pointer<Utf8> Function()>('TfLiteVersion').call().toDartString();
  }
}
