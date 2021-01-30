import 'package:flutter/material.dart';

class CustomCheckBox1 extends StatelessWidget {

  final bool isSelected;
  final Color borderColor;
  final Icon checkIcon;
  final Color selectedColor;
  final Color notSelectedColor;
  final Function onChanged;

  const CustomCheckBox1({
    this.borderColor = Colors.black,
    this.selectedColor = Colors.white,
    this.notSelectedColor = Colors.transparent,
    this.isSelected = false,
    this.checkIcon = const Icon(Icons.check,),
    @required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onChanged,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5.0),),
          border: Border.all(
            color: borderColor,
          ),
          color: isSelected ? selectedColor : notSelectedColor,
        ),
        child: isSelected ? checkIcon : Container(),
      ),
    );
  }
}
