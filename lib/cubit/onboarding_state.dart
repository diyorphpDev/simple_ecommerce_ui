abstract class OnboardingState {}

class OnboardingInitialState extends OnboardingState {
     final List<Map<String, String>> pages = [
    {
    "image":"assets/images/01 Online Shopping 2.png",
    "title":"Explore a wide range of products",
    "descr":"Explore a wide range of products at your fingertips. QuickMart offers an extensive collection to suit your needs."
  },
    {
    "image":"assets/images/01 Online Shopping 5.png",
    "title":"Unlock exclusive offers and discounts",
    "descr":"Get access to limited-time deals and special promotions available only to our valued customers."
  },
    {
    "image":"assets/images/01 Online Shopping 4.png",
    "title":"Safe and secure payments",
    "descr":" QuickMart employs industry-leading encryption and trusted payment gateways to safeguard your financial information."
  },
  ];
}
