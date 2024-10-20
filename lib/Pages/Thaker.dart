import 'package:flutter/material.dart';

class daker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    double screenWidth = mediaQuery.size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("lib/img/camel.jpg"),
                      fit: BoxFit.cover)),
            ),
            Center(
              child: Container(
                width: screenWidth / 1.5,
                padding: const EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(9.0),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black26, offset: Offset(0.5, 0.5)),
                    ],
                    shape: BoxShape.rectangle),
                child: const Align(
                  heightFactor: 1.0,
                  child: Text(
                    "عن سعد بن أبى وقاص - رضى الله عنه - قال: جاء أعرابى إلى رسول الله - صلى الله عليه وسلم - فقال: علمنى كلاما أقوله، قال: \"قل لا إله إلا الله وحده لا شريك له، الله أكبر كبيرا، والحمد لله كثيرا، وسبحان الله رب العالمين، ولا حول ولا قوة إلا بالله العزيز الحكيم\" قال: فهؤلاء لربى، فما لى؟ قال: \"قل: اللهم اغفر لى، وارحمنى واهدنى، وارزقنى\"، رواه مسلم.",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Almarai'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
