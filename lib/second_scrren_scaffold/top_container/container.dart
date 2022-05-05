import 'package:flutter/material.dart';

class TopCont extends StatelessWidget {
  const TopCont({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 90),
      child: Container(
        width: 369,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              blurRadius: 10,
              blurStyle: BlurStyle.normal,
              color: Color.fromRGBO(69, 0, 111, 0.35),
            ),
          ],
        ),
        child: Row(
          children: [
            Stack(
              alignment: AlignmentDirectional.centerStart,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color(0xffFFD541),
                      ),
                      child: Icon(
                        Icons.bolt_outlined,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 23, bottom: 5, left: 6),
                  child: Text(
                    'Начните Зарабатывать!',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(
                  width: 160,
                  height: 23,
                  child: Expanded(
                    child: Text(
                      'Приобретите тариф Behype-PRO и начните свою карьеру!',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
