import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import '../controllers/productsConttroler.dart';

class ProductsScreen extends StatelessWidget {
  ProductsScreen({super.key});
  final productsController = Get.put(ProductsConntroller());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.centerLeft,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 38, 38, 38),
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10.0), bottomRight: Radius.circular(10.0),),
              ),
              child: const Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text("News",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Color.fromARGB(255, 250, 120, 71),

                  ),),
              ),
            ),
          ),
          Expanded(
            flex: 8,
            child: GetX<ProductsConntroller>(
              init: ProductsConntroller(),
              builder: (value) { 
                return ListView.builder(
                  itemCount: value.products.length,
                  itemBuilder: (BuildContext context, int index){
                    return Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: ListTile(
                        shape: Border.all(color: Colors.grey, width: 1.0),
                        
                        leading: FloatingActionButton(
                          onPressed: (){value.deleteProduct(index);} ,
                          child: const Icon(Icons.remove_circle,color: Colors.red)),

                        title: Text(value.products[index].productName,),
                        subtitle: Text( "${value.products[index].id}" ),
                        trailing: Text("${value.products[index].cost}"),
                      ),
                    ); 
                  },
                );
                
              }
            ),
          ),
          Expanded(
            flex:1,
            child:GetBuilder<ProductsConntroller>(
              init: ProductsConntroller(),
              builder: (value) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FloatingActionButton(
                    onPressed: (){value.clearProductsList(); },
                  backgroundColor: Colors.red ,
                  child: const Icon(Icons.remove,
                  ),
                  ),
            
                  FloatingActionButton(onPressed: (){value.addProduct(); },
                  backgroundColor: Colors.lightGreen,
                  child: const Icon(Icons.add),
                  ),
            
                ],);
              }
            )
            ),
        ],
      )
      );
  }
}