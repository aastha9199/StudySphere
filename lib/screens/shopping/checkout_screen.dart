import 'package:courseapp/constants.dart';
import 'package:courseapp/data%20provider/my_course_data_provider.dart';
import 'package:courseapp/data%20provider/shopping_cart_data_provider.dart';
import 'package:courseapp/model/course.dart';
import 'package:courseapp/screens/shopping/widget/payment_methods.dart';
import 'package:courseapp/util/route_names.dart';
import 'package:csc_picker/csc_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../util/util.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen(
      {super.key, required this.courseList, required this.totalPrice});

  final List<Course> courseList;
  final double totalPrice;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: const Text("Checkout"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Billing Address",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade900),
                ),
                const SizedBox(
                  height: 10,
                ),
                CSCPicker(
                  layout: Layout.vertical,
                  flagState: CountryFlag.DISABLE,
                  onCountryChanged: (value) {},
                  onStateChanged: (value) {},
                  onCityChanged: (value) {},
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Payment Method",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade900),
                ),
                const SizedBox(
                  height: 10,
                ),
                const PaymentMethods(),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Order",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade900),
                ),
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                    child: ListView.builder(
                        itemCount: courseList.length,
                        itemBuilder: (context, index) {
                          Course course = courseList[index];
                          return ListTile(
                            leading: Image.asset(
                              course.thumbnailUrl,
                              width: 50,
                              height: 50,
                            ),
                            title: Text(
                              course.title,
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                            trailing: Text("\$${course.price}"),
                          );
                        }))
              ],
            ),
            SizedBox(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$$totalPrice",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade900),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        MyCourseDataProvider.addAllCourses(courseList);
                        ShoppingCartDataProvider.clearCart();
                        Util.showMessage(
                            context, "Your order is placed successfully");
                        Navigator.pushNamed(context, RouteNames.courseHome);
                      },
                      style: ElevatedButton.styleFrom(
                        primary: kPrimaryColor,
                      ),
                      child: Text(
                        "Place Order",
                        style: TextStyle(fontSize: 20),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
