import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:miniy/view/screen/add_video.dart';
import 'package:miniy/view/screen/display_screen.dart';
import 'package:miniy/view/screen/profile_screen.dart';

// getRandomColor() => Colors.primaries[Random().nextInt(Colors.primaries.length)];

getRandomColor() => [
  Colors.blueAccent,
  Colors.redAccent,
  Colors.greenAccent,
][Random().nextInt(3)];

// COLORS
const backgroundColor = Colors.black;
var buttonColor = Colors.red[400];
const borderColor = Colors.grey;

var pageindex = [
  DisplayVideo_Screen(),
  addVideoScreen(),
  ProfileScreen(uid: FirebaseAuth.instance.currentUser!.uid,),
 
];