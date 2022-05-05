import 'package:flutter/material.dart';
import 'package:stack/second_scrren_scaffold/containers/categories.dart';
import 'package:stack/second_scrren_scaffold/top_container/container.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          SizedBox(
            width: 410,
            height: 680,
            child: Container(
              width: 410,
              height: 530,
              decoration: BoxDecoration(
                color: Color(0xff9F8A8A),
                borderRadius: BorderRadius.only(),
              ),
              child: Stack(
                alignment: AlignmentDirectional.topCenter,
                children: [
                  Container(
                    width: 410,
                    height: 283.44,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromRGBO(255, 255, 255, 0.02),
                          Color.fromRGBO(255, 255, 255, 0.1),
                        ],
                        stops: [
                          0.2,
                          1,
                        ],
                      ),
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(250),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Text(
                      'Главная',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Container(
                    width: 410,
                    height: 194.35,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromRGBO(255, 255, 255, 0.02),
                          Color.fromRGBO(255, 255, 255, 0.1),
                        ],
                        stops: [
                          0.2,
                          1,
                        ],
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(120),
                        bottomRight: Radius.circular(120),
                      ),
                    ),
                  ),
                  TopCont(),
                  Categories(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
