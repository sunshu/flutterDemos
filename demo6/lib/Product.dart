import 'package:flutter/material.dart';
class Product{
  final String name;
  const Product({this.name});
}

typedef void CartChangeCallback(Product product,bool isCart);

class ShoppingListItem extends  StatelessWidget{
  final bool inCart;
  final Product product;
  final CartChangeCallback callBack;
  ShoppingListItem({Product product,this.inCart,this.callBack})
    :product = product,
    super(key:new ObjectKey(product));

  Color _getColor(BuildContext context){

    return inCart? Colors.black54 : Theme.of(context).primaryColor;
  }

  TextStyle _getTextStyle(BuildContext context){
    if(!inCart){
       return null;
    }else{
      return new TextStyle(
        color: Colors.black54,
        decoration: TextDecoration.lineThrough,
      );
    }
  }

  @override
    Widget build(BuildContext context) {
      ListTile listTile = new ListTile(
          onTap: (){
            callBack(product, !inCart);
          },
          leading: new CircleAvatar(
             backgroundColor: _getColor(context),
             child: new Text( product.name[0])
          ),
          title: new Text( product.name, style: _getTextStyle(context),),

      );


      return listTile;
    }

}