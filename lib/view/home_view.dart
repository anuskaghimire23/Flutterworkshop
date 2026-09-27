import 'package:ecommerce/controller/auth_controller.dart';
import 'package:ecommerce/controller/product_controller.dart';
import 'package:ecommerce/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    var authController = Get.find<AuthController>();
    var productController = Get.find<ProductController>();
    return Scaffold(
      appBar: AppBar(
        title: Text("Hamro cart"),

        actions: [
          IconButton(
            onPressed: () {
              Get.defaultDialog(
                title: "Warning",
                content: Text("Are you sure , you want to logout?"),
                actions: [
                  OutlinedButton(
                    onPressed: () {
                      Get.back();
                    },
                    child: Text("No"),
                  ),
                  FilledButton(
                    onPressed: () {
                      authController.logout();
                    },
                    child: Text("Yes"),
                  ),
                ],
              );
            },
            icon: Icon(Icons.logout),
          ),
        ],
      ),

      body: Obx(() {
        if (productController.isLoading.value == true) {
          return Center(child: CircularProgressIndicator());
        } else {
          return SingleChildScrollView(
            child: Column(
              children: [
                ListView.builder(
                  itemCount: productController.products.value.data.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    var product = productController.products.value.data[index];
                    return ListTile(
                      onTap: (){
                       Get.toNamed(AppRoutes.product , arguments: product) ;
                      },
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage("${product.image}"),
                      ),
                      title: Text("${product.title}"),
                      subtitle: Text("${product.price}"),
                      trailing: Icon(Icons.arrow_right_rounded),
                    );
                  },
                ),
              ],
            ),
          );
        }
      }),
    );
  }
}
