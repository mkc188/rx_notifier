part of '../rx_notifier.dart';

class RxList<T> extends ChangeNotifier with ListMixin<T> {
  late final List<T> _list;
  RxList([List<T>? list]) {
    if (list != null) {
      _list = list;
    } else {
      _list = [];
    }
  }

  @override
  int get length {
    _rxMainContext.reportRead(this);
    return _list.length;
  }

  T get first {
    _rxMainContext.reportRead(this);
    return _list.first;
  }

  T get last {
    _rxMainContext.reportRead(this);
    return _list.last;
  }

  Iterable<T> get reversed {
    _rxMainContext.reportRead(this);
    return _list.reversed;
  }

  bool get isEmpty {
    _rxMainContext.reportRead(this);
    return _list.isEmpty;
  }

  bool get isNotEmpty {
    _rxMainContext.reportRead(this);
    return _list.isNotEmpty;
  }

  Iterator<T> get iterator {
    _rxMainContext.reportRead(this);
    return _list.iterator;
  }

  T get single {
    _rxMainContext.reportRead(this);
    return _list.single;
  }

  Iterable<T> getRange(int start, int end) {
    _rxMainContext.reportRead(this);
    return _list.getRange(start, end);
  }

  void replaceRange(int start, int end, Iterable<T> replacement) {
    _list.replaceRange(start, end, replacement);
  }

  void setRange(int start, int end, Iterable<T> iterable, [int skipCount = 0]) {
    _list.setRange(start, end, iterable, skipCount);
  }

  void fillRange(int start, int end, [T? fillValue]) {
    _list.fillRange(start, end, fillValue);
  }

  void add(T item) {
    _list.add(item);
  }

  void addAll(Iterable<T> list) {
    _list.addAll(list);
  }

  bool remove(covariant T value) {
    final removed = _list.remove(value);
    return removed;
  }

  T removeAt(int index) {
    final removed = _list.removeAt(index);
    return removed;
  }

  T removeLast() {
    final removed = _list.removeLast();
    return removed;
  }

  void removeRange(int start, int end) {
    _list.removeRange(start, end);
  }

  void removeWhere(bool Function(T) test) {
    _list.removeWhere(test);
  }

  void insert(int index, T element) {
    _list.insert(index, element);
  }

  void insertAll(int index, Iterable<T> iterable) {
    _list.insertAll(index, iterable);
  }

  void setAll(int index, Iterable<T> iterable) {
    _list.setAll(index, iterable);
  }

  void shuffle([Random? random]) {
    _list.shuffle(random);
  }

  void sort([int Function(T, T)? compare]) {
    _list.sort(compare);
  }

  List<T> sublist(int start, [int? end]) {
    _rxMainContext.reportRead(this);
    return _list.sublist(start, end);
  }

  T singleWhere(bool Function(T) test, {T Function()? orElse}) {
    _rxMainContext.reportRead(this);
    return _list.singleWhere(test, orElse: orElse);
  }

  Iterable<T> skip(int count) {
    _rxMainContext.reportRead(this);
    return _list.skip(count);
  }

  Iterable<T> skipWhile(bool Function(T) test) {
    _rxMainContext.reportRead(this);
    return _list.skipWhile(test);
  }

  void forEach(void Function(T) f) {
    _rxMainContext.reportRead(this);
    _list.forEach(f);
  }

  void clear() {
    _list.clear();
  }

  static RxList<T> of<T>(List<T> list) => RxList<T>(list);

  @override
  List<T> operator +(List<T> other) {
    final newList = _list + other;
    _rxMainContext.reportRead(this);
    return newList;
  }

  @override
  T operator [](int index) {
    _rxMainContext.reportRead(this);
    return _list[index];
  }

  @override
  void operator []=(int index, T value) {
    _list[index] = value;
  }

  @override
  set length(int value) {
    _list.length = value;
  }

  void notify() {
    notifyListeners();
  }
}
