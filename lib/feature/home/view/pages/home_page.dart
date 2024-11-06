import 'package:alisons_machine_test/feature/home/services/home_services.dart';
import 'package:alisons_machine_test/feature/home/view/widgets/pageview_widget.dart';
import 'package:alisons_machine_test/feature/home/view/widgets/product_card_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const routePath = '/home';

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: HomeServices.getData(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return const Center(
                child: Text('Cannot load home page, Try again'),
              );
            } else if (!snapshot.hasData) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            final responseData = snapshot.data!;

            return SafeArea(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Image.asset("assets/images/logo.png"),
                        const Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset("assets/images/search.png"),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset("assets/images/love.png"),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset("assets/images/cart.png"),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              SizedBox(
                                width: double.infinity,
                                height: 300,
                                child: Image.network(
                                  'https://swan.alisonsnewdemo.online/images/banner/${responseData.banner1?.first.image}',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Positioned(
                                bottom: 16,
                                right: 16,
                                child: Material(
                                  color: Colors.transparent,
                                  child: InkWell(
                                    onTap: () {},
                                    borderRadius: BorderRadius.circular(100),
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 8, horizontal: 16),
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        border: Border.all(
                                          color: Colors.white,
                                          width: 2,
                                        ),
                                      ),
                                      child: const Text(
                                        'Shop Now',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Our Brands",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700),
                                ),
                                SizedBox(
                                  height: 150,
                                  child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount:
                                        responseData.featuredbrands?.length ??
                                            0,
                                    itemBuilder: (context, index) {
                                      // final brand =
                                      //     responseData.featuredbrands![index];

                                      return const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: SizedBox(
                                          height: 150,
                                          width: 118,
                                          // child: Image.network(
                                          //   'https://swan.alisonsnewdemo.online/images/banner/${brand.image}',
                                          // ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                const Text(
                                  "Suggested For You",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700),
                                ),
                                ProductCardWidget(
                                  products: responseData.ourProducts ?? [],
                                ),
                                SizedBox(
                                  height: 385,
                                  child: PageView(
                                    children: [
                                      for (final banner
                                          in responseData.banner2!)
                                        PageviewWidget(
                                          imagePath: banner.image!,
                                        ),
                                      for (final banner
                                          in responseData.banner2!)
                                        PageviewWidget(
                                          imagePath: banner.image!,
                                        ),
                                    ],
                                  ),
                                ),
                                const Text(
                                  "Best Sellers",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700),
                                ),
                                ProductCardWidget(
                                  products: responseData.bestSeller ?? [],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
