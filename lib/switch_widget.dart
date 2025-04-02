import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SwitchWidget extends StatefulWidget {
  const SwitchWidget({super.key});

  @override
  State<SwitchWidget> createState() => _SwitchWidgetState();
}

class _SwitchWidgetState extends State<SwitchWidget> {
  bool isSwitchEnable = false;
  Color screenBackgroundColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: screenBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              child: Column(
                spacing: MediaQuery.of(context).size.height * 0.05,
                children: [
                  isSwitchEnable
                      ? Text(
                        "DARK",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      )
                      : Text(
                        "LIGHT",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                  Transform.scale(
                    scale: 2.0,
                    child: Switch(
                      autofocus: true,
                      splashRadius: 3.0,
                      value: isSwitchEnable,
                      focusNode: FocusNode(),
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      activeColor: Colors.transparent,
                      inactiveThumbColor: Colors.grey,
                      inactiveTrackColor: Colors.white,
                      activeTrackColor: Colors.transparent,
                      mouseCursor: SystemMouseCursors.click,
                      dragStartBehavior: DragStartBehavior.down,
                      trackOutlineWidth: WidgetStatePropertyAll(1.0),
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      overlayColor: WidgetStatePropertyAll(Colors.transparent),
                      thumbColor: WidgetStatePropertyAll(
                        isSwitchEnable ? Colors.white : Colors.black45,
                      ),
                      padding: EdgeInsets.all(6.0),
                      trackOutlineColor: WidgetStatePropertyAll(
                        isSwitchEnable ? Colors.black26 : Colors.black26,
                      ),
                      trackColor: WidgetStatePropertyAll(
                        isSwitchEnable ? Colors.grey : Colors.white70,
                      ),
                      thumbIcon: WidgetStatePropertyAll(
                        isSwitchEnable
                            ? Icon(
                              Icons.dark_mode_outlined,
                              color: Colors.black,
                            )
                            : Icon(
                              Icons.light_mode_outlined,
                              color: Colors.white,
                            ),
                      ),
                      onChanged: (bool value) {
                        setState(() {
                          isSwitchEnable = value;

                          if (isSwitchEnable) {
                            screenBackgroundColor = Colors.black87;
                          } else {
                            screenBackgroundColor = Colors.white;
                          }
                        });
                      },
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
