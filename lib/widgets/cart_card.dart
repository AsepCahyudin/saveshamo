import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:saveshamo/models/card_model.dart';
import 'package:saveshamo/providers/cart_provider.dart';
import 'package:saveshamo/theme.dart';

class CartCard extends StatelessWidget {
  final CartModel cart;
  CartCard(this.cart);

  @override
  Widget build(BuildContext context) {
    CartProvider cartProvider = Provider.of<CartProvider>(context);

    return Container(
      margin: EdgeInsets.only(
        top: defaultMargin,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color: backgroundColor4,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    image: NetworkImage(
                      cart.product.galleries[0].url,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 12,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      cart.product.name,
                      style: primaryTextStyle.copyWith(
                        fontWeight: semiBold,
                      ),
                    ),
                    Text(
                      '\$${cart.product.price}',
                      style: priceTextStyle,
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      cartProvider.addQuantity(cart.id);
                    },
                    child: Image.asset(
                      'assets/Plus_Button.png',
                      width: 16,
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    cart.quantity.toString(),
                    style: primaryTextStyle.copyWith(
                      fontWeight: medium,
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  GestureDetector(
                    onTap: () {
                      cartProvider.reduceQuantity(cart.id);
                    },
                    child: Image.asset(
                      'assets/Min_Button.png',
                      width: 16,
                    ),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  cartProvider.removeCart(cart.id);
                },
                child: Image.asset(
                  'assets/Remove.png',
                  width: 10,
                ),
              ),
              SizedBox(
                width: 4,
              ),
              Text(
                'Remove',
                style: alertTextStyle.copyWith(
                  fontSize: 12,
                  fontWeight: light,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
