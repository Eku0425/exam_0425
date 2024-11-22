import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';

class GoogleFirebaseServices {
  static GoogleFirebaseServices googleFirebaseServices =
      GoogleFirebaseServices._();
  GoogleFirebaseServices._();

  FirebaseFirestore firestore = FirebaseFirestore.instance;

  void allDataStore(Inventory) {
    try {
      CollectionReference users = firestore.collection('contact');
      users.doc(Inventory.id.toString()).set(Inventory.toMap());
    } catch (e) {
      log(e.toString());
    }
  }

  Stream<QuerySnapshot<Object?>> getData() {
    Stream<QuerySnapshot> usersStream =
        firestore.collection('contact').snapshots();
    return usersStream;
  }
}
