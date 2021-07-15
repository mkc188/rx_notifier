part of '../rx_notifier.dart';

class RxMap<K, V> extends ChangeNotifier with MapMixin<K, V> {
  late final Map<K, V> _map;

  RxMap([Map<K, V>? map]) {
    if (map != null) {
      _map = map;
    } else {
      _map = {};
    }
  }

  static RxMap<K, V> of<K, V>(Map<K, V> map) => RxMap<K, V>(map);

  @override
  V? operator [](Object? key) {
    _rxMainContext.reportRead(this);
    return _map[key];
  }

  @override
  void operator []=(K key, V value) {
    _map[key] = value;
  }

  @override
  void clear() {
    _map.clear();
  }

  @override
  Iterable<K> get keys {
    _rxMainContext.reportRead(this);
    return _map.keys;
  }

  @override
  V? remove(Object? key) {
    final result = _map.remove(key);
    return result;
  }
}
