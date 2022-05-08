import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            textTheme:
                GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)),
        title: 'Flutter login web',
        home: LoginPage(),
        debugShowCheckedModeBanner: false);
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width / 12),
        children: [
          // Menu(),
          Body(),
        ],
      ),
    );
  }
}

// class Menu extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       // padding: const EdgeInsets.symmetric(vertical: 30),
//       // child: Row(
//       //   mainAxisAlignment: MainAxisAlignment.start,
//       //   children: [
//       //     Row(
//       //       mainAxisAlignment: MainAxisAlignment.start,
//       //       children: [
//       //         _menuItem(title: 'Home'),
//       //         _menuItem(title: 'Abou us'),
//       //         _menuItem(title: 'Contact us'),
//       //         _menuItem(title: 'Help'),
//       //       ],
//       //     ),
//       //     Row(
//       //       children: [
//       //         _menuItem(title: 'Sign in', isActive: true),
//       //         _registerButton(),
//       //       ],
//       //     )
//       //   ],
//       // ),
//     );
//   }

//   Widget _menuItem({String title = '', bool isActive = false}) {
//     return Padding(
//       padding: const EdgeInsets.only(right: 75),
//       child: Column(children: [
//         Text(
//           '$title',
//           style: TextStyle(
//               fontWeight: FontWeight.bold,
//               color: isActive ? Colors.deepPurple : Colors.grey),
//         ),
//         const SizedBox(
//           height: 6,
//         ),
//         isActive
//             ? Container(
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
//                 decoration: BoxDecoration(
//                     color: Colors.deepPurple,
//                     borderRadius: BorderRadius.circular(30)),
//               )
//             : const SizedBox()
//       ]),
//     );
//   }

//   Widget _registerButton() {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
//       decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(15),
//           boxShadow: const [
//             BoxShadow(
//                 color: Color.fromARGB(255, 238, 238, 238),
//                 spreadRadius: 10,
//                 blurRadius: 12)
//           ]),
//       child: const Text(
//         'Register',
//         style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black45),
//       ),
//     );
//   }
// }

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 360,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text(
              'Sign In to \nMy Application',
              style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "If you don't jave an account",
              style:
                  TextStyle(color: Colors.black45, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: const [
                Text(
                  'You can',
                  style: TextStyle(
                      color: Colors.black45, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  'Register here!',
                  style: TextStyle(
                      color: Colors.deepPurple, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 10,
                ),
                // Image.asset('images/illustration-2.png')
              ],
              
            ),
            Image.asset(
              'images/illustration-2.png',
              width: 600,
            ),
            Image.asset(
              'images/illustration-1.png',
              width: 300,
            ),
          ]),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height / 6),
          child: SizedBox(
            width: 300,
            child: _formLogin(),
          ),
        )
      ],
    );
  }

  Widget _formLogin() {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
              hintText: 'Enter your Email',
              fillColor: Colors.blueGrey[50],
              filled: true,
              labelStyle: const TextStyle(fontSize: 12),
              contentPadding: const EdgeInsets.only(left: 30),
              enabledBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: Color.fromARGB(255, 234, 236, 238)),
                borderRadius: BorderRadius.circular(15),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: Color.fromARGB(255, 234, 236, 238)),
                borderRadius: BorderRadius.circular(15),
              )),
        ),
        const SizedBox(
          height: 30,
        ),
        TextField(
          decoration: InputDecoration(
              hintText: 'Enter your Password',
              counterText: 'Forgot password?',
              suffixIcon:
                  const Icon(Icons.visibility_off_outlined, color: Colors.grey),
              fillColor: Colors.blueGrey[50],
              filled: true,
              labelStyle: const TextStyle(fontSize: 12),
              contentPadding: const EdgeInsets.only(left: 30),
              enabledBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: Color.fromARGB(255, 234, 236, 238)),
                borderRadius: BorderRadius.circular(15),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: Color.fromARGB(255, 234, 236, 238)),
                borderRadius: BorderRadius.circular(15),
              )),
        ),
        const SizedBox(
          height: 40,
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              boxShadow: const [
                BoxShadow(
                  color: Color.fromARGB(255, 209, 196, 233),
                  spreadRadius: 10,
                  blurRadius: 20,
                )
              ]),
          child: ElevatedButton(
            child: Container(
              width: double.infinity,
              height: 50,
              child: const Center(child: Text('Sign in')),
            ),
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                primary: Colors.deepPurple,
                onPrimary: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
          ),
        )
      ],
    );
  }
}
