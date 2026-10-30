
import 'package:flutter/material.dart';

void main() {
  runApp(const MyCVApp());
}

class MyCVApp extends StatelessWidget {
  const MyCVApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My CV',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const CVPage(),
    );
  }
}

class CVPage extends StatelessWidget {
  const CVPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Curriculum Vitae'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            // PROFILE
            const Center(
              child: Column(
                children: [
                  CircleAvatar(
                    radius:70,
                    backgroundImage:
                    AssetImage('assets/sg.jpg'),
                  ),

                  SizedBox(height: 15),

                  Text(
                    'Siyabonga Mndvoti',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Text('BSCIT Student'),


                  SizedBox(height: 15),

                  Text(
                    'I am a motivated student interested in '
                        'technology,software developing',
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            // CONTACT INFORMATION
            const Text(
              'Contact Information',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),

            const Card(
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.phone),
                    title: Text('Phone'),
                    subtitle: Text('79780365'),
                  ),

                  ListTile(
                    leading: Icon(Icons.email),
                    title: Text('Email'),
                    subtitle: Text('mndvotisiyabongaGift@gmail.com'),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            // SKILLS
            const Text(
              'My Skills',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),

            const Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    leading: Icon(Icons.computer),
                    title: Text('Computer Hardware'),
                  ),

                  ListTile(
                    leading: Icon(Icons.code),
                    title: Text('Web Design'),
                  ),

                  ListTile(
                    leading: Icon(Icons.people),
                    title: Text('Communication and Teamwork saves time'),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            // EDUCATION
            const Text(
              'Education',

              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),

            const Card(
              child: ListTile(
                leading: Icon(Icons.school),
                title: Text('Information Technology'),
                subtitle: Text(
                  'Institution: Limkokwing University of Creative Technology',
                ),
              ),
            ),

            const SizedBox(height: 25),

            // EXPERIENCE
            const Text(
              'Experience and Projects',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),

            const Card(
              child: ListTile(
                leading: Icon(Icons.work),
                title: Text('Academic Projects'),
                subtitle: Text(
                  'Practising programming and web design ',
                ),
              ),
            ),

            const SizedBox(height: 30),

            // CERTIFICATIONS
            const Text(
              'Certifications',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),

            const Card(
              child: ListTile(
                leading: Icon(Icons.verified),
                title: Text('Additional Qualifications'),
                subtitle: Text(
                  'Complete your courses.',
                ),
              ),
            ),

            const SizedBox(height: 30),

            const Center(
              child: Text(
                'Hope you found my CV appealing',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}

