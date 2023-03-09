import 'package:assignment/constants/colors/app_colors.dart';
import 'package:assignment/constants/sizedboxes/app_sizedboxes.dart';
import 'package:flutter/material.dart';

class MapPage extends StatelessWidget {
  const MapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backColor,
        appBar: AppBar(
            backgroundColor: AppColors.whiteColor,
            elevation: 0,
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: AppColors.blackColor,
              ),
              onPressed: () => Navigator.of(context).pop(),
            ),
            title: Row(
              children: const [
                Text(
                  "17",
                  style: TextStyle(
                    color: AppColors.blackColor,
                  ),
                ),
                Text(
                  "mins",
                  style: TextStyle(
                    fontSize: 13,
                    color: AppColors.blackColor,
                  ),
                ),
                Spacer(),
                Text(
                  "1.8km",
                  style: TextStyle(
                    fontSize: 15,
                    color: AppColors.blueGreyColor,
                  ),
                ),
                Text(
                  "11.48am",
                  style: TextStyle(
                    fontSize: 15,
                    color: AppColors.blueGreyColor,
                  ),
                ),
              ],
            )),
        body: ListView(
          children: [
            SizedBox(
              height: 220,
              child: SingleChildScrollView(
                child: Stack(
                  children: [Image.asset("assets/images/map.webp")],
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height - 220,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
                color: AppColors.whiteColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "______",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        AppSizedBoxes.sizedboxH10,
                        Row(
                          children: const [
                            Icon(
                              Icons.location_on,
                              color: AppColors.blueColor,
                            ),
                            Text(
                              "DELIVERY LOCATION",
                              style: TextStyle(
                                  color: AppColors.blueColor,
                                  fontWeight: FontWeight.bold),
                            ),
                            Spacer(),
                            Text(
                              "#ODNO000598",
                              style: TextStyle(
                                color: AppColors.greyColor,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    AppSizedBoxes.sizedboxH15,
                    Row(
                      children: [
                        Container(
                          height: 70,
                          width: 80,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: AssetImage("assets/images/p2.jpeg"),
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        AppSizedBoxes.sizedboxW25,
                        const Text(
                          "Vattakarai Chennavannanvilai,\nNagercoil,Tamil Nadu 629002,india",
                          style: TextStyle(fontSize: 17),
                        ),
                      ],
                    ),
                    AppSizedBoxes.sizedboxH10,
                    const Divider(
                      thickness: 1.5,
                      color: AppColors.backColor,
                    ),
                    AppSizedBoxes.sizedboxH10,
                    Row(
                      children: [
                        Column(
                          children: const [
                            Text(
                              "Payment",
                              style: TextStyle(
                                color: AppColors.greyColor,
                              ),
                            ),
                            AppSizedBoxes.sizedboxH10,
                            Text(
                              "₹ 250",
                              style: TextStyle(
                                color: AppColors.blackColor,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                        AppSizedBoxes.sizedboxW60,
                        Column(
                          children: const [
                            Text(
                              "Payment Mode",
                              style: TextStyle(
                                color: AppColors.greyColor,
                              ),
                            ),
                            AppSizedBoxes.sizedboxH10,
                            Text(
                              "Cash on delivery",
                              style: TextStyle(
                                color: AppColors.blackColor,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    AppSizedBoxes.sizedboxH10,
                    const Divider(
                      thickness: 1.5,
                      color: AppColors.backColor,
                    ),
                    AppSizedBoxes.sizedboxH10,
                    Row(
                      children: const [
                        Text(
                          "Delivering to",
                          style: TextStyle(
                            color: AppColors.greyColor,
                          ),
                        ),
                      ],
                    ),
                    AppSizedBoxes.sizedboxH10,
                    Row(
                      children: const [
                        CircleAvatar(
                          radius: 20.0,
                          backgroundImage: AssetImage("assets/images/w1.jpeg"),
                        ),
                        AppSizedBoxes.sizedboxW5,
                        Text(
                          "Anita",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Spacer(),
                        CircleAvatar(
                          radius: 16,
                          child: Icon(
                            Icons.message_rounded,
                            size: 20,
                          ),
                        ),
                        AppSizedBoxes.sizedboxW25,
                        CircleAvatar(
                          radius: 16,
                          child: Icon(
                            Icons.call,
                            size: 20,
                          ),
                        ),
                      ],
                    ),
                    AppSizedBoxes.sizedboxH15,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 50,
                          width: 340,
                          decoration: BoxDecoration(
                            color: AppColors.blueColor,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(6),
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(9),
                                    color: AppColors.whiteColor,
                                  ),
                                  child: const Icon(
                                    Icons.keyboard_double_arrow_right_rounded,
                                    size: 30,
                                    color: AppColors.blueColor,
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 100, top: 10),
                                child: Text(
                                  "Order Completed",
                                  style: TextStyle(
                                      color: AppColors.whiteColor,
                                      // fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    AppSizedBoxes.sizedboxH30,
                    const Divider(
                      thickness: 1.5,
                      color: AppColors.backColor,
                    ),
                    Row(
                      children: const [
                        CircleAvatar(
                          backgroundColor: AppColors.blueColor,
                          child: Icon(
                            Icons.warning,
                            size: 25,
                            color: AppColors.whiteColor,
                          ),
                        ),
                        AppSizedBoxes.sizedboxW25,
                        Text(
                          "Report issues about this order",
                          style: TextStyle(
                            color: AppColors.blueColor,
                            fontSize: 20,
                          ),
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: AppColors.blueColor,
                        )
                      ],
                    ),
                    AppSizedBoxes.sizedboxH5,
                    const Divider(
                      thickness: 1.5,
                      color: AppColors.backColor,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
