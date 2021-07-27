import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

var buttonRadius = ButtonStyle(
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24.0),
            side: BorderSide(color: Colors.green)
        )
    )
);

var textHeading1 = TextStyle(
  fontSize: 20.0,
  fontWeight: FontWeight.bold,
);

var textHeading2 = TextStyle(
  fontSize: 18.0,
  fontWeight: FontWeight.bold,
);

var textHeading3 = TextStyle(
  fontSize: 16.0,
  fontWeight: FontWeight.bold,
);

var textHeading4 = TextStyle(
  fontSize: 14.0,
  fontWeight: FontWeight.bold,
);

var textHeading5 = TextStyle(
  fontSize: 12.0,
  fontWeight: FontWeight.bold,
);

var textParagraf1 = TextStyle(
  fontSize: 20.0,
);

var textParagraf2 = TextStyle(
  fontSize: 18.0
);

var textParagraf3 = TextStyle(
  fontSize: 16.0
);

var textParagraf4 = TextStyle(
  fontSize: 14.0
);

var textParagraf5 = TextStyle(
  fontSize: 12.0
);