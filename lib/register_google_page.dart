
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_sign_in_flutter/provider/google_sign_in.dart';
import 'package:provider/provider.dart';

class RegisterGooglePage extends StatefulWidget {
  const RegisterGooglePage({Key? key}) : super(key: key);

  @override
  _RegisterGooglePageState createState() => _RegisterGooglePageState();
}

class _RegisterGooglePageState extends State<RegisterGooglePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: Column(
          children: [

            SizedBox(height: 100,),
            Container(
              margin: EdgeInsets.only(right: 20,left: 20),
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.black,
                  minimumSize: Size(double.infinity, 50),
                ),
                icon: FaIcon(
                  FontAwesomeIcons.google,
                  color: Colors.red,
                ),
                label: Text("Sign up with google"),
                onPressed: () async {

                  final provider = Provider.of<GoogleSignInProvider>(context , listen: false);
                  var userInfo = await provider.googleLogin();

                  var displayname = userInfo?.displayname.toString();
                  var email = userInfo?.email.toString();
                  var photoUrl = userInfo?.photoUrl.toString();
                  var idToken = userInfo?.idToken.toString();
                  var accessToken = userInfo?.accessToken.toString();

                },
              ),
            ),
          ],
        ));
  }


}