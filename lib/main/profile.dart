import 'package:eagleexpress/login_page.dart';
import 'package:flutter/material.dart';


class ProfileView extends StatelessWidget {
  const ProfileView({super.key});




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: Colors.lightBlue,
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              alignment: Alignment.center,
              clipBehavior: Clip.none,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(172, 0, 0, 0),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  height: 80,
                ),
                Positioned(
                  top: 20,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CircleAvatar(
                        radius: 60,
                        backgroundColor: Colors.transparent,
                        child: ClipOval(
                          child: Image.asset(
                            'assets/eagle.jpg',
                            fit: BoxFit.cover,
                            width: 80,
                            height: 80,
                          ),
                        ),
                      ),
                      
                      const SizedBox(height: 10.0),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 110),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _buildOutlinedButton(
                    context,
                    icon: Icons.settings,
                    label: 'Settings',
                    page: null,
                  ),
                  const SizedBox(height: 15),
                  _buildOutlinedButton(
                    context,
                    icon: Icons.security,
                    label: 'Security',
                    page: null,
                  ),
                  const SizedBox(height: 15),
                  _buildOutlinedButton(
                    context,
                    icon: Icons.language,
                    label: 'Language',
                    page: null,
                  ),
                  const SizedBox(height: 15),
                  _buildOutlinedButton(
                    context,
                    icon: Icons.notifications_rounded,
                    label: 'Notifications',
                    page: null,
                  ),
                  const SizedBox(height: 15),
                  _buildOutlinedButton(
                    context,
                    icon: Icons.help,
                    label: 'Help & Support',
                    page: null,
                  ),
                  const SizedBox(height: 30),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage()),
                          (Route<dynamic> route) => false,
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            vertical: 16, horizontal: 100),
                        backgroundColor: const Color.fromARGB(255, 56, 56, 56),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Text(
                        'Log Out',
                        style: TextStyle(
                            color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOutlinedButton(BuildContext context,
      {required IconData icon, required String label, required Widget? page}) {
    return OutlinedButton(
      onPressed: () {
        if (page != null) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => page),
          );
        }
      },
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 16),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        side: const BorderSide(
          color: Colors.white,
        ),
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.black),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              label,
              style: const TextStyle(color: Colors.black),
            ),
          ),
          const Text('>', style: TextStyle(color: Colors.black , fontSize: 20,)),
        ],
      ),
    );
  }
}
