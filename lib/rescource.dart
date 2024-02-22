import 'dart:io';
import 'user.dart';

import 'package:flutter/material.dart';

class Resource {
  User user_created;
  String resource_type;
  File attachments;
  String code;
  File design_templates;

  Resource(this.user_created, this.resource_type, this.attachments, this.code, this.design_templates);
}