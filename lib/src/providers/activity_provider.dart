import 'dart:io';

import 'package:manzu_app/src/models/activity_model.dart';

class ActivityProviders {
  
  Future<List<Activity>> getActivites() async {
    
    List<Activity> list = List();

    list.add(Activity(id: 1, name: "Camio de aceite", date: "20/10/2019 15:30:00", idStatus: 1, personIncharge: "Pedro juarez"));
    list.add(Activity(id: 2, name: "Limpieza de carburador", date: "19/10/2019 15:30:00", idStatus: 2, personIncharge: "David Marinez"));
    list.add(Activity(id: 2, name: "Limpieza de carburador", date: "19/10/2019 15:30:00", idStatus: 2, personIncharge: "David Marinez"));
    list.add(Activity(id: 2, name: "Limpieza de carburador", date: "19/10/2019 15:30:00", idStatus: 2, personIncharge: "David Marinez"));
    list.add(Activity(id: 2, name: "Limpieza de carburador", date: "19/10/2019 15:30:00", idStatus: 2, personIncharge: "David Marinez"));
    list.add(Activity(id: 2, name: "Limpieza de carburador", date: "19/10/2019 15:30:00", idStatus: 2, personIncharge: "David Marinez"));
    list.add(Activity(id: 2, name: "Limpieza de carburador", date: "19/10/2019 15:30:00", idStatus: 2, personIncharge: "David Marinez"));
    list.add(Activity(id: 2, name: "Limpieza de carburador", date: "19/10/2019 15:30:00", idStatus: 2, personIncharge: "David Marinez"));
    list.add(Activity(id: 2, name: "Limpieza de carburador", date: "19/10/2019 15:30:00", idStatus: 2, personIncharge: "David Marinez"));
    list.add(Activity(id: 2, name: "Limpieza de carburador", date: "19/10/2019 15:30:00", idStatus: 2, personIncharge: "David Marinez"));
    list.add(Activity(id: 2, name: "Limpieza de carburador", date: "19/10/2019 15:30:00", idStatus: 2, personIncharge: "David Marinez"));
    list.add(Activity(id: 2, name: "Limpieza de carburador", date: "19/10/2019 15:30:00", idStatus: 2, personIncharge: "David Marinez"));
    list.add(Activity(id: 2, name: "Limpieza de carburador", date: "19/10/2019 15:30:00", idStatus: 2, personIncharge: "David Marinez"));
    list.add(Activity(id: 2, name: "Limpieza de carburador", date: "19/10/2019 15:30:00", idStatus: 2, personIncharge: "David Marinez"));
    list.add(Activity(id: 2, name: "Limpieza de carburador", date: "19/10/2019 15:30:00", idStatus: 2, personIncharge: "David Marinez"));
    list.add(Activity(id: 2, name: "Limpieza de carburador", date: "19/10/2019 15:30:00", idStatus: 2, personIncharge: "David Marinez"));
    list.add(Activity(id: 2, name: "Limpieza de carburador", date: "19/10/2019 15:30:00", idStatus: 2, personIncharge: "David Marinez"));
    list.add(Activity(id: 2, name: "Limpieza de carburador", date: "19/10/2019 15:30:00", idStatus: 2, personIncharge: "David Marinez"));

    sleep(const Duration(seconds: 5));

    return list;
  }
}