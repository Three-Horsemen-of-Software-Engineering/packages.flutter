import 'package:meta/meta.dart';

abstract class Repository<T> {
  final _items = <String, T>{};

  T get(String id) {
    final item = _items[id];
    if (item == null) {
      throw RepositoryItemNotFoundException();
    } else {
      return item;
    }
  }

  void set(String id, T item) {
    _items[id] = item;
  }

  @protected
  void close(String id) {
    _items.remove(id);
  }
}

class RepositoryItemNotFoundException implements Exception {}
