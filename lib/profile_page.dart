
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:google_sign_in_flutter/provider/google_sign_in.dart';
// import 'package:provider/provider.dart';
//
// class ProfilePage extends StatefulWidget {
//   const ProfilePage({Key? key}) : super(key: key);
//
//   @override
//   _ProfilePageState createState() => _ProfilePageState();
// }
//
// class _ProfilePageState extends State<ProfilePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: StreamBuilder(
//         stream: FirebaseAuth.instance.authStateChanges(),
//         builder: (context , snapshot){
//           if(snapshot.connectionState == ConnectionState.waiting){
//             return Center(child: CircularProgressIndicator(),);
//           }else if(snapshot.hasData){
//             return LoggedInWidget();     //  13:32
//           }else if(snapshot.hasError){
//             return Center(child: Text("error"),);     //  13:32
//           }else{
//             return SignUpWidget(context);
//           }
//         },
//       ),
//     );
//   }
// }
//
//
//
//
//
// Widget SignUpWidget(BuildContext context) {
//   return Container(
//     child:Container(
//       margin: EdgeInsets.only(right: 20,left: 20 ,top: 100),
//       child: ElevatedButton.icon(
//         style: ElevatedButton.styleFrom(
//           primary: Colors.white,
//           onPrimary: Colors.black,
//           minimumSize: Size(double.infinity, 50),
//         ),
//         icon: FaIcon(
//           FontAwesomeIcons.google,
//           color: Colors.red,
//         ),
//         label: Text("Sign up with google"),
//         onPressed: () {
//           final provider = Provider.of<GoogleSignInProvider>(context , listen: false);
//           provider.googleLogin();
//
//           // UserCredential dd = provider.signInWithGooglezz() as UserCredential;
//           // var ff  = dd;
//
//         },
//       ),
//     ),
//
//   );
// }
//
//
//
// class LoggedInWidget extends StatelessWidget {
//   const LoggedInWidget({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//
//     final user = FirebaseAuth.instance.currentUser!;
//
//     return Scaffold(
//       body:Column(
//         children: [
//
//           SizedBox(height: 100,),
//           Text(user.displayName.toString()),
//           SizedBox(height: 10,),
//           RaisedButton(
//             child: Text("sign out"),
//               onPressed: (){
//                 final provider = Provider.of<GoogleSignInProvider>(context , listen: false);
//                 provider.logout();
//               })
//         ],
//       )
//
//
//     );
//   }
// }
//
