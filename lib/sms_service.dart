import 'package:url_launcher/url_launcher.dart';

class SMSService {
  static Future<void> sendPasswordResetSMS() async {
  
    const phoneNumber = '1234567890'; 
    const smsBody = 'Code';
    
    final Uri smsUri = Uri(
      scheme: 'sms',
      path: phoneNumber,
      queryParameters: {
        'body': smsBody,
      },
    );

    if (await canLaunchUrl(smsUri)) {
      await launchUrl(smsUri);
    } else {
   
      throw 'Could not launch $smsUri';
    }
  }
}
