import 'package:flutter/material.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/constaint.dart';
import 'package:shop_app/screens/otp/components/otp_form.dart';
import 'package:shop_app/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.screenHeight * 0.05,
              ),
              Text(
                "OTP Verification",
                style: headingStyle,
              ),
              Text("We sent your code to +1 898 868 ***"),
              buildTimer(),
              SizedBox(
                height: SizeConfig.screenHeight * 0.15,
              ),
              OtpForm(),
              SizedBox(
                height: SizeConfig.screenHeight * 0.1,
              ),
              GestureDetector(
                onTap: () {
                  // Resnd your Otp
                },
                child: Text(
                  "Resend OTP code",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("This code will expired in "),
        TweenAnimationBuilder(
          tween: Tween(begin: 30.0, end: 0),
          duration: Duration(seconds: 30),
          builder: (context, value, child) => Text(
            "00:${value.toString()}",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ],
    );
  }
}
