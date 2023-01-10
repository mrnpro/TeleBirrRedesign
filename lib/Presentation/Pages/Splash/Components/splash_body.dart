import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:telebirr/Presentation/Pages/Onboarding/onboarding_screen.dart';

import 'package:telebirr/Presentation/SizeConfig/size_config.dart';

import '../../../CommonWidgets/TeleBirrLogo/telebirr_logo.dart';
import '../../../Logics/SplashCubit/splash_cubit.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> {
  late SplashCubit _splashCubit;
  @override
  void initState() {
    _splashCubit = SplashCubit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _splashCubit..startTimer(),
      child: BlocListener<SplashCubit, SplashState>(
        listener: (context, state) {
          if (state is ReadyToStartState) {
            Navigator.pushNamed(context, OnBoardingScreen.route);
          }
        },
        child: SizedBox(
          width: SizeConfig.screenWidth,
          height: SizeConfig.screenHeight,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(),
                Column(
                  children: [
                    const TeleBirrLogo(),
                    addVerticalSpace(size: 40),
                    const CircularProgressIndicator()
                  ],
                ),
                Column(children: [
                  const Text("from"),
                  Image.asset("assets/images/cropedEthioTelLogo.png")
                ])
              ],
            ),
          ),
        ),
      ),
    );
  }
}
