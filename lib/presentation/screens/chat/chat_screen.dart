import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:task/core/themes/colors.dart';
import 'package:task/core/utils/responsive.dart';
import 'package:task/presentation/componants/svgIcon.dart';

import '../../../core/routes/routes.dart';
import '../../../domain/models/chat_model/chat_model.dart';
import '../../componants/customtext.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  var messageController = TextEditingController();
  List<ChatModel> chat = [
    ChatModel(title: 'Hi, Whats You Name Firstname?', type: 'send'),
    ChatModel(title: 'Abdalla', type: 'recive'),
    ChatModel(title: 'Ok, Abdalla Whats Your Lastname?', type: 'send'),
    ChatModel(title: 'Salah', type: 'recive'),
    ChatModel(title: 'Mr Abdalla Salah, What\'s your Title?', type: 'send'),
    ChatModel(title: 'Front-end Developer', type: 'recive'),
    ChatModel(title: 'What Categories you will need expert In?', type: 'send'),
  ];
  bool value1 = false;
  bool value2 = false;
  bool value3 = false;
  bool value4 = false;
  bool value5 = false;

  int val = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SizedBox.expand(
          child: Column(
            children: [
              Expanded(
                child: ListView.separated(
                  reverse: false,
                  itemBuilder: (context, index) {
                    // log("conversation" +
                    //     cubit.coversationModel!.toJson().toString());
                    if (chat[index].type == 'send')
                      return buildReceiverMessage(chat[index].title ?? '');
                    return buildSendMessage(chat[index].title ?? '');

                    //var message = HomeLayoutCubit.get(context).messages[index];
                    // if(SocialLayoutCubit.get(context).userModel!.uid == message.senderId)
                    //   return buildSendMessage(message);
                    // return  buildReceiverMessage(message);
                  },
                  separatorBuilder: (context, index) => SizedBox(
                    height: 40.h,
                  ),
                  itemCount: chat.length,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              SizedBox(
                height: 150.0.h,
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: <Widget>[
                          Checkbox(
                            activeColor: AppColors.primiry,
                            shape: CircleBorder(),
                            hoverColor: AppColors.lightGrey,
                            value: value1,
                            onChanged: (value) {
                              setState(() {
                                value1 = value!;
                                print(value1);
                              });
                            },
                          ), //SizedBox
                          CustomText(
                            'Security',
                            color: AppColors.black,
                            fontsize: 14.fs,
                            weight: FontWeight.w400,
                          ),
                        ], //<Widget>[]
                      ),
                      Row(
                        children: <Widget>[
                          Checkbox(
                            activeColor: AppColors.primiry,
                            shape: CircleBorder(),
                            hoverColor: AppColors.lightGrey,
                            value: value2,
                            onChanged: (value) {
                              setState(() {
                                value2 = value!;
                                print(value2);
                              });
                            },
                          ), //SizedBox
                          CustomText(
                            'Supply Chain',
                            color: AppColors.black,
                            fontsize: 14.fs,
                            weight: FontWeight.w400,
                          ),
                        ], //<Widget>[]
                      ),
                      Row(
                        children: <Widget>[
                          Checkbox(
                            activeColor: AppColors.primiry,
                            shape: CircleBorder(),
                            hoverColor: AppColors.lightGrey,
                            value: value3,
                            onChanged: (value) {
                              setState(() {
                                value3 = value!;
                                print(value3);
                              });
                            },
                          ), //SizedBox
                          CustomText(
                            'Information Technology',
                            color: AppColors.black,
                            fontsize: 14.fs,
                            weight: FontWeight.w400,
                          ),
                        ], //<Widget>[]
                      ),
                      Row(
                        children: <Widget>[
                          Checkbox(
                            activeColor: AppColors.primiry,
                            shape: CircleBorder(),
                            hoverColor: AppColors.lightGrey,
                            value: value2,
                            onChanged: (value) {
                              setState(() {
                                value2 = value!;
                                print(value2);
                              });
                            },
                          ), //SizedBox
                          CustomText(
                            'Human Resource',
                            color: AppColors.black,
                            fontsize: 14.fs,
                            weight: FontWeight.w400,
                          ),
                        ], //<Widget>[]
                      ),
                      Row(
                        children: <Widget>[
                          Checkbox(
                            activeColor: AppColors.primiry,
                            shape: CircleBorder(),
                            hoverColor: AppColors.lightGrey,
                            value: value4,
                            onChanged: (value) {
                              setState(() {
                                value4 = value!;
                                print(value4);
                              });
                            },
                          ), //SizedBox
                          CustomText(
                            'Business Research',
                            color: AppColors.black,
                            fontsize: 14.fs,
                            weight: FontWeight.w400,
                          ),
                        ], //<Widget>[]
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: CustomText(
                          'Say Done, Or Press Send to Apply',
                          color: AppColors.grey,
                          fontsize: 14.0.fs,
                          weight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 50.h,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: AppColors.lightGrey,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      clipBehavior: Clip.hardEdge,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 3.0,
                          ),
                          SvgIcon(
                            svg: 'trans',
                            size: 20.0,
                            color: AppColors.lightGrey,
                          ),
                          SizedBox(
                            width: 3.0,
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: TextField(
                                onSubmitted: (s) {},
                                controller: messageController,
                                style: const TextStyle(
                                  color: Colors.black,
                                ),
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Type something…',
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 3.0,
                          ),
                          SvgIcon(
                            svg: 'voice',
                            size: 20.0,
                            color: AppColors.lightGrey,
                          ),
                          SizedBox(
                            width: 3.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        Routes.homeLayout,
                      );
                    },
                    child: SvgIcon(
                      svg: 'Send',
                      size: 20.0,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSendMessage(String message) => Row(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: Align(
              alignment: AlignmentDirectional.centerEnd,
              child: Container(
                width: 308.0,
                height: 48.0,
                decoration: BoxDecoration(
                    color: AppColors.primiry,
                    borderRadius: const BorderRadiusDirectional.only(
                        topStart: Radius.circular(10.0),
                        topEnd: Radius.circular(10.0),
                        bottomStart: Radius.circular(10.0),
                        bottomEnd: Radius.circular(10.0))),
                padding: EdgeInsets.symmetric(
                  horizontal: 10.w,
                  vertical: 5.h,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        message,
                        style:
                            TextStyle(fontSize: 14.fs, color: AppColors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            width: 10.0,
          ),
          Align(
            alignment: AlignmentDirectional.centerEnd,
            child: SvgIcon(
              svg: 'read',
            ),
          ),
        ],
      );
//MessageModel model
  Widget buildReceiverMessage(
    String message,
  ) =>
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgIcon(
                svg: 'robot',
                size: 20.0,
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Container(
                    width: 308.0,
                    height: 48.0,
                    decoration: BoxDecoration(
                        color: AppColors.lightGreybackgound.withOpacity(.1),
                        borderRadius: const BorderRadiusDirectional.only(
                            topStart: Radius.circular(10.0),
                            topEnd: Radius.circular(10.0),
                            bottomStart: Radius.circular(10.0),
                            bottomEnd: Radius.circular(10.0))),
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.w,
                      vertical: 5.h,
                    ),
                    child: Center(
                      child: Text(
                        message,
                        style: TextStyle(
                          fontSize: 14.fs,
                          color: AppColors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      );
}
