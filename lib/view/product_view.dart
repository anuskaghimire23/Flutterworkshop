import 'package:ecommerce/controller/cart_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class ProductView extends GetView<CartController>{
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    var product = Get.arguments;
    return Scaffold(
      appBar: AppBar(title: Text("Product Page")),
      bottomNavigationBar: Row(children: [
        Container(
                  decoration:BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(14),),
                  child: IconButton(
                    onPressed: (){
                      
                    },icon:Icon(Icons.favorite)
                  ),
                ),
                FilledButton(onPressed: (){

                }, child: Text("Add to Cart"))

      ],) ,
      body: SingleChildScrollView(
        child: Column(
        children: [
          //  w1 Image
          SizedBox(
            width: double.infinity,
            height: 300,
            child: Image.network("${product.image}", fit: BoxFit.cover),
          ),

          Row(
            children: [
              Expanded(
                child: Text(
                  "${product.title}",
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
              Column(
                children: [
                  Text(
                    "Rs.${product.price}",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  Text(
                    "Rs.${product.discountAmount}",
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      decoration: TextDecoration.lineThrough,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ],
          ),

          // w3 Product Description
             HtmlWidget("${product.description}"),
                
                Row(children: [
                  Container(
                  decoration:BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child:IconButton(
                    onPressed : (){
                  controller.decrement();
                    },icon:Icon(Icons.remove,)
                  )
                ), Gap(10),
                Container(
                   decoration:BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16 , vertical: 14),
                    child: Text("${controller.qty}"),
                  ),
                ),
                Gap(10),
                Container(
                  decoration:BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(14),),
                  child: IconButton(
                    onPressed: (){
                      controller.increment();
                    },icon:Icon(Icons.add)
                  ),
                )

                ],)


        ],
      ),
      )
    );
  }
}
