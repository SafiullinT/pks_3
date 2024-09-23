import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myshop/main.dart'; //

void main() {
  testWidgets('CarStoreApp smoke test', (WidgetTester tester) async {

    await tester.pumpWidget(CarStoreApp());

    expect(find.text('CarStore'), findsOneWidget);
  });
}
