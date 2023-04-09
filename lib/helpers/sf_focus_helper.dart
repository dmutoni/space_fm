import 'package:flutter/material.dart';
import 'package:one_context/one_context.dart';

final FocusNode _focusNode = FocusNode();

class FocusHelper {
  static void unfocus() {
    BuildContext? context = OneContext().context;
    if (context == null) return;

    // Considering the focus issues, better to be absolutely sure that
    // all focused states are removed
    FocusScope.of(context).unfocus();
    FocusManager.instance.primaryFocus?.unfocus();

    FocusScope.of(context).requestFocus(_focusNode);
  }
}
