import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:student_managmane_dashboard/helper_comp/crad_clipper.dart';

class FeeInstallmentItem extends StatelessWidget {
  const FeeInstallmentItem(
      {super.key, required this.installment, required this.installmentNumber});
  final String installment;
  final int installmentNumber;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;

    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Stack(children: [
        Container(
          height: height * 0.12,
          width: width * 0.9,
          decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                    blurRadius: 2, color: Colors.grey, offset: Offset(1, 1))
              ],
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20))),
          alignment: Alignment.bottomCenter,
          child: const Padding(
            padding: EdgeInsets.only(bottom: 15),
          ),
        ),
        ClipPath(
          clipper: CardClipper(),
          child: Container(
            alignment: Alignment.center,
            height: height * 0.12,
            width: width * 0.3,
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 38, 64, 125),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: FittedBox(
              fit: BoxFit.fill,
              child: Text(
                textAlign: TextAlign.center,
                installment,
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
        Positioned(
          left: width * 0.26,
          top: height * 0.03,
          child: Container(
            height: height * 0.06,
            width: width * 0.06,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 38, 64, 125),
              shape: BoxShape.circle,
            ),
          ),
        ),
        Positioned(
            left: width * 0.55,
            child: Container(
              height: height * 0.12,
              width: width * 0.35,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 38, 64, 125),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(width * 0.12),
                      topLeft: Radius.circular(width * 0.12),
                      topRight: const Radius.circular(20),
                      bottomRight: const Radius.circular(20))),
            )),
        Positioned(
            left: width * 0.7,
            top: height * 0.02,
            child: Container(
              alignment: Alignment.center,
              height: height * 0.08,
              width: width * 0.11,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  color: Colors.white,
                  shape: BoxShape.circle),
              child: Text(
                installmentNumber.toString(),
                textAlign: TextAlign.center,
                style: const TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0), fontSize: 18),
              ),
            ))
      ]),
    );
  }
}
