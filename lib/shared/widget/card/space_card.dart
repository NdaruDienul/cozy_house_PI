import 'package:cozy_house_pi/core.dart';
import 'package:flutter/material.dart';

class SpaceCard extends StatelessWidget {
  const SpaceCard(this.space, {super.key});
  final SpaceModel space;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.to(DetailPageView(space)),
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: horizontalSize, vertical: 15.0),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: radiusPrimary,
              child: Stack(
                children: [
                  Image.network(
                    space.imageUrl!,
                    width: 130.0,
                    height: 110.0,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    alignment: Alignment.topRight,
                    width: 130.0,
                    child: Container(
                      width: 70.0,
                      height: 30.0,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(30.0)),
                        color: primaryColor,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star_rounded,
                            size: 24.0,
                            color: warningColor,
                          ),
                          Text(
                            "${space.rating}/5",
                            style: TextStyle(
                              fontWeight: medium,
                              color: whiteColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 20.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  space.name!,
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: medium,
                  ),
                ),
                Text.rich(
                  TextSpan(
                    text: '\$${space.price}',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: medium,
                      color: primaryColor,
                    ),
                    children: [
                      TextSpan(
                        text: ' / month',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: light,
                          color: secondaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16.0,
                ),
                Text(
                  "${space.city}, ${space.country}",
                  style: TextStyle(
                    fontWeight: light,
                    color: secondaryColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
