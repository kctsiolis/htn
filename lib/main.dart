// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';

// FirebaseAuth _auth = FirebaseAuth.instance;

// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   final Future<FirebaseApp> _fbApp = Firebase.initializeApp();

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         title: 'Flutter Demo',
//         theme: ThemeData(
//           // This is the theme of your application.
//           //
//           // Try running your application with "flutter run". You'll see the
//           // application has a blue toolbar. Then, without quitting the app, try
//           // changing the primarySwatch below to Colors.green and then invoke
//           // "hot reload" (press "r" in the console where you ran "flutter run",
//           // or simply save your changes to "hot reload" in a Flutter IDE).
//           // Notice that the counter didn't reset back to zero; the application
//           // is not restarted.
//           primarySwatch: Colors.blue,
//           // This makes the visual density adapt to the platform that you run
//           // the app on. For desktop platforms, the controls will be smaller and
//           // closer together (more dense) than on mobile platforms.
//           visualDensity: VisualDensity.adaptivePlatformDensity,
//         ),
//         home: FutureBuilder(
//             future: _fbApp,
//             builder: (context, snapshot) {
//               if (snapshot.hasError) {
//                 print('You have an error! ${snapshot.error.toString()}');
//                 return Text('Something went wrong!');
//               } else if (snapshot.hasData) {
//                 return MyHomePage(title: 'Flutter Demo Home Page');
//               } else {
//                 return Center(
//                   child: CircularProgressIndicator(),
//                 );
//               }
//             })
//         //MyHomePage(title: 'Flutter Demo Home Page'),
//         );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

//   @override
//   Widget build(BuildContext context) {
//     final emailField = TextField(
//       obscureText: false,
//       style: style,
//       decoration: InputDecoration(
//           contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
//           hintText: "Email",
//           border:
//               OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
//     );
//     final passwordField = TextField(
//       obscureText: true,
//       style: style,
//       decoration: InputDecoration(
//           contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
//           hintText: "Password",
//           border:
//               OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
//     );
//     final loginButon = Material(
//       elevation: 5.0,
//       borderRadius: BorderRadius.circular(30.0),
//       color: Color(0xff01A0C7),
//       child: MaterialButton(
//         minWidth: MediaQuery.of(context).size.width,
//         padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
//         onPressed: () async {
//           _register();
//           //var auth = _auth;
//           //final User user = auth.currentUser;
//           // if (user == null) {
//           //   Scaffold.of(context).showSnackBar(const SnackBar(
//           //      content: Text('No one has signed in'),
//           //   ));
//           //   return;
//           // }
//           await _auth.signOut();
//           final String uid = user.uid;
//           // Scaffold.of(context).showSnackBar(SnackBar(
//           //   content: Text(uid + 'has successfully signed out. '),
//           // ));
//           // Navigator.push(
//           //     context, MaterialPageRoute(builder: (context) => SecondRoute()));
//         },
//         child: Text("Login",
//             textAlign: TextAlign.center,
//             style: style.copyWith(
//                 color: Colors.white, fontWeight: FontWeight.bold)),
//       ),
//     );

//     return Scaffold(
//       body: Center(
//         child: Container(
//           color: Colors.white,
//           child: Padding(
//             padding: const EdgeInsets.all(36.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 SizedBox(
//                   height: 155.0,
//                   child: Image.asset(
//                     "assets/logo.png",
//                     fit: BoxFit.contain,
//                   ),
//                 ),
//                 SizedBox(height: 45.0),
//                 emailField,
//                 SizedBox(height: 25.0),
//                 passwordField,
//                 SizedBox(
//                   height: 35.0,
//                 ),
//                 loginButon,
//                 SizedBox(
//                   height: 15.0,
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class SecondRoute extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Second Route"),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           child: Text('Go back!'),
//         ),
//       ),
//     );
//   }
// }

//1
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
//import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';

//2
final FirebaseAuth _auth = FirebaseAuth.instance;

void main() {
  runApp(MyApp());
}

