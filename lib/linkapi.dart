class AppLink {
  static const String server = "https://ecommerce-4hlw.onrender.com";
//
  static const String test = "$server/test.php";

// ================================= Auth ========================== //

  static const String signUp = "$server/auth/register";
  static const String login = "$server/auth/login";
  static const String verifycodessignup = "$server/auth/verify-code";

  // ================================= ForgetPassword ========================== //

  static const String checkEmail = "$server/forgetPassword/checkEmail";
  static const String verifycodeforgetpassword =
      "$server/forgetPassword/verifyCode";
  static const String resetPassword = "$server/forgetPassword/resetPassword";

  // Home

  static const String homepage = "$server/home";
  // products
  static const String products = "$server/products/category";
}
