import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Global{
  static List<Map<String, dynamic>> item = [
    {
      'name':"pizza 🔴",
      'imeg':"assets/images/60-603362_pizza-png-transparent-png-removebg-preview.png",
      'mrp' :699 ,
      'num' :0,
      'total':0,
      'totalPrice':0,
'fainl':0,
    },

    {
      'name':"Burger 🔴",
      'imeg':"assets/images/WhatsApp_Image_2022-12-24_at_1.45.37_PM-removebg-preview.png",
      'mrp' :129 ,
      'num' :0,
      'total':0,
      'totalPrice':0,
'fainl':0,

    },


    {
      'name':"Veg Biryani 🟢",
      'imeg':"assets/images/biryani_veg-removebg-preview.png",
      'mrp' :999,
      'num' :0,
      'total':0,
      'totalPrice':0,
'fainl':0,
    },
    {
      'name':"Nonveg Biryani 🔴",
      'imeg':"assets/images/non_veg-removebg-preview.png",
      'mrp' :999,
      'num' :0,
      'total':0,
      'totalPrice':0,
'fainl':0,
    },

    {
      'name':"Chucken 🔴",
      'imeg':"assets/images/chucken-removebg-preview.png",
      'mrp' :499 ,
      'num' :0,
      'total':0,
      'totalPrice':0,
'fainl':0,
    },
    {
      'name':"ChuckenLolipop 🔴",
      'imeg':"assets/images/lolipop-removebg-preview.png",
    'mrp' :599,
      'num' :0,
      'total':0,
      'totalPrice':0,
'fainl':0,
    },

    {
      'name':"Cupcake 🟢",
      'imeg':"assets/images/cupcake1-removebg-preview.png",
    'mrp' :99,
      'num' :0,
      'total':0,
      'totalPrice':0,
'fainl':0,
    },
    {
      'name':"Donets 🟢",
      'imeg':"assets/images/donet-removebg-preview.png",
      'mrp' :99,
      'num' :0,
      'total':0,
      'totalPrice':0,
'fainl':0,
    },
    {
      'name':"Garlicnaan 🟢",
      'imeg':"assets/images/garlicnaan-removebg-preview.png",
      'mrp' :79 ,
      'num' :0,
      'total':0,
      'totalPrice':0,
'fainl':0,
    },
    {
      'name':"Kajucurry 🟢",
      'imeg':"assets/images/kajucurry-removebg-preview.png",
      'mrp' :499,
      'num' :0,
      'total':0,
      'totalPrice':0,
'fainl':0,

    },
    {
      'name':"Makki di roti 🟢",
      'imeg':"assets/images/makki_di_roti-removebg-preview.png",
      'mrp' :49,
      'num' :0,
      'total':0,
      'totalPrice':0,
      'fainl':0,
    },
    {
      'name':"Panir masala 🟢",
      'imeg':"assets/images/panir_masala-removebg-preview.png",
      'mrp' :499,
      'num' :0,
      'total':0,
      'totalPrice':0,
'fainl':0,
    },

    {
      'name':"Shalad 🟢",
      'imeg':"assets/images/veg_shalad-removebg-preview.png",
    'mrp' :1199,
      'num' :0,
      'total':0,
      'totalPrice':0,
'fainl':0,
    },
    {
      'name':" Italian Shalad 🟢",
      'imeg':"assets/images/Italian-shalad-removebg-preview.png",
      'mrp' :999 ,
      'num' :0,
      'total':0,
      'totalPrice':0,
'fainl':0,
    },
    {
      'name':"Cappuccino 🟢",
      'imeg':"assets/images/cappuccino-removebg-preview.png",
      'mrp' :149,
      'num' :0,
      'total':0,
      'totalPrice':0,
'fainl':0,
    },
    {
      'name':"Milkshake 🟢",
      'imeg':"assets/images/milkshake-removebg-preview.png",
      'mrp' :99 ,
      'num' :0,
      'total':0,
      'totalPrice':0,
      'fainl':0,

    },
  ];

  static dynamic num=0;

  
  static List<Map<String,dynamic>> cart = [];
  static List<Map<String,dynamic>> favorite = [];
  static bool f1 = false;
  static dynamic ic = Icon(Icons.favorite);
}