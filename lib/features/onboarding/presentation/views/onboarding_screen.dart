import 'package:flutter/material.dart';
import 'package:personal_trainer_mobile/app/components/app_button.dart';
import 'package:personal_trainer_mobile/app/theme/app_palette.dart';
import 'package:personal_trainer_mobile/features/onboarding/data/data.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int _currentindex = 0;
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 450),
              transitionBuilder: (child, animation) {
                return FadeTransition(opacity: animation, child: child);
              },
              child: Image.asset(
                //color: Colors.black.withOpacity(0.5),
                // colorBlendMode: BlendMode.overlay,
                onboardingData[_currentindex].image,
                key: ValueKey(_currentindex),
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
            ),
          ),

          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,

                  colors: [
                    Colors.black.withOpacity(0.1),
                    Colors.black.withOpacity(0.5),
                    Colors.black.withOpacity(0.85),
                  ],
                  stops: const [0.0, 0.4, 0.8],
                ),
              ),
            ),
          ),
          SafeArea(
            top: false,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Spacer(),
                  Expanded(
                    child: PageView.builder(
                      controller: _pageController,
                      itemCount: onboardingData.length,
                      onPageChanged: (index) {
                        setState(() {
                          _currentindex = index;
                        });
                      },
                      itemBuilder: (context, index) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              onboardingData[index].title,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              onboardingData[index].description,
                              style: const TextStyle(
                                color: Colors.white70,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: List.generate(onboardingData.length, (index) {
                      return AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        width: _currentindex == index ? 24 : 8,
                        height: 4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          color: _currentindex == index
                              ? Colors.white
                              : Colors.white.withValues(alpha: 0.3),
                        ),
                      );
                    }),
                  ),
                  const SizedBox(height: 24),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      AppButton(
                        textColor: AppPalette.background,
                        onPressed: () {},
                        buttonText: 'Get Started',
                        enabledColor: AppPalette.primary,
                      ),
                      const SizedBox(height: 12),
                      AppButton(
                        textColor: AppPalette.primary,
                        onPressed: () {},
                        buttonText: 'Log in',
                        enabledColor: AppPalette.background,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
