import 'package:flutter/material.dart';
import 'package:moxa_shop/pages/user/order.dart';

userRoutes(context) {
  return {
    '/user/order': (context, {arguments}) {
      return OrderPage();
    }
  };
}