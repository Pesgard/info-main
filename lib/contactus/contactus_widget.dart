import 'package:flutter/material.dart';
import 'package:landing_page_q_r/services/mailgun_service.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactusWidget extends StatefulWidget {
  const ContactusWidget({Key? key}) : super(key: key);

  @override
  _ContactusWidgetState createState() => _ContactusWidgetState();
}

class _ContactusWidgetState extends State<ContactusWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: ContactsStack(),
        ),
      ),
    );
  }
}

class ContactsStack extends StatefulWidget {
  ContactsStack({Key? key}) : super(key: key);

  @override
  State<ContactsStack> createState() => _ContactsStackState();
}

class _ContactsStackState extends State<ContactsStack> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController countryController = TextEditingController();
  final TextEditingController messageController = TextEditingController();

  final MailgunService mailgunService = MailgunService();
  bool isLoading = false;

  void _submitForm() async {
    setState(() {
      isLoading = true;
    });

    final name = nameController.text;
    final email = emailController.text;
    final phone = phoneController.text;
    final country = countryController.text;
    final message = messageController.text;

    if (name.isEmpty || email.isEmpty || phone.isEmpty || country.isEmpty || message.isEmpty) {
      _showAlertDialog('You must enter all the data in the form');
      setState(() {
        isLoading = false;
      });
      return;
    }

    try {
      await mailgunService.sendEmail(
        'info@qrcoats.com',
        'Contact Us Form Submission',
        'Name: $name\nEmail: $email\nPhone: $phone\nCountry: $country\nMessage: $message',
      );
      _showAlertDialog('Email sent successfully');
      _clearForm();
    } catch (e) {
      _showAlertDialog('There was a problem sending the message, please try again');
    }

    setState(() {
      isLoading = false;
    });
  }

  void _showAlertDialog(String message) {
    showDialog<String>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'QR COATS',
            textAlign: TextAlign.center,
            style: FlutterFlowTheme.of(context).title1.copyWith(color: Colors.white),
          ),
          backgroundColor: Color(0xFF2C2E3A),
          content: Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height * 0.10,
            width: MediaQuery.of(context).size.width * 0.30,
            child: Text(
              message.toUpperCase(),
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).bodyText1.copyWith(color: Colors.white),
            ),
          ),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          actionsPadding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          actionsAlignment: MainAxisAlignment.spaceEvenly,
          actions: [
            ElevatedButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              style: ElevatedButton.styleFrom(
                backgroundColor: FlutterFlowTheme.of(context).primaryColor,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
              ),
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  void _clearForm() {
    nameController.clear();
    emailController.clear();
    phoneController.clear();
    countryController.clear();
    messageController.clear();
  }

@override
Widget build(BuildContext context) {
  return Stack(
    children: [
      Align(
        alignment: Alignment.center,
        child: Container(
          margin: const EdgeInsets.only(top: 60.0, bottom: 30.0), // Add top and bottom margin
          child: Padding(
            padding: const EdgeInsets.all(16.0), // Keep existing padding if needed
            child: Container(
              constraints: BoxConstraints(maxWidth: 800),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Contact Us',
                    style: FlutterFlowTheme.of(context).title1.override(
                      fontFamily: FlutterFlowTheme.of(context).title1Family,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                        FlutterFlowTheme.of(context).title1Family
                      ),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  _buildContactForm(context),
                  SizedBox(height: 16.0),
                  _buildSubmitButton(context),
                ],
              ),
            ),
          ),
        ),
      ),
    ],
  );
}



  Widget _buildContactForm(BuildContext context) {
    return DefaultTextStyle(
      style: TextStyle(
        fontFamily: 'Atten Round New',
      ),
      child: Column(
        children: [
          _buildTextField(nameController, 'Name', 'Enter name'),
          SizedBox(height: 8.0),
          _buildTextField(emailController, 'E-mail', 'Enter e-mail'),
          SizedBox(height: 8.0),
          _buildTextField(phoneController, 'Phone number', 'Enter phone number'),
          SizedBox(height: 8.0),
          _buildTextField(countryController, 'Country', 'Enter country'),
          SizedBox(height: 8.0),
          _buildTextField(messageController, 'Message', 'Enter message', maxLines: 5),
        ],
      ),
    );
  }

  Widget _buildTextField(TextEditingController controller, String label, String hint, {int maxLines = 1}) {
  bool isMessageField = controller == messageController;

  return TextFormField(
    controller: controller,
    maxLines: maxLines,
    decoration: InputDecoration(
      labelText: label,
      hintText: hint,
      alignLabelWithHint: isMessageField, // Only apply to Message field
      contentPadding: isMessageField 
          ? EdgeInsets.only(left: 12.0, top: 20.0) // Adjust padding for Message field
          : EdgeInsets.all(12.0), // Default padding for other fields
      hintStyle: TextStyle(color: Colors.white70), // Placeholder text color
      labelStyle: TextStyle(color: Colors.white),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: Colors.white),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: Color(0xFF8E44AD)), // Light purple color on focus
      ),
    ),
    style: FlutterFlowTheme.of(context).subtitle2.override(
      fontFamily: FlutterFlowTheme.of(context).subtitle2Family,
      color: Colors.white, // Text color for the form
      useGoogleFonts: GoogleFonts.asMap()
          .containsKey(FlutterFlowTheme.of(context).subtitle2Family),
      fontSize: 16.0, // Optional: Set a default font size if needed
    ),
    textAlignVertical: isMessageField ? TextAlignVertical.top : TextAlignVertical.center, // Align to top only for Message field
    textAlign: TextAlign.start, // Align text to the left (default)
  );
}

