import 'package:flutter/material.dart';

class reuseablecard extends StatelessWidget {

  final Widget CardChild;
  final Color colour;
  final  onpress;
  reuseablecard(this.colour, this.CardChild,this.onpress);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: colour, borderRadius: BorderRadius.circular(10.0)),
        child: CardChild,
      ),
    );
  }
}

class pluss extends StatelessWidget {
  pluss(this.icon, this.onPressed);
  final Icon icon;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        onPressed: () {
          onPressed();
        },
        child: icon,
        elevation: 6.0,
        constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
        shape: CircleBorder(),
        fillColor: Colors.white38);
  }
}

class re_G extends StatelessWidget {
  final  String txt;
  final VoidCallback onTa;
  re_G(this.txt,this.onTa);


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      width: double.infinity,
      margin: EdgeInsets.only(top: 10.0),
      padding: EdgeInsets.only(top: 22.0),
      decoration: BoxDecoration(
          color: Color(0xFFEB1555), borderRadius: BorderRadius.circular(10.0)),
      child: GestureDetector(
        // onTap: (){
        //
        //   Navigator.push(context, MaterialPageRoute(builder: (context)=>onTa));
        // },
        onTap: onTa,
        child: Text(
          txt,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}


