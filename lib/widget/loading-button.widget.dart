import 'package:flutter/material.dart';

class LoadingButton extends StatelessWidget {
  var busy = false;
  var invert = false;
  Function func;
  var text = "";

  LoadingButton({
    @required this.busy,
    @required this.func,
    @required this.invert,
    @required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return busy
        ? Container(
            alignment: Alignment.center,
            height: 50,
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              strokeWidth: 8,
            ),
          )
        : Container(
            margin: EdgeInsets.all(30),
            height: 60,
            width: double.infinity,
            child: FlatButton(
              color: invert
                  ? Theme.of(context).primaryColor
                  : Colors.white.withOpacity(0.8),
              textColor: invert
                  ? Colors.white.withOpacity(0.8)
                  : Theme.of(context).primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(60),
              ),
              child: Text(
                text,
                style: TextStyle(
                    color: invert
                        ? Colors.white.withOpacity(0.8)
                        : Theme.of(context).primaryColor,
                    fontSize: 25,
                    fontFamily: "Big Shoulders Display"),
              ),
              onPressed: func,
            ),
          );
  }
}
