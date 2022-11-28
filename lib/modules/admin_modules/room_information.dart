import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubit/app_cubit.dart';
import '../../cubit/app_state.dart';
import '../../shared/constants/constants.dart';

class RoomInformation extends StatelessWidget {
  const RoomInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return  BlocConsumer<AppCubit,AppState>(
        listener:(context,state){} ,
        builder:(context,state)
        {

          var cubit=AppCubit.get(context);
          Size size=MediaQuery.of(context).size;
          return Scaffold(
            body: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children:
                [
                  Padding(
                    padding:EdgeInsets.symmetric(
                        horizontal:size.width*.1,
                        vertical:size.height*.07
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration
                            (
                              color:blue5,
                              borderRadius: BorderRadius.circular(25)
                          ),
                          child: IconButton(
                              onPressed: ()
                              {
                                Navigator.pop(context);
                              },
                              icon:Icon(Icons.arrow_back,
                                color:Colors.white,
                                size: 25,)
                          ),
                        ),

                        Padding(
                          padding:EdgeInsets.only(top:7.0,left:size.width*.12),
                          child: Text('Room #207',style: TextStyle(
                              color:primaryColor,
                              fontWeight:FontWeight.w600 ,
                              fontSize: 22

                          ),),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20,right: 10),
                        child: Image.asset(
                          'images/info.png',
                          width: size.width * .05,
                          height: size.height * .08,
                        ),

                      ),
                      Text('Room Information',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: blue3
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: size.width*.08),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.grey.shade300,
                              ),
                              width: size.width*.2,
                              height: size.height*.1,
                              child: Column(
                                children: [
                                  Image.asset(
                                    'images/bed.png',
                                    width: size.width * .09,
                                    height: size.height * .06,
                                  ),
                                  Text('2/4 bed',
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),

                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: size.width*.02),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                  color: Colors.grey.shade300
                              ),
                              width: size.width*.2,
                              height: size.height*.1,
                              child: Column(
                                children: [
                                  Image.asset(
                                    'images/dolar.png',
                                    width: size.width * .09,
                                    height: size.height * .06,
                                  ),
                                  Text('120\$',
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),

                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: size.width*.09),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                  color: Colors.grey.shade300
                              ),
                              width: size.width*.2,
                              height: size.height*.1,
                              child: Column(
                                children: [
                                  Image.asset(
                                    'images/roomno.png',
                                    width: size.width * .09,
                                    height: size.height * .06,
                                  ),
                                  Text('#207',
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),

                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20,right: 10),
                        child: Image.asset(

                          'images/infooo.png',
                          width: size.width * .05,
                          height: size.height * .08,

                        ),

                      ),
                      Text('Patient Information',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: blue3
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          );
        }
    );
  }
}
