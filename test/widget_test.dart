import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mobileinventory_management/main.dart'; // Adjust the import according to your project structure

void main() {
  testWidgets('Registration flow smoke test', (WidgetTester tester) async {
    // Build the app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify that we start on the StartPage with the "Get Started" button.
    expect(find.text('Get Started'), findsOneWidget);

    // Tap the "Get Started" button and trigger a frame.
    await tester.tap(find.text('Get Started'));
    await tester.pumpAndSettle();

    // Verify that we are on the CreateAccountPage with the "Continue" button.
    expect(find.text('Create Account'), findsOneWidget);
    expect(find.text('Continue'), findsOneWidget);

    // Enter an email and tap "Continue".
    await tester.enterText(find.byType(TextField), 'test@example.com');
    await tester.tap(find.text('Continue'));
    await tester.pumpAndSettle();

    // Verify that we are on the FullNamePage with the "Continue" button.
    expect(find.text('Your Full Name'), findsOneWidget);
    await tester.enterText(find.byType(TextField), 'John Doe');
    await tester.tap(find.text('Continue'));
    await tester.pumpAndSettle();

    // Verify that we are on the BirthdayPage with the "Continue" button.
    expect(find.text('Date of Birth'), findsOneWidget);
    await tester.enterText(find.byType(TextField), '01/01/2000');
    await tester.tap(find.text('Continue'));
    await tester.pumpAndSettle();

    // Verify that we are on the GenderPage with the "Continue" button.
    expect(find.text('Gender'), findsOneWidget);
    await tester.enterText(find.byType(TextField), 'Male');
    await tester.tap(find.text('Continue'));
    await tester.pumpAndSettle();

    // Verify that we are on the PasswordPage with the "Finish" button.
    expect(find.text('Password'), findsOneWidget);
    await tester.enterText(find.byType(TextField).first, 'password123');
    await tester.enterText(find.byType(TextField).last, 'password123');
    await tester.tap(find.text('Finish'));
    await tester.pumpAndSettle();

    // Verify that we are on the LoginPage with the "Log In" button.
    expect(find.text('Log In'), findsOneWidget);
  });
}
