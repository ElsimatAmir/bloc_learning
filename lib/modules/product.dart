

 class Product {
  int id;
  double cost;
  String productName;

  @override toString() => "Product : $id, $cost, $productName";
 

  Product(
    this.id,
    this.cost, 
    this.productName
    );

  //setters
  set setId(int idNumberToSet){
    id = idNumberToSet;
  }

  set setCost(double costToSet){
    cost = costToSet;
  }

  set setProductName(String productNameToSet){
    productName = productNameToSet;
  }

  //getters
  int    get getId => id;

  double get getCost => cost;

  String get getProductName => productName;
}