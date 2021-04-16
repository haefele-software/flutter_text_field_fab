import 'package:flutter/material.dart';

class TextFieldFloatingActionButton extends StatefulWidget {
  final String label;
  final Icon icon;
  final Color backgroundColor;
  final Color iconColor;
  final void Function(String) onChange;
  final void Function(String) onSubmit;
  final Function onClear;

  TextFieldFloatingActionButton(this.label, this.icon,
      {this.onChange,
      this.onSubmit,
      this.onClear,
      this.backgroundColor,
      this.iconColor});

  @override
  _TextFieldFloatingActionButtonState createState() =>
      _TextFieldFloatingActionButtonState(label, icon,
          onChange: onChange, onSubmit: onSubmit, onClear: onClear);
}

class _TextFieldFloatingActionButtonState
    extends State<TextFieldFloatingActionButton> {
  final String label;
  final Icon icon;
  final Color backgroundColor;
  final Color iconColor;
  final void Function(String) onChange;
  final void Function(String) onSubmit;
  final Function onClear;

  bool folded = true;

  _TextFieldFloatingActionButtonState(this.label, this.icon,
      {this.onChange,
      this.onSubmit,
      this.onClear,
      this.backgroundColor = Colors.white,
      this.iconColor = Colors.black});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
        duration: Duration(milliseconds: 400),
        width: folded ? 56 : MediaQuery.of(context).size.width / 1.5,
        height: 56,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(32),
            color: backgroundColor,
            boxShadow: kElevationToShadow[6]),
        child: Row(
          children: [
            Expanded(
                child: Container(
                    padding: EdgeInsets.only(left: 16),
                    child: !folded
                        ? TextField(
                            decoration: InputDecoration(
                                hintText: label,
                                hintStyle: TextStyle(color: iconColor),
                                border: InputBorder.none),
                            onChanged: (String query) => onChange(query),
                          )
                        : null)),
            Container(
              child: Material(
                type: MaterialType.transparency,
                child: InkWell(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(folded ? 32 : 0),
                    topRight: Radius.circular(32),
                    bottomLeft: Radius.circular(folded ? 32 : 0),
                    bottomRight: Radius.circular(32),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Icon(
                      folded ? icon : Icons.close,
                      color: iconColor,
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      if (!folded) {
                        onClear();
                      }
                      folded = !folded;
                    });
                  },
                ),
              ),
            ),
          ],
        ));
  }
}
