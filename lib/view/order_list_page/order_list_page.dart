import 'package:assignment/constants/colors/app_colors.dart';
import 'package:assignment/view/map_page/map_page.dart';
import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class OrderListPage extends StatelessWidget {
  const OrderListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: const Padding(
              padding: EdgeInsets.only(left: 13, top: 13),
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/men.jpg"),
              ),
            ),
            pinned: true,
            backgroundColor: AppColors.whiteColor,
            expandedHeight: 85,
            flexibleSpace: Container(
              decoration: const BoxDecoration(),
              child: Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(top: 19.0),
                  child: ToggleSwitch(
                    minWidth: 90.0,
                    initialLabelIndex: 1,
                    cornerRadius: 20.0,
                    activeFgColor: Colors.white,
                    inactiveBgColor: Colors.grey,
                    inactiveFgColor: Colors.white,
                    totalSwitches: 2,
                    labels: const ['Online', 'Offline'],
                    activeBgColors: const [
                      [AppColors.blueColor],
                      [AppColors.blueColor]
                    ],
                    onToggle: (index) {},
                  ),
                ),
              ),
            ),
            actions: const [
              Padding(
                padding: EdgeInsets.only(top: 18, right: 18),
                child: Icon(
                  Icons.notifications_on_rounded,
                  color: AppColors.redColor,
                ),
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Orders in Queue',
                    style: TextStyle(
                        fontSize: 17,
                        color: AppColors.greyColor,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  primary: false,
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: const DecorationImage(
                                      image: AssetImage(
                                        'assets/images/p1.jpg',
                                      ),
                                      fit: BoxFit.cover),
                                ),
                                height: 70,
                                width: 70,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    '#ID1274637308',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.025,
                                  ),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width * 0.5,
                                    child: const Text(
                                      'Vattakarai,Chennavannavilai,Nagercoil,Tamil Nadu 629002,India',
                                      maxLines: 2,
                                      style: TextStyle(
                                          color: Colors.black38, fontSize: 15),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: const [
                                  Text(
                                    '₹1,253',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: FloatingActionButton.small(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MapPage()),
                );
              },
              child: const Icon(Icons.directions),
            ),
          ),
        ],
      ),
    );
  }
}
