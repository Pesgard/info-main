import 'package:landing_page_q_r/contactus/contactus_widget.dart';
import 'package:landing_page_q_r/faq/faq_widget.dart';
import 'package:landing_page_q_r/footer/footer_widget.dart';
import 'package:landing_page_q_r/home/home_widget.dart';
import 'package:landing_page_q_r/menu/menu_widget.dart';
import 'package:landing_page_q_r/webapp/webapp_widget.dart';
import 'package:landing_page_q_r/testimonials/testimonials_widget.dart';
import 'package:landing_page_q_r/aboutqrcoats/aboutqrcoats_widget.dart';
import '../components/botn_widget_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late PageController _pageController; // Declare PageController
  final scaffoldKey = GlobalKey<ScaffoldState>(); // Scaffold key for drawer

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0); // Initialize PageController
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _pageController.dispose(); // Dispose PageController when done
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: PageView(
          controller: _pageController, // Use the PageController
          children: [
            SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  TableOfContents(
                    scaffoldKey: scaffoldKey,
                    sections: sections,
                    onItemTap: (section) {
                      final targetContext = section.key.currentContext;
                      if (targetContext != null) {
                        Scrollable.ensureVisible(
                          targetContext,
                          duration: const Duration(milliseconds: 400),
                          curve: Curves.easeInOut,
                        );
                      }
                    },
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: sections.length,
                    itemBuilder: (BuildContext context, int index) {
                      final section = sections[index];
                      return SectionWidget(
                        key: section.key,
                        section: section,
                      );
                    },
                  ),
                  FooterStack(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TableOfContents extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  final List<Section> sections;
  final void Function(Section) onItemTap;

  TableOfContents({
    Key? key,
    this.sections = const <Section>[],
    required this.onItemTap,
    required this.scaffoldKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if (MediaQuery.of(context).size.width > 600)
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.15,
            decoration: BoxDecoration(),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.07,
                  height: 100,
                  decoration: BoxDecoration(),
                  child: SvgPicture.asset(
                    'assets/images/logo.svg',
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.contain,
                  ),
                ),
                for (int i = 0; i < sections.length; i++)
                  if (sections[i].menu != '')
                    SectionLink(section: sections[i], onTap: onItemTap)
              ],
            ),
          ),
        if (MediaQuery.of(context).size.width <= 600)
Padding(
  padding: EdgeInsets.all(25.0),
  child: Container(
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height * 0.15,
    decoration: BoxDecoration(),
    child: Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.45,
          height: MediaQuery.of(context).size.height * 0.11,
          decoration: BoxDecoration(),
          child: SvgPicture.asset(
            'assets/images/logo.svg',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.contain,
          ),
        ),
      ],
    ),
  ),
),
      ],
    );
  }
}

class TableOfContentsMobile extends StatelessWidget {
  final List<Section> sections;
  final void Function(Section) onItemTap;

  TableOfContentsMobile({
    Key? key,
    this.sections = const <Section>[],
    required this.onItemTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Removed Drawer implementation completely
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).customColor6,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.1,
            decoration: BoxDecoration(),
            child: SvgPicture.asset(
              'assets/images/logo.svg',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}

class Section {
  final GlobalKey key;
  final String? menu;
  final Widget body;

  const Section({
    required this.key,
    this.menu,
    required this.body,
  });
}

final sections = [
  Section(
    key: GlobalKey(),
    menu: 'HOME',
    body: HomeWidgetStack(),
  ),
  Section(
    key: GlobalKey(),
    menu: 'ABOUT QR COATS',
    body: AboutStack(
      pageViewController: PageController(initialPage: 0),
    ),
  ),
  Section(key: GlobalKey(), menu: 'TESTIMONIALS', body: TestiminialsStack()),
  Section(key: GlobalKey(), menu: 'WEB APP', body: WebAppStack()),
  Section(key: GlobalKey(), menu: 'FAQ', body: FaqStack()),
  Section(key: GlobalKey(), menu: 'CONTACT US', body: ContactsStack()),
];

class SectionWidget extends StatelessWidget {
  final Section section;

  const SectionWidget({Key? key, required this.section}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: section.body,
    );
  }
}

class SectionLink extends StatelessWidget {
  final Section section;
  final void Function(Section) onTap;

  const SectionLink({Key? key, required this.section, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(section),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          section.menu!,
          style: FlutterFlowTheme.of(context).bodyText1,
        ),
      ),
    );
  }
}

class SectionLinkMobile extends StatelessWidget {
  final Section section;
  final void Function(Section) onTap;

  const SectionLinkMobile({Key? key, required this.section, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(section),
      child: Container(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        child: Text(
          section.menu!,
          style: FlutterFlowTheme.of(context).title3.copyWith(
            height: 1.0,
          ),
        ),
      ),
    );
  }
}
