import 'dart:convert';

class DoctorModel {
    String name;
    String type;
    String description;
    double fees;
    String image;
    double lonLocation;
    double latLocation;
    String location;
    List<String>appointment;


    DoctorModel({
        required this.name,
        required this.type,
        required this.description,
        required this.fees,
        required this.image,
        required this.latLocation,
        required this.lonLocation,
        required this.location,
        required this.appointment
    });

}
