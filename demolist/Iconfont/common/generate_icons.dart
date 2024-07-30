import 'dart:convert';
import 'dart:io';

String toCamelCase(String name) {
  List<String> parts = name.split(RegExp(r'[-_]'));
  String camelCaseName = parts[0];
  for (int i = 1; i < parts.length; i++) {
    camelCaseName += parts[i][0].toUpperCase() + parts[i].substring(1);
  }
  return camelCaseName;
}

void generateIconFontClass(String jsonFilePath, String outputFilePath) {
  File jsonFile = File(jsonFilePath);
  if (!jsonFile.existsSync()) {
    print('JSON file not found: $jsonFilePath');
    return;
  }

  String jsonString = jsonFile.readAsStringSync();
  Map<String, dynamic> jsonData = jsonDecode(jsonString);

  StringBuffer buffer = StringBuffer();
  buffer.writeln("import 'package:flutter/material.dart';\n");
  buffer.writeln("class IconFont {");

  if (jsonData.containsKey('glyphs')) {
    List<dynamic> glyphs = jsonData['glyphs'];
    glyphs.forEach((glyph) {
      if (glyph.containsKey('unicode_decimal') && glyph.containsKey('name')) {
        String name = glyph['name'];
        int unicode = glyph['unicode_decimal'];
        // String fontClass = glyph['font_class'];

        String fieldName = toCamelCase(name);

        buffer.writeln("  static const IconData $fieldName = IconData(");
        buffer.writeln("    0x${unicode.toRadixString(16)},");
        buffer.writeln("    fontFamily: 'iconfont',");
        buffer.writeln("    matchTextDirection: true,");
        buffer.writeln("  );");
      }
    });
  }

  buffer.writeln("}");

  // Write generated code to output file
  File outputFile = File(outputFilePath);
  outputFile.writeAsStringSync(buffer.toString());

  print('IconFont class generated successfully at: $outputFilePath');
}

void main() {
  String jsonFilePath = 'assets/fonts/iconfont.json';
  String outputFilePath = 'lib/common/iconfont.dart';
  generateIconFontClass(jsonFilePath, outputFilePath);
}
