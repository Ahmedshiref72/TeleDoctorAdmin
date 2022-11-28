import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubit/app_cubit.dart';
import '../../cubit/app_state.dart';
import '../../shared/component/components.dart';
import '../../shared/constants/constants.dart';
import 'checkout_screen.dart';
import 'home_screen.dart';

class ReceiptScreen extends StatelessWidget {
  const ReceiptScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var roomNo = TextEditingController();
    return BlocConsumer<AppCubit, AppState>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = AppCubit.get(context);
          Size size = MediaQuery.of(context).size;
          return Scaffold(
            body: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.only(top: 7.0, left: size.width * .24),
                          child: Text(
                            'Check Out',
                            style: TextStyle(
                                color: primaryColor,
                                fontWeight: FontWeight.w600,
                                fontSize: 22),
                          ),
                        ),

                        //patient name
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: defaultFormFeild3(
                        controller: roomNo, labelText: 'Enter Room No'),
                  ),
                  Padding(
                      padding:
                      const EdgeInsets.only(left: 20, right: 20, top: 20),
                      child:defaultButton2(
                          string: 'Search',
                          function: ()
                          {

                          }
                      )

                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 25,
                        left: 10, right: 10),
                    child: Card(
                      elevation: 40,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                              Radius.circular(30))),
                      //  color: Colors.blue,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 12, left: 10, bottom: 12),
                        child: Container(
                          child: Row(
                            children: [
                              Stack(
                                alignment: AlignmentDirectional
                                    .bottomEnd,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.grey,
                                    radius: 36,
                                    backgroundImage:  AssetImage('images/profile.png'),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            'Shefo',
                                            style: TextStyle(
                                                fontSize: 16.0,
                                                fontWeight:
                                                FontWeight
                                                    .bold),
                                            maxLines: 1,
                                            overflow: TextOverflow
                                                .ellipsis,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            'Enter Data : 25,Nov 2022',
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 13.0,
                                              fontWeight:
                                              FontWeight.w200,
                                            ),
                                            maxLines: 1,
                                            overflow: TextOverflow
                                                .ellipsis,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Room No: 3',
                                        ),
                                        Spacer(),
                                        TextButton(
                                          child:
                                          Text('Check Out'),
                                          onPressed: () {
                                            navigateTo(context,
                                                CheckOutScreen());
                                          },
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 25,
                        left: 10, right: 10),
                    child: Card(
                      elevation: 40,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                              Radius.circular(30))),
                      //  color: Colors.blue,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 12, left: 10, bottom: 12),
                        child: Container(
                          child: Row(
                            children: [
                              Stack(
                                alignment: AlignmentDirectional
                                    .bottomEnd,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.grey,
                                    radius: 36,
                                    backgroundImage:  AssetImage('images/profile.png'),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            'Shefo',
                                            style: TextStyle(
                                                fontSize: 16.0,
                                                fontWeight:
                                                FontWeight
                                                    .bold),
                                            maxLines: 1,
                                            overflow: TextOverflow
                                                .ellipsis,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            'Enter Data : 25,Nov 2022',
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 13.0,
                                              fontWeight:
                                              FontWeight.w200,
                                            ),
                                            maxLines: 1,
                                            overflow: TextOverflow
                                                .ellipsis,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Room No: 3',
                                        ),
                                        Spacer(),
                                        TextButton(
                                          child:
                                          Text('Check Out'),
                                          onPressed: () {
                                            navigateTo(context,
                                                CheckOutScreen());
                                          },
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 25,
                        left: 10, right: 10),
                    child: Card(
                      elevation: 40,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                              Radius.circular(30))),
                      //  color: Colors.blue,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 12, left: 10, bottom: 12),
                        child: Container(
                          child: Row(
                            children: [
                              Stack(
                                alignment: AlignmentDirectional
                                    .bottomEnd,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.grey,
                                    radius: 36,
                                    backgroundImage:  AssetImage('images/profile.png'),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            'Shefo',
                                            style: TextStyle(
                                                fontSize: 16.0,
                                                fontWeight:
                                                FontWeight
                                                    .bold),
                                            maxLines: 1,
                                            overflow: TextOverflow
                                                .ellipsis,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            'Enter Data : 25,Nov 2022',
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 13.0,
                                              fontWeight:
                                              FontWeight.w200,
                                            ),
                                            maxLines: 1,
                                            overflow: TextOverflow
                                                .ellipsis,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Room No: 3',
                                        ),
                                        Spacer(),
                                        TextButton(
                                          child:
                                          Text('Check Out'),
                                          onPressed: () {
                                            navigateTo(context,
                                                CheckOutScreen());
                                          },
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
          );
        });
  }
}
