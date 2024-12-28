import 'dart:typed_data';

import 'package:flutter/material.dart';

ImageProvider getImageProvider(String url, {Uint8List? fileBytes}) {
  if (fileBytes != null) {
    return MemoryImage(fileBytes); // bytes (Flutter Web/Desktop)
  } else if (url.startsWith('http') || url.startsWith('blob')) {
    return NetworkImage(url);
  } else {
    return const AssetImage(
      'assets/placeholder.png',
      package: 'dash_chat_custom',
    );
  }
}
