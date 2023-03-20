import 'package:flutter/material.dart';

class SingleProduct extends StatelessWidget {
  final String? productImage;
  final String? productName;
  final void Function()? onTap;
  final String? productId;
  final ProductModel? productUnit;
  final int? productPrice;

  SingleProduct(
      {this.productImage,
      this.productName,
      this.onTap,
      this.productId,
      this.productUnit,
      this.productPrice});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Row(children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 5),
          height: 250,
          width: 160,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 2),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              GestureDetector(
                  onTap: onTap,
                  child: Container(
                      height: 120,
                      padding: EdgeInsets.all(0),
                      width: double.infinity,
                      child: Image.asset(productImage!))),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    productName!,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  Text(
                    '10k/4 bánh',
                    style: TextStyle(fontSize: 13),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 0),
                    child: Container(
                      height: 25,
                      width: 123,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        )),
                        onPressed: () {
                          onTap!;
                        },
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '10k/4 bánh',
                                style: TextStyle(
                                    fontSize: 13, color: Colors.grey[700]),
                              ),
                              Icon(
                                Icons.arrow_drop_down,
                                color: Colors.grey[700],
                              )
                            ]),
                      ),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 15),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        height: 30,
                        width: 120,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: Color.fromRGBO(2, 134, 17, 1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40),
                              )),
                          child: Text('Thêm vào giỏ',
                              style: TextStyle(color: Colors.white)),
                          onPressed: () {
                            onTap!;
                          },
                        ),
                      ))
                ],
              ))
            ]),
          ),
        ),
      ]),
    );
  }
}

class ProductModel {}
