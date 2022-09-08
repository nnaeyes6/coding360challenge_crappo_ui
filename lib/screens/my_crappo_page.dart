import 'package:crappo_crypto_ui_challenge/colors.dart';
import 'package:flutter/material.dart';

class MyCrappoPage extends StatefulWidget {
  const MyCrappoPage({Key? key}) : super(key: key);

  @override
  State<MyCrappoPage> createState() => _MyCrappoPageState();
}

class _MyCrappoPageState extends State<MyCrappoPage> {
  var items = [
    'TH/s',
    'H/s',
    'KH/s',
    'MH/s',
    'GH/s',
  ];
  String? selectedItem = 'TH/s';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.backGroundColor,
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [sliverAppBar()];
          },
          body: crappoBody(context),
        ));
  }

  Center crappoBody(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                blackFridaySave(context),
                const SizedBox(
                  height: 10,
                ),
                platformText(),
                const SizedBox(
                  height: 5,
                ),
                trustBuyText(),
                const SizedBox(
                  height: 20,
                ),
                tryForFreeText(),
                const SizedBox(
                  height: 10,
                ),
                bitcoinImage(),
                const SizedBox(
                  height: 50,
                ),
                iconRowColumn(),
                const SizedBox(
                  height: 20,
                ),
                whyChooseText(),
                const SizedBox(
                  height: 30,
                ),
                experienceText(),
                const SizedBox(
                  height: 20,
                ),
                learnMoreButton(),
                Container(
                    margin: const EdgeInsets.only(left: 20, right: 20),
                    child: Image.asset('images/Illustrations_logo.png')),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: const Text(
                    'Check how much you can earn',
                    style: TextStyle(
                        color: Color(0xFFE0E0E0),
                        fontWeight: FontWeight.w700,
                        fontSize: 30,
                        fontFamily: 'Rubik',
                        letterSpacing: 0.1),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: const Text(
                    'Let’s check your hash rate to see how much you will earn today, Exercitation veniam consequat sunt nostrud amet.',
                    style: TextStyle(
                        color: Color(0xFFE0E0E0),
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        fontFamily: 'Rubik',
                        letterSpacing: 0.1),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 400,
                ),
                secureTrade(context),
                investSmart(context),
                startMining(context),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'images/crappo_logo.png',
                      height: 46,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      'CRAPPO',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontFamily: 'Inter',
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 70,
                ),
                quickLinks(),
                resourcesLinks(),
                const SizedBox(height: 70),
                const Text(
                  'We accept following payment systems',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                paymentSystem(),
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  '©2021 CRAPPO. All rights reserved',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                socialMediaHandles()
              ],
            ),
            Positioned(
              top: 1880,
              right: 0,
              left: 0,
              child: Container(
                margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
                width: MediaQuery.of(context).size.width,
                height: 450,
                decoration: BoxDecoration(
                  color: const Color(
                    0xFFFBFCFE,
                  ),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                          top: 20, left: 30, bottom: 5, right: 30),
                      child: const Text(
                        'Enter your hash rate',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                            fontFamily: 'Rubik',
                            letterSpacing: 0.1),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 30, right: 30),
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: 1,
                            color: Color(0xffE0E0E0),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30, right: 30),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            DropdownButton(
                              // Initial Value
                              value: selectedItem,
                              isExpanded: true,
                              // Down Arrow Icon
                              icon: const Icon(
                                Icons.keyboard_arrow_down,
                                size: 16,
                              ),

                              // Array list of items
                              items: items.map((String items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Text(items),
                                );
                              }).toList(),
                              // After selecting the desired option,it will
                              // change button value to selected value
                              onChanged: (String? newItem) {
                                setState(() {
                                  selectedItem = newItem!;
                                });
                              },
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(
                                    bottom: 30,
                                  ),
                                  width: 110,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: const Color(
                                      0xFF3671E9,
                                    ),
                                    borderRadius: BorderRadius.circular(32),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      "Calculate",
                                      style: TextStyle(
                                          color: Color(
                                            0xFFFFFFff,
                                          ),
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: const Text('ESTIMATED 24 HOUR REVENUE:',
                          style: TextStyle(
                              color: Color(0xFF3671E9),
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              fontFamily: 'Rubik',
                              letterSpacing: 0.1)),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: const Text('0.055 130 59 ETH',
                          style: TextStyle(
                              color: Color(0xFF0D0D2B),
                              fontWeight: FontWeight.w500,
                              fontSize: 34,
                              fontFamily: 'Rubik',
                              letterSpacing: 0.1)),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: const Text('(\$1275)',
                          style: TextStyle(
                              color: Color(0xFF3671E9),
                              fontWeight: FontWeight.w500,
                              fontSize: 34,
                              fontFamily: 'Rubik',
                              letterSpacing: 0.1)),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: const Text(
                          'Revenue will change based on mining difficulty and Ethereum price.',
                          style: TextStyle(
                              color: Color(0xFF828282),
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              fontFamily: 'Rubik',
                              letterSpacing: 0.1)),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 4200,
              left: 70,
              child: Container(
                height: 134,
                width: 118,
                decoration: BoxDecoration(
                  color: const Color(0xff491F98),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Center(
                  child: Container(
                    padding: const EdgeInsets.only(top: 15, left: 10),
                    height: 180,
                    width: 320,
                    decoration: BoxDecoration(
                      color: const Color(0xff491F98),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Increase in \nTrade",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: AppColor.primaryColor),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            const Text(
                              "75%",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Rubik',
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xffF2F2F2),
                                  letterSpacing: 0.1),
                              textAlign: TextAlign.start,
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.arrow_upward_rounded,
                                size: 15,
                                color: Color(0xffFD8589),
                              ),
                            ),
                          ],
                        ),
                        const Text(
                          "Sell option",
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              color: Color(0xffF2F2F2),
                              letterSpacing: 0.1),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 4210,
              left: 230,
              child: Container(
                height: 54,
                width: 100,
                decoration: BoxDecoration(
                  color: const Color(0xff491F98),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "\$15.32",
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Rubik',
                          fontWeight: FontWeight.w400,
                          color: Color(0xffF2F2F2),
                          letterSpacing: 0.1),
                      textAlign: TextAlign.start,
                    ),
                    Text(
                      "Price in dollar",
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          color: Color(0xffF2F2F2),
                          letterSpacing: 0.1),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container socialMediaHandles() {
    return Container(
      margin: const EdgeInsets.only(left: 40, right: 40, bottom: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: (() {}),
            child: Image.asset('images/fb_icon.png'),
          ),
          GestureDetector(
            onTap: (() {}),
            child: Image.asset('images/ig_icon.png'),
          ),
          GestureDetector(
            onTap: (() {}),
            child: Image.asset('images/youtube_icon.png'),
          ),
          GestureDetector(
            onTap: (() {}),
            child: Image.asset('images/twitter_icon.png'),
          ),
          GestureDetector(
            onTap: (() {}),
            child: Image.asset('images/linkdln_icon.png'),
          ),
        ],
      ),
    );
  }

  Row paymentSystem() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
            margin: const EdgeInsets.only(left: 20),
            height: 64,
            width: 96,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: const Color(0xffE0E0E0).withOpacity(0.5),
            ),
            child: GestureDetector(
                onTap: (() {}), child: Image.asset('images/visa_logo.png'))),
        Container(
            height: 64,
            width: 96,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: const Color(0xffE0E0E0).withOpacity(0.5),
            ),
            child: GestureDetector(
                onTap: (() {}),
                child: Image.asset('images/double_dot_logo.png'))),
        Container(
            margin: const EdgeInsets.only(right: 20),
            height: 64,
            width: 96,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: const Color(0xffE0E0E0).withOpacity(0.5),
            ),
            child: GestureDetector(
                onTap: (() {}),
                child: Image.asset('images/bitcoin_icon_white.png')))
      ],
    );
  }

  Column resourcesLinks() {
    return Column(
      children: const [
        Text(
          'Resources Links',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          'Download Whitepapper',
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'Smart Token',
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'Blockchain Explorer',
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'Crypto API Interest',
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'Interests',
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }

  Column quickLinks() {
    return Column(
      children: const [
        Text(
          'Quick Links',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          'Home',
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'Products',
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'About',
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'Features',
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'Contact',
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: 70),
      ],
    );
  }

  Container startMining(BuildContext context) {
    return Container(
      height: 400,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xff2B076E), Color(0xff0D0D2B)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Container(
        height: 380,
        width: 370,
        margin: const EdgeInsets.all(30),
        decoration: BoxDecoration(
            color: const Color(0xff3671E9),
            borderRadius: BorderRadius.circular(16)),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Text(
              "Start mining now",
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                  color: AppColor.primaryColor),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text(
                "Join now with CRAPPO to get the latest news and start mining now",
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Rubik',
                    fontWeight: FontWeight.w400,
                    color: AppColor.primaryColor,
                    letterSpacing: 0.1),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: TextFormField(
                decoration: const InputDecoration(
                  alignLabelWithHint: false,
                  hintText: 'Enter your email',
                  hintStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 152,
              height: 55,
              decoration: BoxDecoration(
                color: const Color(
                  0xFFffffff,
                ),
                borderRadius: BorderRadius.circular(32),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    "Subscribe",
                    style: TextStyle(
                        color: Color(
                          0xFF0D0D2B,
                        ),
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        fontFamily: 'Rubik'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container investSmart(BuildContext context) {
    return Container(
      height: 1650,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(top: 50, right: 20, left: 20),
      color: const Color(0xff2B076E),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Market sentiments, portfolio, and run the infrastructure of your choice',
            style: TextStyle(
                fontSize: 26,
                fontFamily: 'Rubik',
                fontWeight: FontWeight.w700,
                color: Color(0xffffffff),
                letterSpacing: 0.1),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 50,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 30, right: 30),
            child: Text(
              'Invest Smart',
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Rubik',
                  fontWeight: FontWeight.w700,
                  color: Color(0xffffffff),
                  letterSpacing: 0.1),
              textAlign: TextAlign.start,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 30, right: 30),
            child: Text(
              'Get full statistic information about the behaviour of buyers and sellers will help you to make the decision. ',
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Rubik',
                  fontWeight: FontWeight.w700,
                  color: Color(0xffffffff),
                  letterSpacing: 0.1),
              textAlign: TextAlign.start,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            margin: const EdgeInsets.only(
              left: 20,
            ),
            width: 110,
            height: 40,
            decoration: BoxDecoration(
              color: const Color(
                0xFF3671E9,
              ),
              borderRadius: BorderRadius.circular(32),
            ),
            child: const Center(
              child: Text(
                "Learn More",
                style: TextStyle(
                    color: Color(
                      0xFFFFFFff,
                    ),
                    fontWeight: FontWeight.w500,
                    fontSize: 16),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Container(
              height: 180,
              width: 320,
              decoration: BoxDecoration(
                color: const Color(0xff35068C),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'images/bitccoin_icon.png',
                          height: 30,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Bitoin",
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              color: AppColor.primaryColor),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          "BTC",
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Rubik',
                              fontWeight: FontWeight.w500,
                              color: AppColor.primaryColor,
                              letterSpacing: 0.1),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          width: 70,
                        ),
                        const Text(
                          "+125%",
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Rubik',
                              fontWeight: FontWeight.w500,
                              color: Color(0xff42FFFF),
                              letterSpacing: 0.1),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    const Text(
                      "0.00080 BTC",
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Rubik',
                          fontWeight: FontWeight.w400,
                          color: Color(0xffF2F2F2),
                          letterSpacing: 0.1),
                      textAlign: TextAlign.start,
                    ),
                    Image.asset(
                      'images/signal_icon.png',
                      height: 70,
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 170,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 30, right: 30),
            child: Text(
              'Detailed Statistics',
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Rubik',
                  fontWeight: FontWeight.w700,
                  color: Color(0xffffffff),
                  letterSpacing: 0.1),
              textAlign: TextAlign.start,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 30, right: 30),
            child: Text(
              'View all mining related information in realtime, at any point at any location and decide which polls you want to mine in. ',
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Rubik',
                  fontWeight: FontWeight.w700,
                  color: Color(0xffffffff),
                  letterSpacing: 0.1),
              textAlign: TextAlign.start,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            margin: const EdgeInsets.only(
              left: 20,
            ),
            width: 110,
            height: 40,
            decoration: BoxDecoration(
              color: const Color(
                0xFF3671E9,
              ),
              borderRadius: BorderRadius.circular(32),
            ),
            child: const Center(
              child: Text(
                "Learn More",
                style: TextStyle(
                    color: Color(
                      0xFFFFFFff,
                    ),
                    fontWeight: FontWeight.w500,
                    fontSize: 16),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Image.asset(
              'images/statistics_person_logo.png',
              height: 200,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 30, right: 30),
            child: Text(
              'Grow your profit and track your investments',
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Rubik',
                  fontWeight: FontWeight.w700,
                  color: Color(0xffffffff),
                  letterSpacing: 0.1),
              textAlign: TextAlign.start,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 30, right: 30),
            child: Text(
              'Use advanced analytical tools. Clear TradingView charts let you track current and historical profit investments.',
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Rubik',
                  fontWeight: FontWeight.w700,
                  color: Color(0xffffffff),
                  letterSpacing: 0.1),
              textAlign: TextAlign.start,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            margin: const EdgeInsets.only(
              left: 20,
            ),
            width: 110,
            height: 40,
            decoration: BoxDecoration(
              color: const Color(
                0xFF3671E9,
              ),
              borderRadius: BorderRadius.circular(32),
            ),
            child: const Center(
              child: Text(
                "Learn More",
                style: TextStyle(
                    color: Color(
                      0xFFFFFFff,
                    ),
                    fontWeight: FontWeight.w500,
                    fontSize: 16),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: Center(child: Image.asset('images/table_coin_logo.png')),
          ),
        ],
      ),
    );
  }

  Container secureTrade(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 150),
      height: 1420,
      width: MediaQuery.of(context).size.width,
      color: AppColor.primaryColor,
      child: Column(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                child: const Text(
                  'Trade securely and market the high growth cryptocurrencies.',
                  style: TextStyle(
                      color: Color(0xFF0D0D2B),
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      fontFamily: 'Rubik',
                      letterSpacing: 0.1),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          Container(
            height: 380,
            width: 370,
            decoration: BoxDecoration(
                color: const Color(0xff2B076E),
                borderRadius: BorderRadius.circular(16)),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 40),
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      color: AppColor.primaryColor,
                      borderRadius: BorderRadius.circular(360)),
                  child: Image.asset(
                    'images/bitccoin_icon.png',
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Bitoin",
                      style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w700,
                          color: AppColor.primaryColor),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      "BTC",
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Rubik',
                          fontWeight: FontWeight.w500,
                          color: AppColor.primaryColor,
                          letterSpacing: 0.1),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Digital currency in which a record of\ntransactions is maintained.",
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Rubik',
                            fontWeight: FontWeight.w400,
                            color: AppColor.primaryColor,
                            letterSpacing: 0.1),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 206,
                      height: 64,
                      decoration: BoxDecoration(
                        color: const Color(
                          0xFF3671E9,
                        ),
                        borderRadius: BorderRadius.circular(32),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Start mining",
                            style: TextStyle(
                                color: Color(
                                  0xFFFFFFff,
                                ),
                                fontWeight: FontWeight.w500,
                                fontSize: 16),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.keyboard_arrow_right,
                                color: AppColor.primaryColor,
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          Container(
            height: 380,
            width: 370,
            decoration: BoxDecoration(
                color: const Color(0xffffffff),
                borderRadius: BorderRadius.circular(16)),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 40),
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      color: AppColor.primaryColor,
                      borderRadius: BorderRadius.circular(360)),
                  child: Image.asset(
                    'images/ethereum_icon.png',
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Ethereum",
                      style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff0D0D2B)),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "ETH",
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Rubik',
                          fontWeight: FontWeight.w500,
                          color: Color(0xffBDBDBD),
                          letterSpacing: 0.1),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Blockchain technology to create and\nrun decentralized digital applications.",
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Rubik',
                            fontWeight: FontWeight.w400,
                            color: Color(0xff828282),
                            letterSpacing: 0.1),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: const Color(
                          0xFFffffff,
                        ),
                        borderRadius: BorderRadius.circular(360),
                        border: Border(
                          bottom:
                              BorderSide(width: 1, color: Colors.grey.shade300),
                          left:
                              BorderSide(width: 1, color: Colors.grey.shade300),
                          right:
                              BorderSide(width: 1, color: Colors.grey.shade300),
                          top:
                              BorderSide(width: 1, color: Colors.grey.shade300),
                        ),
                      ),
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.keyboard_arrow_right,
                            color: Color(0xff3671E9),
                          )),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            height: 360,
            width: 370,
            decoration: BoxDecoration(
                color: const Color(0xffffffff),
                borderRadius: BorderRadius.circular(16)),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 40),
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      color: AppColor.primaryColor,
                      borderRadius: BorderRadius.circular(360)),
                  child: Image.asset(
                    'images/litecoin_icon.png',
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Litecoin",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff0D0D2B),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "LTC",
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Rubik',
                          fontWeight: FontWeight.w500,
                          color: Color(0xffBDBDBD),
                          letterSpacing: 0.1),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Cryptocurrency that enables instant\npayments to anyone in the world.",
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Rubik',
                            fontWeight: FontWeight.w400,
                            color: Color(0xff828282),
                            letterSpacing: 0.1),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: const Color(
                          0xFFffffff,
                        ),
                        borderRadius: BorderRadius.circular(360),
                        border: Border(
                          bottom:
                              BorderSide(width: 1, color: Colors.grey.shade300),
                          left:
                              BorderSide(width: 1, color: Colors.grey.shade300),
                          right:
                              BorderSide(width: 1, color: Colors.grey.shade300),
                          top:
                              BorderSide(width: 1, color: Colors.grey.shade300),
                        ),
                      ),
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.keyboard_arrow_right,
                            color: Color(0xff3671E9),
                          )),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Row learnMoreButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(
            left: 20,
            bottom: 100,
          ),
          width: 110,
          height: 40,
          decoration: BoxDecoration(
            color: const Color(
              0xFF3671E9,
            ),
            borderRadius: BorderRadius.circular(32),
          ),
          child: const Center(
            child: Text(
              "Learn More",
              style: TextStyle(
                  color: Color(
                    0xFFFFFFff,
                  ),
                  fontWeight: FontWeight.w500,
                  fontSize: 16),
            ),
          ),
        ),
      ],
    );
  }

  Container experienceText() {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: const Text(
          'Experience the next generation cryptocurrency platform. No financial borders, extra fees, and fake reviews.',
          style: TextStyle(
              color: Color(0xFFE0E0E0),
              fontWeight: FontWeight.w400,
              fontSize: 16,
              fontFamily: 'Rubik',
              letterSpacing: 0.1)),
    );
  }

  Container whyChooseText() {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: const Text('Why you should choose CRAPPO',
          style: TextStyle(
              color: Color(0xFFE0E0E0),
              fontWeight: FontWeight.w700,
              fontSize: 40,
              fontFamily: 'Rubik',
              letterSpacing: 0.1)),
    );
  }

  Container iconRowColumn() {
    return Container(
      padding: const EdgeInsets.all(30),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                height: 60,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(255, 255, 255, 0.1),
                  borderRadius: BorderRadius.circular(360),
                ),
                child: Image.asset(
                  'images/bar_chart_icon.png',
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: const Text('\$30B',
                        style: TextStyle(
                            color: Color(0xFFE0E0E0),
                            fontWeight: FontWeight.w700,
                            fontSize: 40,
                            fontFamily: 'Rubik',
                            letterSpacing: 0.1)),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: const Text('Digital Currency Exchanged',
                        style: TextStyle(
                            color: Color(0xFFE0E0E0),
                            fontWeight: FontWeight.w300,
                            fontSize: 16,
                            fontFamily: 'Rubik',
                            letterSpacing: 0.1)),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Container(
                height: 60,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(255, 255, 255, 0.1),
                  borderRadius: BorderRadius.circular(360),
                ),
                child: Image.asset(
                  'images/person_icon_crappo.png',
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: const Text('10+',
                        style: TextStyle(
                            color: Color(0xFFE0E0E0),
                            fontWeight: FontWeight.w700,
                            fontSize: 40,
                            fontFamily: 'Rubik',
                            letterSpacing: 0.1)),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: const Text('Trusted Wallets Investors',
                        style: TextStyle(
                            color: Color(0xFFE0E0E0),
                            fontWeight: FontWeight.w300,
                            fontSize: 16,
                            fontFamily: 'Rubik',
                            letterSpacing: 0.1)),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Container(
                height: 60,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(255, 255, 255, 0.1),
                  borderRadius: BorderRadius.circular(360),
                ),
                child: Image.asset(
                  'images/countries_icon.png',
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: const Text('195',
                        style: TextStyle(
                            color: Color(0xFFE0E0E0),
                            fontWeight: FontWeight.w700,
                            fontSize: 40,
                            fontFamily: 'Rubik',
                            letterSpacing: 0.1)),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: const Text('Countries Supported',
                        style: TextStyle(
                            color: Color(0xFFE0E0E0),
                            fontWeight: FontWeight.w300,
                            fontSize: 16,
                            fontFamily: 'Rubik',
                            letterSpacing: 0.1)),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Image bitcoinImage() {
    return Image.asset(
      'images/Illustration1.png',
      height: 300,
    );
  }

  Row tryForFreeText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 20),
          width: 202,
          height: 50,
          decoration: BoxDecoration(
            color: const Color(
              0xFF3671E9,
            ),
            borderRadius: BorderRadius.circular(32),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Center(
                child: Text(
                  "Try for FREE",
                  style: TextStyle(
                      color: Color(
                        0xFFFFFFff,
                      ),
                      fontWeight: FontWeight.w500,
                      fontSize: 18),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Image.asset('images/arrow_logo.png')
            ],
          ),
        ),
      ],
    );
  }

  Container trustBuyText() {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: const Text(
          'Buy and sell cryptocurrencies, trusted by 10M wallets with over \$30 billion in transactions.',
          style: TextStyle(
              color: Color(0xFFE0E0E0),
              fontWeight: FontWeight.w700,
              fontSize: 16,
              fontFamily: 'Rubik',
              letterSpacing: 0.1)),
    );
  }

  Container platformText() {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Text('Fastest & Secure Platform to Invest In Crypto',
          style: TextStyle(
              color: AppColor.primaryColor,
              fontWeight: FontWeight.w700,
              fontSize: 44,
              fontStyle: FontStyle.normal,
              fontFamily: 'Rubik',
              letterSpacing: 0.1)),
    );
  }

  Column blackFridaySave(BuildContext context) {
    return Column(
      children: [
        Container(
            margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
            width: MediaQuery.of(context).size.width,
            height: 40,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(255, 255, 255, 0.1),
              borderRadius: BorderRadius.circular(32),
            ),
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.all(5),
                  width: 100,
                  height: 32,
                  decoration: BoxDecoration(
                    color: AppColor.primaryColor,
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: const Center(
                    child: Text("70% SAVE",
                        style: TextStyle(
                            color: Color(
                              0xFF0D0D2B,
                            ),
                            fontWeight: FontWeight.w500,
                            fontSize: 16)),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Text('For the Black Friday weekend',
                    style: TextStyle(
                        color: AppColor.primaryColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        fontFamily: 'Rubik',
                        letterSpacing: 0.1)),
              ],
            )),
      ],
    );
  }

  SliverAppBar sliverAppBar() {
    return SliverAppBar(
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              'images/crappo_logo.png',
              height: 29,
            ),
            const SizedBox(
              width: 10,
            ),
            const Text(
              'CRAPPO',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            const SizedBox(
              width: 210,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.menu,
                ),
              ),
            ),
          ],
        )
      ],
      elevation: 0,
      automaticallyImplyLeading: false,
      expandedHeight: 50,
      floating: true,
      snap: true,
      backgroundColor: AppColor.backGroundColor,
    );
  }
}
