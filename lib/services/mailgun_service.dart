import 'dart:convert';
import 'package:http/http.dart' as http;

class MailgunService {
  final String domain = 'mg.laurentchevrette.com'; // e.g., 'sandbox1234567890.mailgun.org'
  final String apiKey = '8559b806d40a13f86be7043f6f4fc2f8-0f1db83d-45b9262b';

  Future<void> sendEmail(String to, String subject, String text) async {
    final String url = 'https://api.mailgun.net/v3/$domain/messages';
    final String auth = 'api:$apiKey';

    final response = await http.post(
      Uri.parse(url),
      headers: <String, String>{
        'Authorization': 'Basic ${base64Encode(utf8.encode(auth))}',
        'Content-Type': 'application/x-www-form-urlencoded'
      },
      body: {
        'from': 'no-reply@laurentchevrette.com',
        'to': to,
        'subject': subject,
        'text': text,
      },
    );

    if (response.statusCode == 200) {
      print('Email sent!');
    } else {
      print('Failed to send email: ${response.body}');
    }
  }
}
