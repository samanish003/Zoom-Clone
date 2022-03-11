import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirestoreMethods {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  final FirebaseAuth _auth = FirebaseAuth.instance;

  Stream<QuerySnapshot<Map<String, dynamic>>> get meetingsHistory => _firestore
      .collection('user')
      .doc(_auth.currentUser!.uid)
      .collection('meetinngs')
      .snapshots();

  void addToMeetingHistory(String meetingName) async {
    try {
      await _firestore
          .collection('user')
          .doc(_auth.currentUser!.uid)
          .collection('meetinngs')
          .add(
        {
          'meetingName': meetingName,
          'createdAt': DateTime.now(),
        },
      );
    } catch (e) {
      print(e);
    }
  }
}
