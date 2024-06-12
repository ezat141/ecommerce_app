import 'package:ecommerce_app/core/constant/routes.dart';
import 'package:ecommerce_app/core/middleware/mymiddleware.dart';
import 'package:ecommerce_app/view/screen/auth/forgetpassword/forgetpassword.dart';
import 'package:ecommerce_app/view/screen/auth/forgetpassword/resetpassword.dart';
import 'package:ecommerce_app/view/screen/auth/forgetpassword/success_resetpassword.dart';
import 'package:ecommerce_app/view/screen/auth/login.dart';
import 'package:ecommerce_app/view/screen/auth/signup.dart';
import 'package:ecommerce_app/view/screen/auth/forgetpassword/verifycode.dart';
import 'package:ecommerce_app/view/screen/auth/success_signup.dart';
import 'package:ecommerce_app/view/screen/auth/verifycodesignup.dart';
import 'package:ecommerce_app/view/screen/homescreen.dart';
import 'package:ecommerce_app/view/screen/language.dart';
import 'package:ecommerce_app/view/screen/myfavorite.dart';
import 'package:ecommerce_app/view/screen/onboarding.dart';
import 'package:ecommerce_app/view/screen/productdetails.dart';
import 'package:ecommerce_app/view/screen/products.dart';
import 'package:get/get.dart';

// Map<String, Widget Function(BuildContext)> routes = {
//   // Auth
//   AppRoute.login: (context) => const Login(),
//   AppRoute.signUp: (context) => const SignUp(),
//   AppRoute.forgetPassword: (context) => const ForgetPassword(),
//   AppRoute.verfiyCode: (context) => const VerfiyCode(),
//   AppRoute.resetPassword: (context) => const ResetPassword(),
//   AppRoute.successResetpassword: (context) => const SuccessResetPassword(),
//   AppRoute.successSignUp: (context) => const SuccessSignUp(),
//   // OnBoarding
//   AppRoute.onBoarding: (context) => const OnBoarding(),
//   AppRoute.verfiyCodeSignUp: (context) => const VerfiyCodeSignUp(),
// };
List<GetPage<dynamic>>? routes = [
  GetPage(
      name: "/", page: () => const Language(), middlewares: [MyMiddleWare()]),
            

  GetPage(
    name: AppRoute.login,
    page: () => const Login(),
  ),
  GetPage(
    name: AppRoute.signUp,
    page: () => const SignUp(),
  ),
  GetPage(
    name: AppRoute.forgetPassword,
    page: () => const ForgetPassword(),
  ),
  GetPage(
    name: AppRoute.verfiyCode,
    page: () => const VerfiyCode(),
  ),
  GetPage(
    name: AppRoute.resetPassword,
    page: () => const ResetPassword(),
  ),
  GetPage(
    name: AppRoute.successResetpassword,
    page: () => const SuccessResetPassword(),
  ),
  GetPage(
    name: AppRoute.successSignUp,
    page: () => const SuccessSignUp(),
  ),
  GetPage(
    name: AppRoute.onBoarding,
    page: () => const OnBoarding(),
  ),
  GetPage(
      name: AppRoute.verfiyCodeSignUp, page: () => const VerfiyCodeSignUp()),
  GetPage(name: AppRoute.homepage, page: () => const HomeScreen()),
  GetPage(name: AppRoute.products, page: () => const Products()),
  GetPage(name: AppRoute.productdetails, page: () => const  ProductDetails()),
  GetPage(name: AppRoute.myfavroite, page: () => const MyFavorite()), 
];
