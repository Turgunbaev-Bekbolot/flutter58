import 'package:flutter/material.dart';
import 'package:stack/second_scrren_scaffold/containers/categori_cont.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 241),
      child: Container(
        width: 410,
        height: 579,
        decoration: BoxDecoration(
          color: Color(0xffF9F8FF),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 35, left: 17, bottom: 15),
              child: Text(
                'Категории',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CategoriCont(
                  text: 'Реклама',
                  text2: '106 компаний',
                  image: 'assets/images/first.png',
                  width: 60.4,
                  height: 33.98,
                ),
                CategoriCont(
                  text: 'Взаимопиар',
                  text2: '56 заявок',
                  image: 'assets/images/second.png',
                  width: 37.82,
                  height: 40.36,
                ),
                CategoriCont(
                  text: 'Бартер',
                  text2: '245 заявок',
                  image: 'assets/images/third.png',
                  width: 55.35,
                  height: 37.96,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Рекламные компании',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      alignment: Alignment.center,
                      width: 38,
                      height: 18,
                      decoration: BoxDecoration(
                        color: Color(0xffF90640),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Text(
                        'Все',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 17),
              child: Stack(
                children: [
                  Container(
                    alignment: Alignment.bottomCenter,
                    width: 170,
                    height: 162,
                    decoration: BoxDecoration(
                      color: Color(0xffF9F8FF),
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          blurStyle: BlurStyle.normal,
                          blurRadius: 1,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Text(
                        'В новом обновлении',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 170,
                    height: 124,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8),
                      ),
                      gradient: LinearGradient(
                        colors: [
                          Color(0xff6322E0),
                          Color(0xffD96DFF),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/pen.png',
                          width: 140,
                          height: 110,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
