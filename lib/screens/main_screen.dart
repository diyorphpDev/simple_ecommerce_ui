import 'package:exam_proj/colors/custom_colors.dart';
import 'package:exam_proj/cubit/main_screen_cubit.dart';
import 'package:exam_proj/cubit/main_screen_state.dart';
import 'package:exam_proj/screens/single_item_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  void initState() {
      context.read<MainScreenCubit>().fetchProducts();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "assets/images/quickmart (1).png",
                        width: 104,
                        height: 32,
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(
                            "assets/icons/search-normal.svg",
                            width: 32,
                            height: 32,
                          ),
                          SizedBox(width: 12),
                          Image.asset(
                            "assets/images/Rectangle 7.png",
                            width: 32,
                            height: 32,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 24),
                ],
              ),
            ),
        
            SizedBox(
              height: 148,
              child: PageView.builder(
                itemCount: 5,
                itemBuilder: (context, i) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        
                      width: double.infinity,
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        image: DecorationImage(
                          image: AssetImage("assets/images/Rectangle 6.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              color: CustomColors.black,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(
                              "30% OFF",
                              style: GoogleFonts.plusJakartaSans(
                                fontWeight: FontWeight.w600,
                                fontSize: 10,
                                color: CustomColors.white,
                              ),
                            ),
                          ),
                          SizedBox(height: 6),
                          Text(
                            "On Headphones",
                            style: GoogleFonts.plusJakartaSans(
                              fontWeight: FontWeight.w400,
                              fontSize: 10,
                              color: CustomColors.white,
                            ),
                          ),
                          SizedBox(height: 6),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Exclusive Sales",
                                style: GoogleFonts.plusJakartaSans(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 24,
                                  color: CustomColors.white,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                  color: CustomColors.white,
                                  borderRadius: BorderRadius.circular(24),
                                ),
                                child: Row(
                                  children: List.generate(5, (index) {
                                    return Container(
                                      margin: EdgeInsets.all(2.5),
                                      width: 6,
                                      height: 6,
                                      decoration: BoxDecoration(
                                        color: i == index
                                            ? CustomColors.cyanDark
                                            : CustomColors.grey,
                                        shape: BoxShape.circle,
                                      ),
                                    );
                                  }),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Categories",
                        style: GoogleFonts.plusJakartaSans(
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: CustomColors.black,
                        ),
                      ),
                      Text(
                        "SEE ALL",
                        style: GoogleFonts.plusJakartaSans(
                          fontWeight: FontWeight.w600,
                          fontSize: 10,
                          color: CustomColors.cyanDark,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: CustomColors.lightGrey,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          children: [
                            Text(
                              "📱",
                              style: GoogleFonts.plusJakartaSans(
                                fontWeight: FontWeight.w700,
                                fontSize: 24,
                              ),
                            ),
                            Text(
                              "Electronics",
                              style: GoogleFonts.plusJakartaSans(
                                fontWeight: FontWeight.w700,
                                fontSize: 10,
                                color: CustomColors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: CustomColors.lightGrey,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          children: [
                            Text(
                              "👜",
                              style: GoogleFonts.plusJakartaSans(
                                fontWeight: FontWeight.w700,
                                fontSize: 24,
                              ),
                            ),
                            Text(
                              "Fashion",
                              style: GoogleFonts.plusJakartaSans(
                                fontWeight: FontWeight.w700,
                                fontSize: 10,
                                color: CustomColors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: CustomColors.lightGrey,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          children: [
                            Text(
                              "🛋️",
                              style: GoogleFonts.plusJakartaSans(
                                fontWeight: FontWeight.w700,
                                fontSize: 24,
                              ),
                            ),
                            Text(
                              "Furniture",
                              style: GoogleFonts.plusJakartaSans(
                                fontWeight: FontWeight.w700,
                                fontSize: 10,
                                color: CustomColors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: CustomColors.lightGrey,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          children: [
                            Text(
                              "🚗",
                              style: GoogleFonts.plusJakartaSans(
                                fontWeight: FontWeight.w700,
                                fontSize: 24,
                              ),
                            ),
                            Text(
                              "Industrial",
                              style: GoogleFonts.plusJakartaSans(
                                fontWeight: FontWeight.w700,
                                fontSize: 10,
                                color: CustomColors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Latest Products",
                        style: GoogleFonts.plusJakartaSans(
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: CustomColors.black,
                        ),
                      ),
                      Text(
                        "SEE ALL",
                        style: GoogleFonts.plusJakartaSans(
                          fontWeight: FontWeight.w600,
                          fontSize: 10,
                          color: CustomColors.cyanDark,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 12),
                  BlocBuilder<MainScreenCubit,MainScreenState>(builder: (BuildContext context,state){
                    if (state is MainSuccessState) {
                      return GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 10.0,
                      childAspectRatio: 0.75,
                    ),
                    itemCount: state.model.data.products.length,
                    itemBuilder: (context, i) {
                      final data = state.model.data.products[i];
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>SingleItemScreen(product_asin: data.asin, products: data,)));
                        },
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.all(6),
                                alignment: Alignment.topRight,
                                width: double.infinity,
                                height: 138,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(24),
                                  image: DecorationImage(image: NetworkImage(data.productPhoto),fit: BoxFit.contain)
                                ),
                                child: Container(width: 24,height: 24,decoration: BoxDecoration(color: CustomColors.black,shape: BoxShape.circle),padding: EdgeInsets.all(6),child: SvgPicture.asset("assets/icons/heart (1).svg"),),
                              ),
                              SizedBox(height: 8,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      CircleAvatar(
                                        radius: 12,
                                        backgroundColor: CustomColors.black,
                                      ),
                                      Positioned(
                                        left: 18, 
                                        child: CircleAvatar(
                                          radius: 12,
                                          backgroundColor: CustomColors.green,
                                        ),
                                      ),
                                      Positioned(
                                        left: 36, 
                                        child: CircleAvatar(
                                          radius: 12,
                                          backgroundColor: CustomColors.cyanDark,
                                        ),
                                      ),
                        
                                    ],
                                  ),
                                  Text("All 5 Colors",style: GoogleFonts.plusJakartaSans(fontWeight: FontWeight.w400,fontSize: 10,color: CustomColors.black,decoration: TextDecoration.underline),),
                                  SizedBox(width: MediaQuery.widthOf(context)*0.01,),
                                ],
                              ),
                              SizedBox(height: 8,),
                                  Text(data.productTitle,style: GoogleFonts.plusJakartaSans(fontWeight: FontWeight.w500,fontSize: 14,color: CustomColors.black,),maxLines: 1,overflow: TextOverflow.ellipsis,),
                                  Text(data.productPrice.toString(),style: GoogleFonts.plusJakartaSans(fontWeight: FontWeight.w500,fontSize: 12,color: CustomColors.black),maxLines: 1,overflow: TextOverflow.ellipsis,),
                                  Text(data.productOriginalPrice.toString(),style: GoogleFonts.plusJakartaSans(fontWeight: FontWeight.w500,fontSize: 10,color: CustomColors.grey),maxLines: 1,overflow: TextOverflow.ellipsis,),
                        
                            ],
                          ),
                        ),
                      );
                    },
                  );
                    }
                    else if (state is MainErrorState) {
                    return Text(state.errorMsg);
                  } else if (state is MainLoadingState) {
                    return Center(child: CircularProgressIndicator());
                  } else {
                    return Text("err");
                  }
                  })
                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
