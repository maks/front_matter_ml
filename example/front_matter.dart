import 'dart:io';
import 'package:front_matter_ml/front_matter_ml.dart' as fm;

// Example 1 - Parse a string.
Future<void> example1() async {
  var file = File('example/hello-world.md');
  var fileContents = await file.readAsString();

  var doc = fm.parse(fileContents);

  print("The author is ${doc.data['author']}");
  print("The publish date is ${doc.data['date']}");
  print("The content is ${doc.content}");
}

// Example 2 - Read a file and parse its contents.
Future<void> example2() async {
  var doc = await fm.parseFile('example/hello-world.md');

  print("The author is ${doc.data['author']}");
  print("The publish date is ${doc.data['date']}");
  print("The content is ${doc.content}");
}

void main() async {
  await example1();
  await example2();
}