//3
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Firebase Auth Demo',
      home: MyHomePage(title: 'Firebase Auth Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
//4
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          Builder(builder: (BuildContext context) {
//5
            return FlatButton(
              child: const Text('Sign out'),
              textColor: Theme.of(context).buttonColor,
              onPressed: () async {
                final User user = _auth.currentUser;
                if (user == null) {
//6
                  Scaffold.of(context).showSnackBar(const SnackBar(
                    content: Text('No one has signed in.'),
                  ));
                  return;
                }
                await _auth.signOut();
                final String uid = user.uid;
                Scaffold.of(context).showSnackBar(SnackBar(
                  content: Text(uid + ' has successfully signed out.'),
                ));
              },
            );
          })
        ],
      ),
      body: Builder(builder: (BuildContext context) {
//7
        return ListView(
          scrollDirection: Axis.vertical,
          padding: const EdgeInsets.all(16),
          children: <Widget>[
            _RegisterEmailSection(),
          ],
        );
      }),
    );
  }
}

// *****************************  Firebase *************************************

class _RegisterEmailSection extends StatefulWidget {
  final String title = 'Registration';
  @override
  State<StatefulWidget> createState() => _RegisterEmailSectionState();
}

//Registration
class _RegisterEmailSectionState extends State<_RegisterEmailSection> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _success;
  String _userEmail;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextFormField(
              controller: _emailController,
              decoration: const InputDecoration(labelText: 'Email'),
              validator: (String value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _passwordController,
              decoration: const InputDecoration(labelText: 'Password'),
              validator: (String value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              alignment: Alignment.center,
              child: RaisedButton(
                onPressed: () async {
                  if (_formKey.currentState.validate()) {
                    _register();
                  }
                },
                child: const Text('Submit'),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Text(_success == null
                  ? ''
                  : (_success
                      ? 'Successfully registered ' + _userEmail
                      : 'Registration failed')),
            )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _register() async {
    final User user = (await _auth.createUserWithEmailAndPassword(
      email: _emailController.text,
      password: _passwordController.text,
    ))
        .user;
    if (user != null) {
      setState(() {
        _success = true;
        _userEmail = user.email;
      });
    } else {
      setState(() {
        _success = true;
      });
    }
  }
}

// Sign in
// class _EmailPasswordForm extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() => _EmailPasswordFormState();
// }

// class _EmailPasswordFormState extends State<_EmailPasswordForm> {
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();
//   bool _success;
//   String _userEmail;
//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       key: _formKey,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           Container(
//             child: const Text('Test sign in with email and password'),
//             padding: const EdgeInsets.all(16),
//             alignment: Alignment.center,
//           ),
//           TextFormField(
//             controller: _emailController,
//             decoration: const InputDecoration(labelText: 'Email'),
//             validator: (String value) {
//               if (value.isEmpty) {
//                 return 'Please enter some text';
//               }
//               return null;
//             },
//           ),
//           TextFormField(
//             controller: _passwordController,
//             decoration: const InputDecoration(labelText: 'Password'),
//             validator: (String value) {
//               if (value.isEmpty) {
//                 return 'Please enter some text';
//               }
//               return null;
//             },
//           ),
//           Container(
//             padding: const EdgeInsets.symmetric(vertical: 16.0),
//             alignment: Alignment.center,
//             child: RaisedButton(
//               onPressed: () async {
//                 if (_formKey.currentState.validate()) {
//                   _signInWithEmailAndPassword();
//                 }
//               },
//               child: const Text('Submit'),
//             ),
//           ),
//           Container(
//             alignment: Alignment.center,
//             padding: const EdgeInsets.symmetric(horizontal: 16),
//             child: Text(
//               _success == null
//                   ? ''
//                   : (_success
//                       ? 'Successfully signed in ' + _userEmail
//                       : 'Sign in failed'),
//               style: TextStyle(color: Colors.red),
//             ),
//           )
//         ],
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     _emailController.dispose();
//     _passwordController.dispose();
//     super.dispose();
//   }
// }
