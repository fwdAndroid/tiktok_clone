import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:tiktok_clone/screens/bottomscreens/add_video_screen.dart';
import 'package:tiktok_clone/screens/bottomscreens/profile_screen.dart';
import 'package:tiktok_clone/screens/bottomscreens/search_screen.dart';
import 'package:tiktok_clone/screens/bottomscreens/video_screen.dart';

import 'controllers/auth_controllers.dart';

List pages = [
  VideoScreen(),
  SearchScreen(),
   AddVideoScreen(),
  Text('Messages Screen'),
  ProfileScreen(uid: authController.user.uid,),
];

// COLORS
const backgroundColor = Colors.black;
var buttonColor = Colors.red[400];
const borderColor = Colors.grey;

// FIREBASE
var firebaseAuth = FirebaseAuth.instance;
var firebaseStorage = FirebaseStorage.instance;
var firestore = FirebaseFirestore.instance;

// CONTROLLER
var authController = AuthController.instance;
