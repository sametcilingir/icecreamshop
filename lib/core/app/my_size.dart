import 'package:flutter/material.dart';

class MySize {
  MySize._();
  static const zero = 0.0;
  static const low = 10.0;
  static const medium = 20.0;
  static const high = 50.0;

  static SizedBox get zSizedBox => const SizedBox(height: zero, width: zero);

  static SizedBox get hLowSizedBox => const SizedBox(
        height: low,
      );
  static SizedBox get hMediumSizedBox => const SizedBox(
        height: medium,
      );
  static SizedBox get hHighSizedBox => const SizedBox(
        height: high,
      );

  static SizedBox get wLowSizedBox => const SizedBox(
        width: low,
      );
  static SizedBox get wMediumSizedBox => const SizedBox(
        width: medium,
      );
  static SizedBox get wHighSizedBox => const SizedBox(
        width: high,
      );
}
