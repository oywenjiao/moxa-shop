import 'package:flutter/material.dart';
import 'package:moxa_shop/pages/product/product_detail.dart';

productRoutes(context) {
  return {
    '/product/detail': (context, {arguments}){
      Object? arg = ModalRoute.of(context)!.settings.arguments;
      return ProductDetailPage();
    }
  };
}