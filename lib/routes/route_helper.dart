import 'package:get/get.dart';
import 'package:goldmine/pages/home_page.dart';
import 'package:goldmine/pages/recent/recent_details.dart';
import 'package:goldmine/pages/recent/recent_post.dart';
import 'package:goldmine/pages/services/service_page.dart';
import 'package:goldmine/pages/sidebar_pages/about_us.dart';
import 'package:goldmine/pages/sidebar_pages/terms_and_condition.dart';
import 'package:goldmine/pages/splash_page.dart';
import 'package:goldmine/pages/study_in/detail/study_in_detail.dart';

class RouteHelper{
  static const String splashPage="/splash-page";
  static const String initial = "/";
  static const String studyIn="/study_in";
  static const String blog="/blog";
  static const String termsPage="/terms-page";
  static const String aboutUs="/about-us";
   static const String ourServices="/our_services";

  static String getSplashPage()=>'$splashPage';
  static String getStudyIn(int pageId)=>'$studyIn?pageId=$pageId';
  static String getBlog(int pageId)=>'$blog?pageId=$pageId';
  static String getInitial()=>'$initial';
  static String getTermsPage()=>'$termsPage';
  static String getAboutUs()=>'$aboutUs';
   static String getOurServices()=>'$ourServices';

  static List<GetPage> routes=[

    GetPage(name: splashPage, page: (){
      return SplashScreen();
    }),

    GetPage(name: initial, page: (){
      return HomePage();
    },
    transition: Transition.fadeIn
    ),
    GetPage(name: studyIn, page: (){
      var pageId=Get.parameters['pageId'];
      return StudyInDetails(pageId: int.parse(pageId!),);
    },
    transition: Transition.fadeIn
    ),
    GetPage(name: blog, page: (){
      var pageId=Get.parameters['pageId'];
      return RecentDetails(pageId: int.parse(pageId!),);
    },
    transition: Transition.circularReveal
    ),
   
    GetPage(name: termsPage, page: (){
      return TermsAndCondition();
    },),
    // transition: Transition.fadeIn
    // ),
    GetPage(name: aboutUs, page: (){
      return AboutUs();
    },
    transition: Transition.fadeIn
    ),
    GetPage(name: ourServices, page: (){
      return OurServices();
    },
    transition: Transition.fadeIn
    ),
  ];
}