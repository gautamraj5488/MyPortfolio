import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_any_logo/flutter_logo.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      home: Body(),
    );
  }
}

class ListItem {
  final String title;
  final String assetPath;

  ListItem({required this.title, required this.assetPath});
}


final List<ListItem> items = [
  ListItem(title: 'C++', assetPath: 'assests/logos/c++.png'),
  ListItem(title: 'Dart', assetPath: 'assests/logos/dart.png'),
  ListItem(title: 'Firebase', assetPath: 'assests/logos/firebase.png'),
  ListItem(title: 'VCS', assetPath: 'assests/logos/git.png'),

  // Add more items as needed
];


class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.deepPurple[100],
      backgroundColor: Colors.black12,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: MediaQuery.of(context).size.height * 0.6,
              //backgroundColor: Colors.deepPurple[100],
              backgroundColor: Colors.black12,
              leading: const Icon(
                Icons.menu,
                color: Colors.grey,
              ),
              pinned: false,
              flexibleSpace: FlexibleSpaceBar(
                // collapseMode: CollapseMode.parallax,
                expandedTitleScale: 2,
                background: Image.asset(
                  "assests/gautam1.png",
                  fit: BoxFit.fitHeight,
                ),
                title: const Text("Gautam Raj",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Colors.white)),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: const BoxDecoration(
                    color: Colors.white24,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24))),
                height: 800,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "About Me",
                      style: GoogleFonts.poppins(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          color: Colors.white70),
                    ),
                    Container(
                      margin: EdgeInsets.all(12),
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        color: Colors.white24,
                      ),
                      //height: MediaQuery.of(context).size.height * 0.25,
                      child: Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a0s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                        style: GoogleFonts.openSans(),
                      ),
                    ),
                    Text(
                      "Technical Skills",
                      style: GoogleFonts.poppins(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          color: Colors.white70),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.width*0.25,
                      child: GridView.builder(
                          itemCount: items.length,
                          gridDelegate:
                          (SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 4)),
                          itemBuilder: (context, index) {
                            final item = items[index];
                            return Container(
                                margin: EdgeInsets.all(12),
                                child: Image.asset(item.assetPath,)
                            );
                          }),
                    ),
                    Text(
                      "Profiles",
                      style: GoogleFonts.poppins(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          color: Colors.white70),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
