import 'package:exam_proj/colors/custom_colors.dart';
import 'package:exam_proj/cubit/head_cubit.dart';
import 'package:exam_proj/cubit/head_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HeadScreen extends StatelessWidget {
  const HeadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HeadCubit, HeadInitialState>(
      builder: (BuildContext context, state) {
        return Scaffold(
          body: state.pages[state.pageIndex],
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: state.pageIndex, 
            selectedItemColor:
                CustomColors.black, 
            unselectedItemColor:
                CustomColors.grey, 
            showUnselectedLabels: true,
            showSelectedLabels: true,
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/icons/home-2.svg",
                  colorFilter: ColorFilter.mode(
                    CustomColors.grey,
                    BlendMode.srcIn,
                  ),
                ),
                activeIcon: SvgPicture.asset(
                  "assets/icons/home-2.svg",
                  colorFilter: ColorFilter.mode(
                    CustomColors.cyanDark,
                    BlendMode.srcIn,
                  ),
                ),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/icons/category-2.svg",
                  colorFilter: ColorFilter.mode(
                    CustomColors.grey,
                    BlendMode.srcIn,
                  ),
                ),
                activeIcon: SvgPicture.asset(
                  "assets/icons/category-2.svg",
                  colorFilter: ColorFilter.mode(
                    CustomColors.cyanDark,
                    BlendMode.srcIn,
                  ),
                ),
                label: "Categories",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/icons/shopping-cart.svg",
                  colorFilter: ColorFilter.mode(
                    CustomColors.grey,
                    BlendMode.srcIn,
                  ),
                ),
                activeIcon: SvgPicture.asset(
                  "assets/icons/shopping-cart.svg",
                  colorFilter: ColorFilter.mode(
                    CustomColors.cyanDark,
                    BlendMode.srcIn,
                  ),
                ),
                label: "Cart",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/icons/heart.svg",
                  colorFilter: ColorFilter.mode(
                    CustomColors.grey,
                    BlendMode.srcIn,
                  ),
                ),
                activeIcon: SvgPicture.asset(
                  "assets/icons/heart.svg",
                  colorFilter: ColorFilter.mode(
                    CustomColors.cyanDark,
                    BlendMode.srcIn,
                  ),
                ),
                label: "Wishlist",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/icons/profile.svg",
                  colorFilter: ColorFilter.mode(
                    CustomColors.grey,
                    BlendMode.srcIn,
                  ),
                ),
                activeIcon: SvgPicture.asset(
                  "assets/icons/profile.svg",
                  colorFilter: ColorFilter.mode(
                    CustomColors.cyanDark,
                    BlendMode.srcIn,
                  ),
                ),
                label: "Profile",
              ),
            ],
            onTap: (value) {
              context.read<HeadCubit>().pageBottombar(value);
            },
          ),
        );
      },
    );
  }
}
