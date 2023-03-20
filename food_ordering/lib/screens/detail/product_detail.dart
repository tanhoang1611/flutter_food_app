import 'package:flutter/material.dart';
import 'package:food_ordering/screens/home/single_product.dart';

enum SigningCharacter { fill, outline }

class ProductDetail extends StatefulWidget {
  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  SigningCharacter _character = SigningCharacter.fill;
  Widget BottomBar(
      {Color? iconColor,
      Color? textColor,
      Color? backgroundColor,
      String? title,
      IconData? iconData}) {
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Container(
        height: 50,
        // color: backgroundColor,
        decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(50),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 218, 214, 214),
                blurRadius: 10,
                offset: Offset(1, 1), // Shadow position
              ),
            ]),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Icon(iconData, size: 17, color: iconColor),
          SizedBox(
            width: 5,
          ),
          Text(title.toString(),
              style: TextStyle(
                  color: textColor, fontWeight: FontWeight.bold, fontSize: 16))
        ]),
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Row(children: [
        BottomBar(
            backgroundColor: Colors.white,
            iconColor: Colors.black,
            iconData: Icons.favorite_border_outlined,
            title: 'Yêu thích'),
        BottomBar(
            backgroundColor: Color.fromRGBO(2, 134, 17, 1),
            iconColor: Colors.white,
            iconData: Icons.shopping_cart_checkout_outlined,
            title: 'Đi tới thanh toán',
            textColor: Colors.white)
      ]),
      appBar: AppBar(
        elevation: 0.3,
        backgroundColor: Color.fromRGBO(2, 134, 17, 1),
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'Chi tiết sản phẩm',
          style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(children: [
        Container(
            width: double.infinity,
            height: 280,
            // width: double.infinity,
            child: FittedBox(
                child: Image.asset('assets/products/egg.jpg'),
                fit: BoxFit.fill)),
        ListTile(
          title: Text(
            'Product Name',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          width: double.infinity,
          child: Text(
            'Tùy chọn món ăn',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(
              children: [
                Radio(
                    value: SigningCharacter.fill,
                    activeColor: Color.fromRGBO(2, 134, 17, 1),
                    groupValue: _character,
                    onChanged: (value) {
                      setState(() {
                        _character = value!;
                      });
                    }),
                Text(
                  '10k/  4 bánh',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                )
              ],
            ),
            Container(
              width: 120,
              padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
              decoration: BoxDecoration(
                  color: Color.fromRGBO(2, 134, 17, 1),
                  borderRadius: BorderRadius.circular(20)),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    'THÊM',
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                )
              ]),
            )
          ]),
        ),
        Expanded(
            child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Mô tả',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Flexible(
                child: Column(
              children: [
                Text(
                  'In a project of mine I wrap Text instances around Containers. This particular code sample features two stacked Text objects.',
                  style: TextStyle(fontSize: 17, color: Colors.grey[600]),
                )
              ],
            ))
          ]),
        ))
      ]),
    );
  }
}
