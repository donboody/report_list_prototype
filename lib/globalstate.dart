class GlobalState {
  final Map<dynamic, dynamic> _data = <dynamic, dynamic>{};

  static GlobalState instance = new GlobalState._(); //named constructor
  GlobalState._();

  set(key, dynamic value) {
    _data[key] = value;
  }

  get(dynamic key) {
    return _data[key];
  }
}
