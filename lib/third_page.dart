import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  List<String> title = [
    'How to Start Investing in uStock',
    'How to Predict the Candlestick',
    'Is Trading Safe for Newbie Investor?'
  ];

  List<String> description = [
    'Lemme tell you this, world of investing is really really legit, especially using uStock. Why? Because',
    "What is candlestick? It's like candle but not actually sweat candle, it's some benchmark to your",
    "Many people ask us about trading in uStock, is trading safe for you if you're newbie player in uStock",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: const Text(
          'Community',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Learn Stock,',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 35,
              ),
            ),
            const Text(
              'Educate the World',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 35,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.10),
                borderRadius: BorderRadius.circular(10),
              ),
              height: 80,
              width: 350,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.search,
                    color: Colors.black,
                    size: 28,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Search something...',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: Colors.blueGrey.withOpacity(0.75),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: SizedBox(
                child: ListView.builder(
                  itemCount: title.length,
                  itemBuilder: ((context, index) {
                    return Padding(
                      padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
                      child: MyContainer(
                          title: title[index], description: description[index]),
                    );
                  }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  late String title;
  late String description;

  MyContainer({required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
        color: Colors.blueGrey.withOpacity(0.10),
        borderRadius: BorderRadius.circular(10),
      ),
      width: 350,
      height: 220,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 16,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            description,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: Colors.blueGrey.withOpacity(0.75),
              overflow: TextOverflow.ellipsis,
              wordSpacing: 0.5,
            ),
            maxLines: 2,
          ),
          const SizedBox(
            height: 40,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.blueGrey.withOpacity(0.75),
                borderRadius: BorderRadius.circular(5),
              ),
              height: 40,
              width: 40,
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.blueGrey.withOpacity(0.75),
                borderRadius: BorderRadius.circular(5),
              ),
              height: 40,
              width: 40,
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.blueGrey.withOpacity(0.75),
                borderRadius: BorderRadius.circular(5),
              ),
              height: 40,
              width: 40,
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.grey[350]!, width: 2),
              ),
              height: 40,
              width: 40,
              child: const Center(
                child: Text(
                  '+69',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            const Expanded(
              child: SizedBox(),
            ),
            const Text(
              'Join Forum',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 15,
                color: Colors.blue,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            const Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.blue,
              size: 15,
            ),
            const SizedBox(
              width: 10,
            ),
          ])
        ],
      ),
    );
  }
}
