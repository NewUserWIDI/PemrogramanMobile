import 'package:flutter_test/flutter_test.dart';
import 'package:photo_filter_carousel/main.dart';
import 'package:photo_filter_carousel/widget/filter_carousel.dart';
import 'package:flutter/material.dart';

void main() {
  testWidgets('Filter carousel smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MaterialApp(home: PhotoFilterCarousel()));

    // Verifikasi apakah widget PhotoFilterCarousel muncul
    expect(find.byType(PhotoFilterCarousel), findsOneWidget);
  });
}