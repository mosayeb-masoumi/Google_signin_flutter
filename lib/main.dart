import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in_flutter/provider/google_sign_in.dart';
import 'package:google_sign_in_flutter/register_google_page.dart';
import 'package:provider/provider.dart';


void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  // initializing the firebase app
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context)=> ChangeNotifierProvider(
      create: (context) => GoogleSignInProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home:RegisterGooglePage(),
      ),
    );

}
/*  min sdk 21   add json firebase to android directory add fingerprint and enable authentication of firebase in firebase console  */