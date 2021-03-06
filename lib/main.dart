import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:playground/layout_calculator.dart';
import 'color_constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EventVerse - Breathe life into online events',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        primaryColor: kPrimaryColor,
        colorScheme: const ColorScheme.light().copyWith(
          primary: kPrimaryColor,
        ),
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        backgroundColor: kNavColor,
        elevation: 0.0,
        title: const Image(
          height: 24.0,
          image: AssetImage('images/logo.png'),
        ),
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 100.0,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: LayoutCalculator.margin(context: context),
            ),
            child: SelectableText.rich(
              TextSpan(
                text: 'Breathe ',
                style: GoogleFonts.workSans(
                  fontSize: 36.0,
                  fontWeight: FontWeight.w600,
                  color: kTextColor100,
                ),
                children: const [
                  TextSpan(
                    text: 'life',
                    style: TextStyle(
                      color: kHighlightColor,
                    ),
                  ),
                  TextSpan(text: ' into your online events'),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 24.0,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: LayoutCalculator.margin(context: context),
            ),
            child: SelectableText(
              'Host networking events, seminars, exhibitions and more, in virtual reality.',
              textAlign: TextAlign.center,
              style: GoogleFonts.workSans(
                fontSize: 16.0,
                color: kTextColor080,
              ),
            ),
          ),
          const SizedBox(
            height: 60.0,
          ),
          Align(
            child: SizedBox(
              width: 300.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SelectableText(
                    'Join our wait list to get early access.',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.workSans(
                      fontSize: 12.0,
                      color: kTextColor080,
                    ),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  TextField(
                    controller: _controller,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.workSans(
                      fontSize: 16.0,
                      color: kTextColor100,
                    ),
                    decoration: const InputDecoration(
                      filled: true,
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: kOutlineColor),
                        borderRadius: BorderRadius.all(
                          Radius.circular(999.0),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: kOutlineColor),
                        borderRadius: BorderRadius.all(
                          Radius.circular(999.0),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: kPrimaryColor,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(999.0),
                        ),
                      ),
                      fillColor: kInputBackgroundColor,
                      hintText: 'Enter email address',
                    ),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      textStyle: MaterialStateProperty.all(
                        GoogleFonts.workSans(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                          color: kOnPrimaryColor,
                        ),
                      ),
                      elevation: MaterialStateProperty.all(0.0),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            999.0,
                          ),
                        ),
                      ),
                      visualDensity: const VisualDensity(
                        horizontal: 4.0,
                        vertical: 4.0,
                      ),
                    ),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          behavior: SnackBarBehavior.floating,
                          margin: const EdgeInsets.all(32.0),
                          padding: const EdgeInsets.all(20.0),
                          content: Text(
                            !_controller.text.contains('@')
                                ? 'Please enter a valid email'
                                : 'Thanks for showing interest in EventVerse, we\'ll be updating your inbox with the latest EventVerse updates!',
                            style: GoogleFonts.workSans(
                              fontSize: 14.0,
                            ),
                          ),
                        ),
                      );
                    },
                    child: const Text('Notify me'),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 48.0),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: LayoutCalculator.margin(context: context),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: const Image(
                image: AssetImage('images/image1.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(height: 100.0),
        ],
      ),
    );
  }
}
