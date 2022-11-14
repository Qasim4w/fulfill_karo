import 'package:another_stepper/another_stepper.dart';
import 'package:another_stepper/dto/stepper_data.dart';
import 'package:flutter/material.dart';
import 'package:fulfill_karo/pages/layout/constant.dart';

class ConsignmentTracking extends StatefulWidget {
  static const String id="Consignment Tracking";
  const ConsignmentTracking({Key? key}) : super(key: key);

  @override
  State<ConsignmentTracking> createState() => _ConsignmentTrackingState();
}

class _ConsignmentTrackingState extends State<ConsignmentTracking> {
  List<StepperData> stepperData = [
    StepperData(
      title: "Booked",
      subtitle: "",
    ),
    StepperData(
      title: "Recieved",
      subtitle: "",
    ),
    StepperData(
      title: "In Transit ",
      subtitle: "",
    ),
    StepperData(
      title: "Out For Delivery",
      subtitle: " ",
    ),
    StepperData(
      title: "Delivered",
      subtitle: "",
    ),
  ];

  @override
  void initState() {
    super.initState();
  }

  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Row(
            children: [
              Mydrawer.myDrawer(context),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      "Shipment Tracking ",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Container(
                      height: 180,
                      width: 600,
                      child: AnotherStepper(
                        stepperList: stepperData,
                        stepperDirection: Axis.horizontal,
                        horizontalStepperHeight: 100,
                        dotWidget: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: const BoxDecoration(
                              color: Colors.green,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          child: const Icon(Icons.delivery_dining_rounded,
                              color: Colors.white),
                        ),
                        activeBarColor: Colors.green,
                        inActiveBarColor: Colors.grey,
                        activeIndex: activeIndex,
                        barThickness: 8,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          activeIndex++;
                        });
                      },
                      child: Text("Next"))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
