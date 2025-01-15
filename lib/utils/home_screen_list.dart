import 'package:mhgap_urdu/screens/administrative/home_administrative.dart';
import 'package:mhgap_urdu/screens/detail_screen.dart';
import 'package:mhgap_urdu/screens/diagnoses/home_diagnosis.dart';
import 'package:mhgap_urdu/screens/followup_screen.dart';
import 'package:mhgap_urdu/screens/further_information/f_information_home.dart';

const cardList = [
  {
    'title': 'تشخیص',
    'englishTitle': 'Assessment',
    'image': 'assets/images/assessment_icon.png',
    'image_height': 75.0,
    'image_width': 95.0,
    'screen': DiagnosisHomeScreen(),
    'screenIndex': 0,
  },
  {
    'title': 'تفصیل',
    'englishTitle': 'Description',
    'image': 'assets/images/description_icon.png',
    'image_height': 75.0,
    'image_width': 85.0,
    'screen': DetailScreen(),
    'screenIndex': 1,
  },
  {
    'title': 'فالو اپ',
    'englishTitle': 'Follow Up',
    'image': 'assets/images/followup_icon.png',
    'image_height': 75.0,
    'image_width': 75.0,
    'screen': FollowupScreen(),
    'screenIndex': 2,
  },
  {
    'title': 'انتظامی اقدامات ',
    'englishTitle': 'Management',
    'image': 'assets/images/management_icon.png',
    'image_height': 75.0,
    'image_width': 105.0,
    'screen': HomeAdministrativeSreen(),
    'screenIndex': 3,
  },
  {
    'title': 'مزید معلومات',
    'englishTitle': 'Further Information',
    'image': 'assets/images/further_information.png',
    'image_height': 65.0,
    'image_width': 95.0,
    'screen': FurtherInformationScreen(),
    'screenIndex': 4,
  },
];
