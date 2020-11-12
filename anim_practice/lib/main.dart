import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';

const dog_url =
    'https://i.pinimg.com/736x/bd/d4/e8/bdd4e8b01ce45a2a46f537e69b319480.jpg';
const ball_url =
    'https://images.creativemarket.com/0.1.0/ps/4423414/1820/1214/m1/fpnw/wm1/9491-royalty-free-rf-clipart-illustration-cute-tennis-ball-cartoon-character-vector-illustration-isolated-on-white-.jpg?1525806005&s=3004e80a07bcf5fd78c214bd891b7277';

void main() => runApp(MyAnimationApp());

class MyAnimationApp extends StatefulWidget {
  _MyAnimationAppState createState() => _MyAnimationAppState();
}

class _MyAnimationAppState extends State<MyAnimationApp>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<double> rotation;

  Animation<Offset> translation;
  static const _duration = Duration(seconds: 4);
  Curve forwardCurve = Curves.bounceIn;
  Curve backwardCurve = Curves.easeInCubic;
  CurvedAnimation curvedAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnimationController(
      duration: _duration,
      vsync: this,
    );
    curvedAnimation = CurvedAnimation(
      parent: controller,
      curve: forwardCurve,
      reverseCurve: backwardCurve,
    );

    rotation = Tween<double>(
      begin: 0,
      end: 2 * 3.14,
    ).animate(curvedAnimation)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          controller.reverse();
        }
      });

    translation = Tween<Offset>(
      begin: Offset(-1, 0),
      end: Offset(1, 0),
    ).animate(curvedAnimation)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          controller.reverse();
        }
      });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Starting',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Play With Me Animation'),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 180.0,
            ),

            //BALL
            Transform.rotate(
              angle: rotation.value,
              child: Center(
                child: Container(
                  child: Image.asset(
                    "assets/ball.png",
                    height: 50 * _,
                    width: 50,
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 40.0,
            ),

            //DOG
            FractionalTranslation(
              translation: translation.value,
              child: Container(
                  child: Image.asset(
                "assets/dog.png",
                height: 100,
                width: 100,
              )),
            ),
            SizedBox(height: 25.0),

            RaisedButton(
              onPressed: () {
                controller.forward();
              },
              child: Text('play'),
            ),
          ],
        ),
      ),
    );
  }
}
