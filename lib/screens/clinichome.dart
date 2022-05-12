import 'package:flutter/material.dart';

class searchCategory extends StatelessWidget {
  const searchCategory({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    const title = 'Search for doctor';
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Text(title),
        ),
        body: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.search),
                  hintText: 'Search for speciality',
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.face_retouching_natural_outlined),
              title: Text('Dermatology'),
              onTap: () {
                //   Navigator.push(context,
                //       MaterialPageRoute(builder: (context) => DoctorCards()));
                //   Navigator.of(context).push(MaterialPageRoute(
                //       builder: (context) => (const DoctorCards())));
              },
            ),
            ListTile(
              leading: Icon(Icons.medical_services_outlined),
              onTap: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => DoctorCards()));
                // Navigator.of(context).push(MaterialPageRoute(
                //     builder: (context) => (const DoctorCards())));
              },
              title: Text('Dentistry'),
            ),
            ListTile(
              leading: Icon(Icons.baby_changing_station_outlined),
              title: Text('Pediatrics and New Born'),
              onTap: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => DoctorCards()));
                // Navigator.of(context).push(MaterialPageRoute(
                //     builder: (context) => (const DoctorCards())));
              },
            ),
            ListTile(
              leading: Icon(Icons.hearing_outlined),
              title: Text(' Ear, Nose and Throat'),
              onTap: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => DoctorCards()));
                // Navigator.of(context).push(MaterialPageRoute(
                //     builder: (context) => (const DoctorCards())));
              },
            ),
            ListTile(
              leading: Icon(Icons.psychology_outlined),
              title: Text('Neurology'),
              onTap: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => DoctorCards()));
                // Navigator.of(context).push(MaterialPageRoute(
                //     builder: (context) => (const DoctorCards())));
              },
            ),
            ListTile(
              leading: Icon(Icons.favorite_border),
              title: Text('Cardiology and Vascular Disease'),
              onTap: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => DoctorCards()));
                // Navigator.of(context).push(MaterialPageRoute(
                //     builder: (context) => (const DoctorCards())));
              },
            ),
            ListTile(
              leading: Icon(Icons.earbuds_outlined),
              title: Text('Orthopedics'),
              onTap: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => DoctorCards()));
                // Navigator.of(context).push(MaterialPageRoute(
                //     builder: (context) => (const DoctorCards())));
              },
            ),
            ListTile(
              leading: Icon(Icons.pregnant_woman),
              title: Text('Gynaecology and Infertility'),
              onTap: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => DoctorCards()));
                // Navigator.of(context).push(MaterialPageRoute(
                //     builder: (context) => (const DoctorCards())));
              },
            ),
            ListTile(
              leading: Icon(Icons.remove_red_eye_outlined),
              title: Text('Ophthalmology'),
              onTap: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => DoctorCards()));
                // Navigator.of(context).push(MaterialPageRoute(
                //     builder: (context) => (const DoctorCards())));
              },
            ),
            ListTile(
              leading: Icon(Icons.family_restroom_outlined),
              title: Text('Family Medicine'),
              onTap: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => DoctorCards()));
                // Navigator.of(context).push(MaterialPageRoute(
                //     builder: (context) => (const DoctorCards())));
              },
            ),
          ],
        ),
      ),
    );
  }
}
