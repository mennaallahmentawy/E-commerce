import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:untitled/const/card_item.dart';
import '../const/app_const.dart';
import '../const/category.dart';
import '../providers/product_details.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _inputText = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Logo Text'),
      // ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 18,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  decoration: const InputDecoration(
                    labelText: 'Search',
                    prefixIcon: Icon(Icons.search),
                    enabledBorder:
                        OutlineInputBorder(borderSide: BorderSide.none),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black26),
                    ),
                  ),
                  onChanged: (value) {
                    setState(() {
                      _inputText = value;
                    });
                  },
                ),
              ),
              // SizedBox(
              //   height: MediaQuery.of(context).size.height/18,
              // ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.25,
                child: ClipRRect(
                    child: Swiper(
                  itemBuilder: (BuildContext context, int index) {
                    return Image.asset(
                      "asset/image/banner2.png",
                      fit: BoxFit.fill,
                    );
                  },
                  itemCount: 10,
                  viewportFraction: 0.8,
                  scale: 0.9,
                )),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 18,
              ),
              const Text(
                "Top Categories",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              GridView.count(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: 4,
                  children:
                      List.generate(AppConst.categoriesList.length, (index) {
                    return CategoryWidget(
                      image: AppConst.categoriesList[index].image,
                      name: AppConst.categoriesList[index].name,
                    );
                  })),
              const Text(
                "Best Sellers",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                height: 200,
                child: ListView.separated(
                  padding: const EdgeInsets.all(3),
                  scrollDirection: Axis.horizontal,
                  itemCount: 7,
                  separatorBuilder: (context, _) => const SizedBox(
                    width: 12,
                  ),
                  itemBuilder: (context, index) =>
                      buildCard(item: items[index]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildCard({
  required CardItem item,
}) =>
    SizedBox(
      width: 200,
      child: Column(
        children: [
          Expanded(
            child: AspectRatio(
              aspectRatio: 4 / 3,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Material(
                  child: Ink.image(
                    image: AssetImage(item.urlImage),
                    fit: BoxFit.cover,
                    child: InkWell(onTap: () {
                      // Navigator.push(
                      //   context ,
                      //   MaterialPageRoute(
                      //     builder: (context) => ProductDetails(item: item),
                      //   ),
                      // );
                    }),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            item.title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            item.subtitle,
            style: const TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
