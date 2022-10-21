// ignore_for_file: depend_on_referenced_packages

import 'dart:convert';
import 'package:crypto/crypto.dart' show md5;

class Helper {
  static String publicApiKey = "65fcf17d79625dd1b69b0ef33adb0e74";
  static String privateApiKey = "85eaff3d7406a1a430270eca65cad978fd1d3598";
}

String url = "http://gateway.marvel.com/v1/public/";
DateTime timeStamp = DateTime.now();
String hash = '';

String getUrl(String category, {String additional = ""}) {
  getHash();
  String result =
      "$url$category?apikey=${Helper.publicApiKey}&hash=$hash&ts=${timeStamp.toIso8601String()}$additional";
  return result;
}

getHash() => hash = generateMd5(timeStamp.toIso8601String());

String generateMd5(String input) {
  return md5.convert(utf8.encode(input)).toString();
}
