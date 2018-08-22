import 'package:flutter/material.dart';
import 'Product.dart';

final List<Product> _kProducts = <Product>[
  new Product(name: '鸡蛋'),
  new Product(name: '面粉'),
  new Product(name: '巧克力脆片')
];



void main() => runApp(



 new MaterialApp(
      title: 'Flutter教程',
      home: new ShoppingList(products: _kProducts),
    ),
  );

class ShoppingList extends StatefulWidget{
  final List<Product> products;
  ShoppingList({Key key,this.products}):super( key:key);
  @override
    State<StatefulWidget> createState() {
      _ShoppingListState state = new _ShoppingListState();
      return state;
    }
}

class _ShoppingListState extends State<ShoppingList>{
   Set<Product> _shoppingCart = new Set<Product>();
  void _handlerCartChanged(Product product,bool inCart){
    setState(() {
          if( inCart){
            _shoppingCart.add(product);
          }else{
            _shoppingCart.remove(product);
          }
        });
  }

   @override
     Widget build(BuildContext context) {
       Scaffold scaffold = new Scaffold(
          appBar: new AppBar(
             title:  new Text('购物清单'),
          ),
          body: new ListView(
            children: widget.products.map(
              (Product product){
               ShoppingListItem item = ShoppingListItem(
                  product: product,
                  inCart:  _shoppingCart.contains( product),
                  callBack: _handlerCartChanged,
                );
                return item;
              }              
            ).toList(),
          ),
       );
       return scaffold;
     }
}




