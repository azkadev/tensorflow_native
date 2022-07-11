import 'dart:ffi' as ffi;

class TensorFlowLite {
  late String pathTensorFlowLite;
  TensorFlowLite(this.pathTensorFlowLite);

  ffi.DynamicLibrary load() {
    return ffi.DynamicLibrary.open(pathTensorFlowLite);
  }
}
