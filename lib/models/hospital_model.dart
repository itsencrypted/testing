import 'package:testing/models/activity_model.dart';

class Hospital {
  String imageUrl;
  String name;
  String city;
  String description;
  int availableBeds;
  List<Activity> activities;

  Hospital({
    this.imageUrl,
    this.name,
    this.city,
    this.description,
    this.availableBeds,
    this.activities,
  });
}

List<Activity> activities = [
  Activity(
    imageUrl: 'images/stmarksbasilica.jpg',
    name: 'St. Mark\'s Basilica',
    type: 'Sightseeing Tour',
    startTimes: ['9:00 am', '11:00 am'],
    rating: 5,
    price: 30,
  ),
  Activity(
    imageUrl: 'images/gondola.jpg',
    name: 'Walking Tour and Gondola Ride',
    type: 'Sightseeing Tour',
    startTimes: ['11:00 am', '1:00 pm'],
    rating: 4,
    price: 210,
  ),
  Activity(
    imageUrl: 'images/murano.jpg',
    name: 'Murano and Burano Tour',
    type: 'Sightseeing Tour',
    startTimes: ['12:30 pm', '2:00 pm'],
    rating: 3,
    price: 125,
  ),
];

List<Hospital> hospitals = [
  Hospital(
    imageUrl: 'images/hospital1.jpg',
    name: 'Hospital Sirio Libanes',
    city: 'SP',
    description: 'Este hospital conta com mais de 108 plantonistas, 4 infectologistas e oito andares dedicados exclusivamente a pacientes com COVID-19.',
    availableBeds: 175,
    activities: activities,
  ),
  Hospital(
    imageUrl: 'images/hospital2.jpg',
    name: 'Hospital 9 de Julho',
    city: 'SP',
    description: 'Este hospital conta com 56 plantonistas, 2 infectologistas e tres andares dedicados exclusivamente a pacientes com COVID-19.',
    availableBeds: 78,
    activities: activities,
  ),
  Hospital(
    imageUrl: 'images/hospital3.jpg',
    name: 'Hospsital Santa Catarina',
    city: 'SP',
    description: 'Este hospital conta com mais de 52 plantonistas, 3 infectologistas e cinco andares dedicados exclusivamente a pacientes com COVID-19',
    availableBeds: 83,
    activities: activities,
  ),
  Hospital(
    imageUrl: 'images/hospital4.png',
    name: 'Hospital Alemao Oswaldo Cruz',
    city: 'SP',
    description: 'Este hospital conta com mais de 68 plantonistas, 4 infectologistas e cinco andares dedicados exclusivamente a pacientes com COVID-19.',
    availableBeds: 116,
    activities: activities,
  ),
  Hospital(
    imageUrl: 'images/newyork.jpg',
    name: 'New York City',
    city: 'United States',
    description: 'Visit New York for an amazing and unforgettable adventure.',
    availableBeds: 8460,
    activities: activities,
  ),
];