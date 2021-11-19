import 'package:flutter/material.dart';
import 'package:oneapp/config/oneapp_constants.dart';
import 'package:oneapp/config/oneapp_sizeconfig.dart';
import 'package:oneapp/utils/oneapp_colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  static final List<String> _countryCodes = countryCodes;
  String _dropdownValue = "+91";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: SizeConfig.screenHeight * 0.1,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 60.0,
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "ONE",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: SizeConfig.screenHeight * 0.05,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "APP",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: SizeConfig.screenHeight * 0.05,
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.01,
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: SizeConfig.screenHeight * 0.03,
                      right: SizeConfig.screenHeight * 0.03),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      /*DropdownButton<String>(
                        autofocus: true,
                        focusColor: Colors.white60,
                        isDense: true,
                        menuMaxHeight: SizeConfig.screenHeight * 0.5,
                        value: _dropdownValue,
                        dropdownColor: Colors.black38,
                        elevation: 16,
                        style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                        onChanged: (String? newValue) {
                          setState(() {
                            _dropdownValue = newValue!;
                          });
                        },
                        items: _countryCodes.map((String value) {
                          return DropdownMenuItem(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),*/
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Mobile No."),
                            TextFormField(
                              keyboardType: TextInputType.phone,
                              maxLength: 10,
                              decoration: InputDecoration(
                                  enabledBorder: const UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white60)),
                                  border: const UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white60)),
                                  contentPadding: EdgeInsets.only(
                                      left: SizeConfig.screenWidth * 0.02,
                                      right: SizeConfig.screenWidth * 0.02),
                                  prefix: PopupMenuButton(
                                    elevation: 16,
                                    initialValue: _dropdownValue,
                                    color: Colors.black38,
                                    child: Text(
                                      _dropdownValue,
                                      style: const TextStyle(color: Colors.white),
                                    ),
                                    itemBuilder: (BuildContext context) {
                                      return _countryCodes.map((String value) {
                                        return PopupMenuItem(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList();
                                    },
                                    onSelected: (String value) {
                                      setState(() {
                                        _dropdownValue = value;
                                      });
                                    },
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: SizeConfig.screenHeight * 0.2,
            ),
            SizedBox(
              width: SizeConfig.screenWidth * 0.5,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    gradient: const LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Colors.tealAccent,
                          Colors.greenAccent
                        ]
                    )
                ),
                child: TextButton(
                  onPressed: (){},
                  child:  const Text("Send OTP"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
