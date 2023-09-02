import 'package:bookly_app/Core/utlis/assets.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  // الميكسين دا هو اللي بيتحكم في تدرج قيمة الانيميشن ويخليها تظهر بانسيابية
  late AnimationController
      animationController; // بيتحكم في الانيميشن بتاعك بحيث انه بيديك قيم من 0 ل 1 ننحرك من خلالها
  late Animation<Offset>
      slidingAnimation; // اما لو عاوز رينج اكبر من 0--1 فتستخدم النيميشن اوبجيكت دا فوق الانيميشن كونترولر بحيث انه ياخد منه القيمه ويحطهالك ف رينج اكبر

  @override
  void initState() {
    super.initState();

    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    slidingAnimation = Tween<Offset>(
      begin: const Offset(0, 20),
      end: Offset.zero,
    ).animate(animationController);

    animationController.forward();
  }
@override
  void dispose() {
    super.dispose();
    animationController.dispose();
    // عشان بعد م الكنترولر يخلص شغله يتقفل علطول عشان مهيدرش المصادر بتاعتك ويقلل من التطبيق بتاعك لازم تعملها مع كل كنترلر بتستخدمه
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        const SizedBox(
          height: 4,
        ),
        AnimatedBuilder(
          animation: slidingAnimation,
          builder: (context, _) => SlideTransition(
            position: slidingAnimation,
            child: const Text(
              'Read Free Books',
              textAlign: TextAlign.center,
            ),
          ),
        )
      ],
    );
  }
}
