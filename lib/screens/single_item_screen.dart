import 'package:exam_proj/colors/custom_colors.dart';
import 'package:exam_proj/models/products_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SingleItemScreen extends StatefulWidget {
  final String product_asin;
  final Product products;
  const SingleItemScreen({super.key, required this.product_asin,required this.products});

  @override
  State<SingleItemScreen> createState() => _SingleItemScreenState();
}

class _SingleItemScreenState extends State<SingleItemScreen> {


  @override
  Widget build(BuildContext context) {
    
final PageController _pageController = PageController();
int _currentPage = 0;

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(children: [
          Expanded(child: FloatingActionButton(onPressed: (){},child: Text("Buy Now",style: GoogleFonts.plusJakartaSans(fontWeight: FontWeight.w600,fontSize: 14,color: CustomColors.black),),)),
          SizedBox(width: 8,),
          Expanded(child: FloatingActionButton(backgroundColor: CustomColors.black,onPressed: (){},child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Add To Cart",style: GoogleFonts.plusJakartaSans(fontWeight: FontWeight.w600,fontSize: 14,color: CustomColors.white)),
              SizedBox(width: 5,),
              SvgPicture.asset("assets/icons/shopping-cart.svg")
            ],
          ))),
        ],),
      ),
      body: Column(
        children: [
          SizedBox(
  height: 290,
  width: double.infinity,
  child: Stack(
    children: [
      PageView.builder(
        controller: _pageController,
        itemCount: 1,
        onPageChanged: (index) {
          setState(() {
            _currentPage = index;
          });
        },
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(widget.products.productPhoto),
                fit: BoxFit.contain,
              ),
            ),
          );
        },
      ),

      Positioned(
        top: 12,
        left: 16,
        right: 16,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(onTap: () => Navigator.pop(context),child: SvgPicture.asset("assets/icons/arrow-left.svg")),
            Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                color: CustomColors.black,
                shape: BoxShape.circle,
              ),
              padding: const EdgeInsets.all(6),
              child: SvgPicture.asset("assets/icons/heart (1).svg"),
            ),
          ],
        ),
      ),

      Positioned(
        bottom: 12,
        left: 0,
        right: 0,
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: CustomColors.lightGrey,
              borderRadius: BorderRadius.circular(24),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: List.generate(1, (i) {
                return Container(
                  margin: EdgeInsets.only(right: 5),
                  width: 6,
                  height: 6,
                  decoration: BoxDecoration(
                    color: _currentPage == i
                        ? CustomColors.cyanDark
                        : CustomColors.grey,
                    shape: BoxShape.circle,
                  ),
                );
              }),
            ),
          ),
        ),
      ),
    ],
  ),
),

Container(
  padding: EdgeInsets.only(top: 24,left: 16,right: 16),
  width: double.infinity,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.only(topLeft: Radius.circular(24),topRight: Radius.circular(24)),
    color: CustomColors.white
  ),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: 6),
            padding: EdgeInsets.all(6),
            decoration: BoxDecoration(
              color: CustomColors.green,
              borderRadius: BorderRadius.circular(8)
            ),
            child: Text("Top Rated"),
          ),
          Container(
            margin: EdgeInsets.only(right: 5),
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: CustomColors.green,
              borderRadius: BorderRadius.circular(8)
            ),
            child: Text("Top Rated"),
          )
        ],
      ),
      SizedBox(height: 6,),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Expanded(child: Text(widget.products.productTitle,style: GoogleFonts.plusJakartaSans(fontWeight: FontWeight.w700,fontSize: 18,color: CustomColors.black),maxLines: 2,overflow: TextOverflow.ellipsis,)),
        Column(
          children: [
            Text(widget.products.productPrice,style: GoogleFonts.plusJakartaSans(fontWeight: FontWeight.w700,fontSize: 18,color: CustomColors.black),maxLines: 1,overflow: TextOverflow.ellipsis,),
            Text(widget.products.productOriginalPrice.toString(),style: GoogleFonts.plusJakartaSans(fontWeight: FontWeight.w400,fontSize: 14,color: CustomColors.grey,decoration: TextDecoration.lineThrough),maxLines: 1,overflow: TextOverflow.ellipsis,),
          ],
        )
      ],),
      SizedBox(height: 12,),
      Row(
        children: [
          SvgPicture.asset("assets/icons/Stars.svg"),
          SizedBox(width: 2,),
            Text("4.5 (2,495 reviews) ",style: GoogleFonts.plusJakartaSans(fontWeight: FontWeight.w600,fontSize: 10,color: CustomColors.black),maxLines: 1,overflow: TextOverflow.ellipsis,),

        ],
      ),
      SizedBox(height: 12,),
      Text("Constructed with high-quality silicone material, the Loop Silicone Strong Magnetic Watch ensures a comfortable and secure fit on your wrist. The soft and flexible silicone is gentle on the skin, making it ideal for",style: GoogleFonts.plusJakartaSans(fontWeight: FontWeight.w400,fontSize: 14,color: CustomColors.grey),overflow: TextOverflow.ellipsis,maxLines: 4,),
      SizedBox(height: 12,),
      Text("Color",style: GoogleFonts.plusJakartaSans(fontWeight: FontWeight.w600,fontSize: 12),),
      SizedBox(height: 8,),
      Row(
        children: [
          CircleAvatar(
            radius: 15,
            backgroundColor: CustomColors.black,
          ),
          SizedBox(width: 4,),
          CircleAvatar(
            radius: 15,
            backgroundColor: CustomColors.green,
          ),
          SizedBox(width: 4,),
          CircleAvatar(
            radius: 15,
            backgroundColor: CustomColors.grey,
          ),
          SizedBox(width: 4,),
        ],
      ),
      SizedBox(height: 12,),
      Text("Quantity",style: GoogleFonts.plusJakartaSans(fontWeight: FontWeight.w600,fontSize: 12),),
      Row(
        children: [
          SvgPicture.asset("assets/icons/minus.svg"),
          SizedBox(width: 5,),
          Text("0"),
          SizedBox(width: 5,),
          SvgPicture.asset("assets/icons/add.svg"),
        ],
      )
    ],
  ),
)


        ],
      ),
    );
  }
}