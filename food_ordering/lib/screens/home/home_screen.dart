import 'package:flutter/material.dart';
import 'package:food_ordering/screens/detail/product_detail.dart';
import 'package:food_ordering/screens/home/single_product.dart';

class HomeScreen extends StatelessWidget {
  Widget listTile({IconData? icon, String? title}) {
    return ListTile(
      leading: Icon(
        icon,
        size: 28,
        color: Colors.black87,
      ),
      title: Text(
        title!,
        style: TextStyle(
            fontSize: 18, color: Colors.black87, fontWeight: FontWeight.bold),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: Container(
            child: ListView(
              children: [
                DrawerHeader(
                    child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 32,
                      child: CircleAvatar(
                        radius: 32,
                        backgroundColor: Color.fromRGBO(2, 134, 17, 1),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 7),
                          child: Text('Welcome, User'),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Container(
                          height: 25,
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                                side: BorderSide(
                                    width: 0.9,
                                    color: Color.fromRGBO(2, 134, 17, 1)),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                )),
                            onPressed: () {},
                            child: Text(
                              'Đăng nhập',
                              style: TextStyle(
                                color: Color.fromRGBO(2, 134, 17, 1),
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                )),
                listTile(icon: Icons.home_outlined, title: 'Trang chủ'),
                listTile(icon: Icons.shopping_bag_rounded, title: 'Giỏ hàng'),
                listTile(
                    icon: Icons.supervised_user_circle_sharp,
                    title: 'Tài khoản của tôi'),
                listTile(icon: Icons.notifications, title: 'Thông báo'),
                listTile(
                    icon: Icons.rate_review_outlined,
                    title: 'Đánh giá của tôi'),
                listTile(
                    icon: Icons.request_page_outlined, title: 'Yêu cầu hỗ trợ'),
                listTile(
                    icon: Icons.question_answer_outlined, title: 'Hỏi đáp'),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Liên hệ hỗ trợ',
                          style: TextStyle(
                              color: Color.fromRGBO(2, 134, 17, 1),
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 7),
                          child: Text(
                            'Tổng đài : 1900009',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 0, horizontal: 3),
                          child: Text(
                            'Email : supportth@gmail.vn',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        )
                      ]),
                )
              ],
            ),
          ),
        ),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Color.fromRGBO(2, 134, 17, 1)),
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          elevation: 0.3,
          actions: [
            CircleAvatar(
              child: Icon(
                Icons.search,
                size: 20,
                color: Colors.white,
              ),
              backgroundColor: Color.fromRGBO(2, 134, 17, 1),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: CircleAvatar(
                  backgroundColor: Color.fromRGBO(2, 134, 17, 1),
                  child: Icon(
                    Icons.shopping_bag_outlined,
                    size: 20,
                    color: Colors.white,
                  )),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: ListView(children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              height: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage("https://i.imgur.com/roWDfjQ.png"))),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Món mới, giảm 25%!!',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Xem tất cả',
                    style: TextStyle(fontSize: 16),
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SingleProduct(
                    productName: 'Egg',
                    productId: '1v2',
                    productImage: 'assets/products/egg.jpg',
                    productPrice: 12,
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ProductDetail()));
                    },
                  ),
                  SingleProduct(
                    productName: 'Egg',
                    productId: '1v2',
                    productImage: 'assets/products/egg.jpg',
                    productPrice: 12,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Món mới, giảm 25%!!',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Xem tất cả',
                    style: TextStyle(fontSize: 16),
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SingleProduct(
                    productName: 'Egg',
                    productId: '1v2',
                    productImage: 'assets/products/egg.jpg',
                    productPrice: 12,
                  ),
                  SingleProduct(
                    productName: 'Egg',
                    productId: '1v2',
                    productImage: 'assets/products/egg.jpg',
                    productPrice: 12,
                  )
                ],
              ),
            )
          ]),
        ));
  }
}
