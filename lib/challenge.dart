import 'dart:io';
import 'user.dart';
import 'challengetype.dart';

import 'package:flutter/material.dart';

class Challenge {
  User user;
  ChallengeType challenge_type;
  String challenge_name;
  String challenge_difficulty;

  Challenge(this.user, this.challenge_type, this.challenge_name, this.challenge_difficulty);
}