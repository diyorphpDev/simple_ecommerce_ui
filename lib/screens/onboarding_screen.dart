import 'package:exam_proj/colors/custom_colors.dart';
import 'package:exam_proj/cubit/onboarding_cubit.dart';
import 'package:exam_proj/cubit/onboarding_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController pageController = PageController();

  @override
void initState() {
  super.initState();
  pageController.addListener(() {
    setState(() {}); 
  });
}

@override
void dispose() {
  pageController.dispose();
  super.dispose();
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 20),
          Expanded(
            child: BlocBuilder<OnboardingCubit, OnboardingInitialState>(
              builder: (BuildContext context, state) {
                return PageView.builder(
                  controller: pageController,
                  itemCount: state.pages.length,
                  itemBuilder: (context, i) {
                    final data = state.pages[i];
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 34),

                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 18,
                              vertical: 20,
                            ),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: CustomColors.cyan,
                              borderRadius: BorderRadius.circular(32),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset(
                                      "assets/images/quickmart (1).png",
                                      width: 104,
                                      height: 32,
                                      fit: BoxFit.scaleDown,
                                    ),
                                    Text(
                                      "Skip for now",
                                      style: GoogleFonts.plusJakartaSans(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                        color: CustomColors.cyanDark,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 46),
                                Image.asset(data['image']!),
                                SizedBox(height: 70),
                              ],
                            ),
                          ),
                          SizedBox(height: 24),
                          Text(
                            data['title']!,
                            style: GoogleFonts.plusJakartaSans(
                              fontWeight: FontWeight.w700,
                              fontSize: 24,
                              color: CustomColors.black,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 16),
                          Text(
                            data['descr']!,
                            style: GoogleFonts.plusJakartaSans(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: CustomColors.black,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 24),
                          ElevatedButton(
                            onPressed: () {
                              context.read<OnboardingCubit>().nextPage(
                                pageController,context
                              );
                            },
                            style: ButtonStyle(
                              shape: WidgetStatePropertyAll(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadiusGeometry.circular(
                                    12,
                                  ),
                                ),
                              ),
                              backgroundColor: WidgetStatePropertyAll(
                                CustomColors.black,
                              ),
                              fixedSize: WidgetStatePropertyAll(
                                Size(MediaQuery.widthOf(context), 60),
                              ),
                            ),
                            child: Text(
                              "Next",
                              style: GoogleFonts.plusJakartaSans(
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: CustomColors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              context.read<OnboardingCubit>().state.pages.length,
              (i) {
                final currentPage = pageController.hasClients
                    ? pageController.page?.round() ?? 0
                    : 0;

                return Container(
                  margin: const EdgeInsets.only(right: 4),
                  width: 6,
                  height: 6,
                  decoration: BoxDecoration(
                    color: i == currentPage
                        ? CustomColors.cyanDark
                        : CustomColors.black,
                    shape: BoxShape.circle,
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
