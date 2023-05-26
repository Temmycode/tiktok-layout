import 'package:hooks_riverpod/hooks_riverpod.dart';

final likeVideoProvider = StateProvider<bool>(
  (ref) {
    return false;
  },
);

final saveVideoProvider = StateProvider<bool>(
  (ref) {
    return false;
  },
);
