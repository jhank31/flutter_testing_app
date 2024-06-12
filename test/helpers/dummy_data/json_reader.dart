
import 'dart:io';

String jsonReader(String path) {
  var dir = Directory.current.path;
  if(dir.endsWith('/test')){
    dir = dir.replaceAll('/test', '');
  }
  return File('$dir/test/$path').readAsStringSync();
}