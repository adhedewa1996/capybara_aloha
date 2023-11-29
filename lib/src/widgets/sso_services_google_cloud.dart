import 'dart:async';
import 'dart:developer';

import 'package:google_sign_in_platform_interface/google_sign_in_platform_interface.dart';

// import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
// import 'package:google_sign_in_platform_interface/google_sign_in_platform_interface.dart';
// import 'package:inews_flutter/setup_environment.dart';
// import 'package:sign_in_with_apple/sign_in_with_apple.dart';

// const APP_ID_ANDROID_DEV = 'id.mncdigital.inews';
// const SSO_ANDROID_DEV_CLIENT_ID = '937600761207-q2vi0ajvem8hg8vou1nrdng8cetrsplg.apps.googleusercontent.com';
// const SSO_ANDROID_PROD_CLIENT_ID = '937600761207-q2vi0ajvem8hg8vou1nrdng8cetrsplg.apps.googleusercontent.com';

// const APP_ID_IOS_DEV = 'id.co.mediacom.inews.dev.debug';
// const SSO_IOS_DEV_CLIENT_ID = 'com.googleusercontent.apps.937600761207-sn29va0lbn5ckbng0u8745dto321v0dl';
// const SSO_IOS_PROD_CLIENT_ID = 'com.googleusercontent.apps.937600761207-4hcm2lls9bsco4cb5cgog1fo36so0fq6';

mixin ServicesSSOGoogleCloud {
  // static final env = SetupEnvironment.getSelectedEnvirontment();
  // static final appId = APP_ID_IOS_DEV;
  // static final clientId = Platform.isIOS ? SSO_IOS_DEV_CLIENT_ID : SSO_ANDROID_DEV_CLIENT_ID;
  static final googleScopes = [
    'profile',
    'email',
  ];

  // static final appleScopes = [
  //   AppleIDAuthorizationScopes.email,
  //   AppleIDAuthorizationScopes.fullName,
  // ];

  static final facebookScopes = [];

  static Future<void> signInWithGoogle() async {
    try {
      GoogleSignInPlatform.instance.initWithParams(SignInInitParameters(
        scopes: googleScopes,
        clientId: '945913023854-q3shdophq8h1va9i61mqhh4tumf2inoc.apps.googleusercontent.com',
        serverClientId: 'AIzaSyAsLrPE9WLMdQ5JxsHIUoc7iPgWwqb6heQ',
      ));
      final signIn = await GoogleSignInPlatform.instance.signIn();
      logUserDataGoogle(signIn);
    } catch (error) {
      log('ERROR signInWithGoogle $error');
    }
  }

  // static Future<void> signInWithFacebook() async {
  //   try {
  //     final signIn = await FacebookAuth.instance.login(loginBehavior: LoginBehavior.dialogOnly);
  //     log(signIn.toString());
  //     inspect(signIn);
  //   } catch (error) {
  //     log('ERROR signInWithFacebook $error');
  //   }
  // }

  // static Future<void> signInWithApple() async {
  //   try {
  //     final appleCredential = await SignInWithApple.getAppleIDCredential(
  //       scopes: appleScopes,
  //       nonce: 'nonce',
  //       state: 'state',
  //     );
  //     logUserDataApple(appleCredential);
  //   } catch (error) {
  //     log('ERROR signInWithGoogle $error');
  //   }
  // }

  // LOG USER DATA INFORMATION
  static void logUserDataGoogle(GoogleSignInUserData? userData) {
    log('---------------- USER DATA GOOGLE -------------------');
    log('displayName: ${userData?.displayName}');
    log('email: ${userData?.email}');
    log('id: ${userData?.id}');
    log('idToken: ${userData?.idToken}');
    log('photoUrl: ${userData?.photoUrl}');
    log('serverAuthCode: ${userData?.serverAuthCode}');
    log('----------------------------------------------');
  }

  // static void logUserDataApple(AuthorizationCredentialAppleID? userData) {
  //   log('---------------- USER DATA APPLE -------------------');
  //   log('authCode: ${userData?.authorizationCode}');
  //   log('token: ${userData?.identityToken ?? '-'}');
  //   log('givenName: ${userData?.givenName ?? '-'}');
  //   log('familyName: ${userData?.familyName ?? '-'}');
  //   log('userIdentifier: ${userData?.userIdentifier ?? '-'}');
  //   log('email: ${userData?.email ?? '-'}');
  //   log('----------------------------------------------');
  // }

  // generate random nonce
  // static String _generateNonce([int length = 32]) {
  //   const charset = '0123456789ABCDEFGHIJKLMNOPQRSTUVXYZabcdefghijklmnopqrstuvwxyz-._';
  //   final random = math.Random.secure();
  //   return List.generate(length, (_) => charset[random.nextInt(charset.length)]).join();
  // }
  // SHA256
  // static String _sha256ofString(String input) {
  //   final bytes = utf8.encode(input);
  //   final digest = sha256.convert(bytes);
  //   return digest.toString();
  // }

  // GOOGLE SSO HELPER
  // static String getGoogleAccountEmail() => _googleSignInAccount?.email ?? '-';
  // static String getGoogleAccountDisplayName() => _googleSignInAccount?.displayName ?? '-';
  // static String getGoogleAccountPhotoUrl() => _googleSignInAccount?.photoUrl ?? '-';

  // LOGOUT
  // static Future<void> googleLogout({Function? onLogoutSuccess}) async {
  //   await _googleSignIn.signOut().then((_) => onLogoutSuccess?.call());
  // }
}
