import 'dart:math';
class Calculator{
  Calculator({required this.height,required this.weight});
  final int height;
  final int weight;

  double _bmi=0;

  String calculate(){
     _bmi=weight/pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }
  String getResult(){
    if (_bmi>=25 ){
      return "overWeight";
    }else if(_bmi>18.5){
      return "Normal";
    }else{
      return "overweight";
    }
  }
}