Widget _buildSubmitButton(BuildContext context) {
  final screenWidth = MediaQuery.of(context).size.width;
  final isDesktop = screenWidth >= 1200; // Define what constitutes a desktop view

  final buttonWidth = isDesktop ? 135.0 : screenWidth * 0.8; // Wider on smaller screens, fixed size on desktop
  final buttonHeight = isDesktop ? 50.0 : 60.0; // 50px on desktop, larger for mobile

  // Adjust font size based on screen size, making it 50% larger on desktop
  final buttonFontSize = isDesktop ? 14.0 : 16.0; // Slightly larger on mobile for better readability

  return isDesktop
      ? Align(
          alignment: Alignment.centerRight, // Align to the right on desktop
          child: Padding(
            padding: const EdgeInsets.only(top: 15.0, bottom: 15.0), // Add top and bottom margin
            child: Container(
              width: buttonWidth,
              height: buttonHeight,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFFAF70F7), Color(0xFF7899F8)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(30),
              ),
              child: ElevatedButton(
                onPressed: isLoading ? null : _submitForm,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent, // Transparent background to use Container gradient
                  shadowColor: Colors.transparent, // Remove shadow to match Container
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30), // Match Container border radius
                  ),
                ),
                child: isLoading
                    ? CircularProgressIndicator()
                    : Text(
                        'Send Now',
                        style: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: FlutterFlowTheme.of(context).subtitle2Family,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          fontSize: buttonFontSize,
                          useGoogleFonts: GoogleFonts.asMap()
                            .containsKey(FlutterFlowTheme.of(context).subtitle2Family),
                        ),
                      ),
              ),
            ),
          ),
        )
      : Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 15.0, bottom: 15.0), // Add top and bottom margin
            child: Container(
              width: buttonWidth,
              height: buttonHeight,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFFAF70F7), Color(0xFF7899F8)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(30),
              ),
              child: ElevatedButton(
                onPressed: isLoading ? null : _submitForm,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent, // Transparent background to use Container gradient
                  shadowColor: Colors.transparent, // Remove shadow to match Container
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30), // Match Container border radius
                  ),
                ),
                child: isLoading
                    ? CircularProgressIndicator()
                    : Text(
                        'Send Now',
                        style: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: FlutterFlowTheme.of(context).subtitle2Family,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          fontSize: buttonFontSize,
                          useGoogleFonts: GoogleFonts.asMap()
                            .containsKey(FlutterFlowTheme.of(context).subtitle2Family),
                        ),
                      ),
              ),
            ),
          ),
        );
}

}
