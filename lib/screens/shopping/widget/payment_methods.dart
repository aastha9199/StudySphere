import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PaymentMethods extends StatefulWidget {
  const PaymentMethods({super.key});

  @override
  State<PaymentMethods> createState() => _PaymentMethodsState();
}

class _PaymentMethodsState extends State<PaymentMethods> {
  Methods _paymentMethod = Methods.netBanking;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RadioListTile<Methods>(
          value: Methods.netBanking,
          groupValue: _paymentMethod,
          onChanged: (Methods? value) {
            setState(() {
              _paymentMethod = value!;
            });
          },
          title: const Text("Net Banking"),
        ),
        RadioListTile<Methods>(
          value: Methods.cards,
          groupValue: _paymentMethod,
          onChanged: (Methods? value) {
            setState(() {
              _paymentMethod = value!;
            });
          },
          title: const Text("Credit/Debit Card"),
        )
      ],
    );
  }
}

enum Methods { netBanking, cards }
