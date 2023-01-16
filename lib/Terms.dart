import 'package:booster/Text.dart';
import 'package:booster/size_config.dart';
import 'package:flutter/material.dart';


class Terms extends StatefulWidget {
  const Terms({ Key? key }) : super(key: key);

  @override
  State<Terms> createState() => _TermsState();
}

class _TermsState extends State<Terms> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Textt.text('Terms & Conditions', Colors.white, 5, FontWeight.w700, 0, 0, 0, 0),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.2*SizeConfig.widthMultiplier, vertical: 3*SizeConfig.heightMultiplier),
        child: Column(
          children: [
            Textt.text('Terms of Use, General Terms and Authorizations', Colors.black, 4, FontWeight.w700, 0, 0, 2, 1),
            Textt.text('The term “Purchase of Sim” means procuring/acquiring connection to the network of PMCL by a customer for availing telecommunication and other related services from PMCL.\n\n\nSIM always remains the property of PMCL and by issuing SIM to customer, only rights to use are given and no ownership is transferred to the customer in any manner, whatsoever. The customer is bound to return the SIM to PMCL in case he stops using service or agreement is terminated or he changes the network through MNP\n\n\n\nBill date for all postpaid subscribers will be changed to 2nd of every month in 2021. Due to this change, customers will get a separate bill for difference in days for execution month . Min/MB charging will be prorated as per package. Details of applicable Taxes/charges on usage and recharge in Pakistan and AJK are given below:Advance income tax rate is @15% on each recharge.Rate of sales tax in Federal Territory of Islamabad is 16%', Color.fromARGB(255, 88, 88, 88), 3.8, FontWeight.w500, 0, 0, 0, 0),
          ],
        ),
      ),
      
    );
  }
}