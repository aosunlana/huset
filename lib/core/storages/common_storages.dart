import 'package:huset/core/storages/storage.dart';
import 'package:injectable/injectable.dart';

import 'storage_keys.dart';

@injectable
class CommonStorage {
  final Storage storage;

  CommonStorage({
    required this.storage,
  });

  Future<bool> getIsFirstLaunch() async {
    final bool? isFirstLaunch = await storage.getBool(
      key: StorageKeys.firstLaunch,
    );
    return isFirstLaunch ?? true;
  }

  Future storeIsFirstLaunch({
    required bool isFirstLaunch,
  }) async {
    return storage.putBool(
      key: StorageKeys.firstLaunch,
      value: isFirstLaunch,
    );
  }
}
