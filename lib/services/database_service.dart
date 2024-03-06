// ignore_for_file: unused_field, constant_identifier_names, empty_constructor_bodies

import 'package:cloud_firestore/cloud_firestore.dart';

const String USER_COLLECTION = "Uers";
const String CHAT_COLLECTION = "Chats";
const String MESSAGES_COLLECTION = "Messaages"; 

class DatabaseService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  DatabaseService() {}
}