import 'package:flutter_test/flutter_test.dart';
import 'package:day12/main.dart';

void main() {
  testWidgets('News App smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const NewsApp());
  });
}
