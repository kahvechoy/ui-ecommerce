part of '../pages.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget newArrivalProduct(){
      return Container(
        margin: EdgeInsets.symmetric(
          horizontal: defaultMargin
        ),
        child: Column(
          children: [
            ProductTitle(),
            ProductTitle(),
            ProductTitle(),
            ProductTitle(),
            ProductTitle(),
            ProductTitle(),
          ],
        ),
      );
    }

    Widget newArrivalTitle() {
      return Container(
        margin: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        child: Text(
          'New Arrival',
          style: primaryTextStyle.copyWith(
            fontSize: 22,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget popularProduct() {
      return Container(
        margin: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ProductCard(),
              ProductCard(),
              ProductCard(),
            ],
          ),
        ),
      );
    }

    Widget popularProductTitle() {
      return Container(
        margin: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        child: Text(
          'Popular Product',
          style: primaryTextStyle.copyWith(
            fontSize: 22,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget category() {
      return Container(
        margin: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 20,
                ),
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  'All Product',
                  style: primaryTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 15,
                  ),
                ),
              ),
              const SizedBox(width: 20),
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 20,
                ),
                decoration: BoxDecoration(
                  color: transparentColor,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: borderColor,
                  ),
                ),
                child: Text(
                  'Shoes',
                  style: primaryTextStyle,
                ),
              ),
              const SizedBox(width: 20),
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 20,
                ),
                decoration: BoxDecoration(
                  color: transparentColor,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: borderColor,
                  ),
                ),
                child: Text(
                  'Tent',
                  style: primaryTextStyle,
                ),
              ),
              const SizedBox(width: 20),
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 20,
                ),
                decoration: BoxDecoration(
                  color: transparentColor,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: borderColor,
                  ),
                ),
                child: Text(
                  'Carrier',
                  style: primaryTextStyle,
                ),
              ),
              const SizedBox(width: 20),
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 20,
                ),
                decoration: BoxDecoration(
                  color: transparentColor,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: borderColor,
                  ),
                ),
                child: Text(
                  'Cargo',
                  style: primaryTextStyle,
                ),
              ),
              const SizedBox(width: 20),
            ],
          ),
        ),
      );
    }

    Widget header() {
      return Container(
        margin: EdgeInsets.symmetric(
          vertical: 10,
          horizontal: defaultMargin,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Deehan Kahveci",
                    style: primaryTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: semiBold,
                    ),
                  ),
                  Text(
                    "Let's explore the world!",
                    style: primaryTextStyle,
                  ),
                ],
              ),
            ),
            Container(
              height: 54,
              width: 54,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/image_profile.png'),
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor1,
      body: ListView(
        children: [
          header(),
          SizedBox(height: 20),
          category(),
          SizedBox(height: 30),
          popularProductTitle(),
          SizedBox(height: 15),
          popularProduct(),
          SizedBox(height: 15),
          newArrivalTitle(),
          newArrivalProduct(),
        ],
      ),
    );
  }
}
