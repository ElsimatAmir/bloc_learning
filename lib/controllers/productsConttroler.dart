import 'package:bloc_learning/modules/product.dart';
import 'package:get/get.dart';



class ProductsConntroller extends GetxController{
int id = 0;
double prise = 100;
String prodName = "product ";

var products = <Product>[ ].obs ;

addProduct(){
 Product addedProduct =  Product(id, prise, prodName+id.toString());
  products.add(addedProduct);
  id++;
  prise = prise+100.0;
  update();
}

deleteProduct(int index){
  products.removeAt(index);
}

clearProductsList(){
  id = 0;
  prise = 0.0;
  prodName = "product ";
  products.clear() ;
  update();
}
}