import 'package:flutter/cupertino.dart';

class CalcButton extends StatelessWidget {
  final btn_color;
  final btn_text_color;
  final String btn_text;

  CalcButton({this.btn_color,this.btn_text_color,this.btn_text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          color: btn_color,
          child: Center(child: Text(btn_text,style: TextStyle(color: btn_text_color,fontSize: 20.0),)),
        ),
      ),
    );
  }

}
