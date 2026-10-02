import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F6F8),
      appBar: AppBar(
        title: const Text('Homepage'),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
        elevation: 0,
        // leading: const Icon(Icons.home_rounded, size: 30),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.person_outline)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.logout)),
          const SizedBox(width: 8),
        ],
      ),

      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 74, 106, 114),
              ),
              accountName: Text("Name"),
              accountEmail: Text("email"),
              currentAccountPicture: Icon(Icons.person),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("HomePage"),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.contact_page),
              title: Text("Contact"),
              hoverColor: Colors.blueGrey,
              onTap: () {},
            ),
            Spacer(),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
              onTap: () {},
            ),
          ],
        ),
      ),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.waving_hand_rounded,
                size: 56,
                color: Colors.teal.shade300,
              ),
              const SizedBox(height: 16),
              Text(
                'Welcome to our project!',
                textAlign: TextAlign.center,
                style: GoogleFonts.lobster(
                  fontSize: 36,
                  color: Colors.teal.shade900,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                "We're glad you're here.",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: Colors.blueGrey.shade400,
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
