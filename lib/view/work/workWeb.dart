import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mufeeda/controller/generalController.dart';
import 'package:mufeeda/resource/appClass.dart';

import '../../resource/colors.dart';

class WorkWeb extends ConsumerStatefulWidget {
  const WorkWeb({Key? key}) : super(key: key);

  @override
  ConsumerState<WorkWeb> createState() => _WorkWebState();
}

class _WorkWebState extends ConsumerState<WorkWeb> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // RichText(
        //   text: TextSpan(
        //       text: "03.",
        //       style: TextStyle(
        //           color: AppColors().neonColor,
        //           fontSize: 20,
        //           fontFamily: 'sfmono'),
        //       children: <TextSpan>[
        //         TextSpan(
        //           text: ' My Project Portfolio',
        //           style: GoogleFonts.roboto(
        //               color: AppColors().textColor,
        //               letterSpacing: 1,
        //               fontWeight: FontWeight.bold,
        //               fontSize: 25),
        //         )
        //       ]),
        // ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                  text: "| ",
                  style: TextStyle(
                      color: AppColors().neonColor,
                      fontSize: 20,
                      fontFamily: 'sfmono'),
                  children: <TextSpan>[
                    TextSpan(
                      text: ' My Project Portfolio',
                      style: GoogleFonts.robotoSlab(
                          color: AppColors().neonColor,
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    )
                  ]),
            ),
            Container(
              height: 0.5,
              margin: EdgeInsets.only(left: 15),
              width: AppClass().getMqWidth(context) * 0.2,
              color: AppColors().textLight,
            )
          ],
        ),
        // Padding(
        //   padding: const EdgeInsets.only(top: 8.0),
        //   child: Text(
        //     'view the archives',
        //     style: TextStyle(
        //         color: AppColors().neonColor,
        //         fontSize: 15,
        //         fontFamily: 'sfmono'),
        //   ),
        // ),
        Container(
          padding: EdgeInsets.only(top: 30.0, bottom: 70.0),
          child: StaggeredGrid.count(
            crossAxisCount: 3,
            mainAxisSpacing: 4,
            crossAxisSpacing: 4,
            children: [
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: getTile(index: 0),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: getTile(index: 1),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: getTile(index: 2),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: getTile(index: 3),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: getTile(index: 4),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: getTile(index: 5),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: getTile(index: 6),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: getTile(index: 7),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: getTile(index: 8),
              ),
            ],
          ),
        ),
      ],
    );
  }

  getTile({required int index}) {
    return InkWell(
      onTap: () async {
        switch (index) {
          case 0:
            //await launchUrl(Uri.parse(AppClass.gitSafeC19));
            break;

          case 1:
            //AppClass().alertDialog(context, 'Not Found', 'Sorry the project you requested not found in the repository');
            break;

          case 2:
            //await launchUrl(Uri.parse(AppClass.gitWtIot));
            break;

          case 3:
            //await launchUrl(Uri.parse(AppClass.gitAutoStabilizer));
            break;

          case 4:
            //await launchUrl(Uri.parse(AppClass.gitPAT));
            break;

          case 5:
            //AppClass().alertDialog(context, 'Not Found', 'Sorry the project you requested not found in the repository');
            break;
        }
      },
      onHover: (bool) {
        if (bool) {
          ref.read(hoverProvider.notifier).state = "$index";
        } else {
          ref.read(hoverProvider.notifier).state = "";
        }
      },
      child: Consumer(builder: (context, ref, child) {
        String data = ref.watch(hoverProvider);
        bool isHovered = (data == "$index");
        return Container(
          margin: EdgeInsets.all(isHovered ? 8.0 : 0.0),
          // child: Tooltip(
            // message: AppClass().projectList[index].projectTitle.toString() + "\n\n" + AppClass().projectList[index].projectContent.toString(),
            // padding: EdgeInsets.all(20),
            // margin: EdgeInsets.all(AppClass().getMqWidth(context) * 0.1),
            // waitDuration: Duration(seconds: 3),
            // decoration: BoxDecoration(
            //   color: AppColors().primaryColor.withOpacity(0.9),
            //   borderRadius: const BorderRadius.all(Radius.circular(4)),
            // ),
            // textStyle: TextStyle(color: AppColors().whiteColor),
            // preferBelow: true,
            // verticalOffset: 20,
            child: Card(
              color: AppColors().cardColor,
              elevation: 5,
              child: Container(
                padding: EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset(
                          'assets/svg/folder.svg',
                          width: 45,
                          height: 45,
                          color: AppColors().neonColor,
                        ),
                        InkWell(
                          onTap: () {
                            AppClass().playStoreLink(context, AppClass().projectList[index].link.toString());
                            },
                          child: SvgPicture.asset(
                            'assets/svg/googlePlay.svg',
                            width: 22,
                            height: 22,
                            color: isHovered ? AppColors().neonColor : AppColors().darkGrey,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0, bottom: 8.0),
                      child: Row(
                        children: [
                          Text(
                            AppClass().projectList[index].projectTitle.toString(),
                            textAlign: TextAlign.left,
                            style: GoogleFonts.robotoSlab(
                                color: isHovered
                                    ? AppColors().neonColor
                                    : AppColors().darkGrey,
                                letterSpacing: 1,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                        child: Text(
                          AppClass().projectList[index].projectContent.toString(),
                          style: GoogleFonts.roboto(
                            color: AppColors().textLight,
                            letterSpacing: 1,
                            height: 1.5,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          AppClass().projectList[index].tech1 ?? "",
                          style: GoogleFonts.roboto(
                            color: AppColors().textLight,
                            letterSpacing: 1,
                            fontSize: 12,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        Text(
                          "  |  ",
                          style: GoogleFonts.roboto(
                              color: AppColors().textLight,
                              letterSpacing: 1,
                              fontSize: 12,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        Text(
                          AppClass().projectList[index].tech2 ?? "",
                          style: GoogleFonts.roboto(
                            color: AppColors().textLight,
                            letterSpacing: 1,
                            fontSize: 12,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        Text(
                          "  |  ",
                          style: GoogleFonts.roboto(
                              color: AppColors().textLight,
                              letterSpacing: 1,
                              fontSize: 12,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        Text(
                          AppClass().projectList[index].tech3 ?? "",
                          style: GoogleFonts.roboto(
                            color: AppColors().textLight,
                            letterSpacing: 1,
                            height: 1.5,
                            fontSize: 12,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0, bottom: 8.0),
                      child: InkWell(
                        onTap: () {
                          showWebMessageDialog(context, AppClass().projectList[index].projectTitle.toString(), AppClass().projectList[index].image.toString());
                        },
                        child: Text(
                          "View more >",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.roboto(
                              color: AppColors().neonColor,

                              letterSpacing: 1,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          // ),
        );
      }),
    );
  }

  showWebMessageDialog(context, String projectName, String image) {
    final nameController = TextEditingController();
    final contactInfoController = TextEditingController();
    final msgController = TextEditingController();

    final _formKey = GlobalKey<FormState>();

    showDialog(context: context,
        barrierDismissible: false,
        builder: (_) => AlertDialog(
          backgroundColor: AppColors().primaryColor,
          titleTextStyle: TextStyle(
              color: AppColors().neonColor,
              fontSize: 18,
              fontFamily: 'sfmono'),
          title: Row(
            children: [
              Expanded(flex: 9, child: Text(projectName)),
              IconButton(onPressed: () => Navigator.pop(context), icon: Icon(Icons.close, color: AppColors().textColor))
            ],
          ),
          content: Consumer(
              builder: (context, ref, child) {
                bool isLoading = ref.watch(progressProvider);
                return Stack(
                  children: [
                    Container(

                      width: AppClass().getMqWidth(context) * 0.7,
                      height: AppClass().getMqHeight(context) * 0.8,
                        decoration: BoxDecoration(
                            // color: AppColors().primaryColor,
                            borderRadius:
                            BorderRadius.all(Radius.circular(5.0)),
                            image: DecorationImage(
                                fit: BoxFit.fitHeight,
                                image: AssetImage(image)),
                            color: Colors.transparent)
                    ),
                    Visibility(
                      visible: isLoading,
                      child: Container(
                          width: AppClass().getMqWidth(context) * 0.5,
                          height: AppClass().getMqHeight(context) * 0.7,
                          color: Colors.transparent,
                          child: Center(child: CircularProgressIndicator(color: AppColors().neonColor))),
                    ),
                  ],
                );
              }
          ),
        ));
  }
}
