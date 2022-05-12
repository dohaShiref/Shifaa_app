import 'package:flutter/material.dart';
import 'package:iti_gp/screens/cards.dart';

class SearchForDoctors extends StatefulWidget {
  const SearchForDoctors({Key? key}) : super(key: key);

  @override
  _SearchForDoctors createState() => _SearchForDoctors();
}

class _SearchForDoctors extends State<SearchForDoctors> {
  final List<Map<String, dynamic>> _allSpecialities = [
    {
      "id": 1,
      "name": "Dermatology",
    },
    {"id": 2, "name": "Dentistry"},
    {
      "id": 3,
      "name": "Pediatrics and New Born",
    },
    {
      "id": 4,
      "name": "Ear, Nose and Throat",
    },
    {
      "id": 5,
      "name": "Neurology",
    },
    {
      "id": 6,
      "name": "Cardiology and Vascular Disease",
    },
    {
      "id": 7,
      "name": "Ophthalmology",
    },
  ];

  final List<Map<String, IconData>> _allIcons = [
    {"icon": Icons.face_retouching_natural_outlined},
    {"icon": Icons.medical_services_outlined},
    {"icon": Icons.baby_changing_station_outlined},
    {"icon": Icons.hearing_outlined},
    {"icon": Icons.psychology_outlined},
    {"icon": Icons.favorite_border},
    {"icon": Icons.remove_red_eye_outlined},
  ];

  // This list holds the data for the list view
  List<Map<String, dynamic>> _foundSpecialities = [];
  @override
  initState() {
    // at the beginning, all Specialities  are shown
    _foundSpecialities = _allSpecialities;
    super.initState();
  }

  // This function is called whenever the text field changes
  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all Specialities
      results = _allSpecialities;
    } else {
      results = _allSpecialities
          .where((user) =>
              user["name"].toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
      // we use the toLowerCase() method to make it case-insensitive
    }

    // Refresh the UI
    setState(() {
      _foundSpecialities = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search For Doctor'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.blue[50]),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              onChanged: (value) => _runFilter(value),
              decoration: const InputDecoration(
                  labelText: 'Search For Specialty',
                  suffixIcon: Icon(Icons.search)),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: _foundSpecialities.isNotEmpty
                  ? ListView.builder(
                      itemCount: _foundSpecialities.length,
                      itemBuilder: (context, index) => Card(
                        key: ValueKey(_foundSpecialities[index]["name"]),
                        color: Colors.grey[50],
                        elevation: 4,
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        child: ListTile(
                          leading: Icon(_allIcons[index]['icon']),
                          // leading: Text(
                          //   _foundSpecialities[index]["id"].toString(),
                          //   style: const TextStyle(fontSize: 24),
                          // ),
                          title: Text(_foundSpecialities[index]['name']),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DoctorCards(CategoryName:_foundSpecialities[index]['name'] ,)));
                          },
                        ),
                      ),
                    )
                  : Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      child: const Text(
                        'Sorry , No results found',
                        style: TextStyle(fontSize: 15, color: Colors.indigo),
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
