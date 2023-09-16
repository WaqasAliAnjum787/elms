import 'package:flutter/cupertino.dart';
import 'package:student_managmane_dashboard/Pages/Dashboard/DashboardPage/dashboard_page.dart';
import 'package:student_managmane_dashboard/Pages/fee_structure/fee_structure_page.dart';
import 'package:student_managmane_dashboard/Pages/group_details_page/group_details_page.dart';

Route? onGenerateRout(RouteSettings settings) {
  if (settings.name == Dashboard.name) {
    return CupertinoPageRoute(builder: dashboardBuilder);
  } else if (settings.name == GroupDetailsPage.name) {
    return CupertinoPageRoute(builder: groupDetailsBuilder);
  } else if (settings.name == FeeStructurePage.name) {
    return CupertinoPageRoute(builder: feeStructureBuilder);
  }
}

Widget dashboardBuilder(BuildContext context) {
  return const Dashboard();
}

Widget groupDetailsBuilder(BuildContext context) {
  return GroupDetailsPage();
}

Widget feeStructureBuilder(BuildContext context) {
  return FeeStructurePage();
}
