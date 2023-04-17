import 'package:flutter/material.dart';
import 'package:google_signin_example/widget/background_painter.dart';
import 'package:google_signin_example/widget/google_signup_button_widget.dart';

class SignUpWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Stack(
        fit: StackFit.expand,
        children: [
          //CustomPaint(painter: BackgroundPainter()),
          buildSignUp(),
        ],
      );

  Widget buildSignUp() => Column(
        children: [
          Spacer(),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              width: 175,
              child: 
              Text(
                
              'Welcome to\n',

                style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  
                ),
              ),
              
            ),
          ),
          Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3xJtZmP8-bv16chizDPbW5JISJQUw9qEWgh3D37NHvHaGm-bMuiAppk_Uc-YjapvMVQ&usqp=CAU"),
          Spacer(),
          GoogleSignupButtonWidget(),
          SizedBox(height: 12),
          Text(
            'Login to continue',
            style: TextStyle(fontSize: 16),
          ),
          Spacer(),

        ],
      );

      
}
