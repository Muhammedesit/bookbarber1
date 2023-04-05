import 'package:flutter/material.dart';
import 'package:salon_booking/Calendar/Calendar_main.dart';
import 'package:salon_booking/screens/detail_screen.dart';
import 'package:salon_booking/Calendar/Calendar_main.dart';

const stylistData = [
  {
    'Name': 'Nida Zenginoğlu',
    'Employee': 'Ayşe',
    'Date': 'June 6',
    'Time': '1 pm',
    'Service': 'Hair',
    'bgColor': Color(0xffFFF0EB),
  },
  {
    'Name': 'Max Robertson',
    'Employee': 'Eda',
    'Date': 'June 6',
    'Time': '3 pm',
    'Service': 'Hair',
    'bgColor': Color(0xffEBF6FF),
  },
  {
    'Name': 'Beth Watson',
    'Employee': 'June 7',
    'Date': '4.7',
    'Time': '09 am',
    'Service': 'Hair',
    'bgColor': Color(0xffFFF3EB),
  }
];

class EmployeeHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0c0c0c),
      appBar: AppBar(
        backgroundColor: const Color(0xff121421),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
        ],
        title: const Text(
          "Home Page",
          style: TextStyle(),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(50),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          'Appointments ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                        StylistCard(stylistData[0]),
                        StylistCard(stylistData[1]),
                        StylistCard(stylistData[2]),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class StylistCard extends StatelessWidget {
  final stylist;
  StylistCard(this.stylist);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: stylist['bgColor'],
      ),
      child: Stack(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 40, left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  stylist['Name'],
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [

                    Text('Customer :',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),

                    ),
                    Text(stylist['Employee'],
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                      ),

                    ), ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [

                    Text('Date :',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),

                    ),
                    Text(stylist['Date'],
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                      ),

                    ), ],

                ),
                SizedBox(
                  height: 5,
                ),

                Row(
                  children: [

                    Text('Time :',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),

                    ),
                    Text(stylist['Time'],
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                      ),

                    ), ],

                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [

                    Text('Service :',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),

                    ),
                    Text(stylist['Service'],
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                      ),

                    ), ],

                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: <Widget>[],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
