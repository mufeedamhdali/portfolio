import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mufeeda/resource/responsive.dart';
import 'package:mufeeda/view/work/workWeb.dart';
import 'package:mufeeda/view/work/workMobile.dart';
import 'package:mufeeda/view/work/workTab.dart';

class Work extends StatefulWidget {
  const Work({Key? key}) : super(key: key);

  @override
  State<Work> createState() => _WorkState();
}

class _WorkState extends State<Work> {
  @override
  Widget build(BuildContext context) {
    return Responsive(
      tabView: WorkTab(),
      webView: WorkWeb(),
      mobileView: WorkMobile(),
    );
  }
}
