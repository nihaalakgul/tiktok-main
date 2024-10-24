import 'package:flutter/material.dart';
import 'package:tiktok/Screens/AddvideoScreen/addvideoscreen.dart';
import 'package:tiktok/Screens/FriendScreen/friendscreen.dart';
import 'package:tiktok/Screens/HomeScreen/homescreen.dart';
import 'package:tiktok/Screens/InboxScreen/inboxscreen.dart';
import '../Screens/Profile_Screen/profile_screen.dart';

List pages = const [
  HomeScreen(),
  FriendScreen(),
  AddvadioScreen(),
  InboxScreen(),
  ProfileScreen()
];

var commonsizebox = const SizedBox(
  height: 20,
);
