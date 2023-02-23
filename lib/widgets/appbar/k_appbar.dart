import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../general/utils/colors.dart';
import '../../general/utils/text_style.dart';

class KAppBar extends ConsumerWidget {
  const KAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = FirebaseAuth.instance.currentUser;

    return AppBar(
     backgroundColor: KColor.header,
      automaticallyImplyLeading: false,
      elevation: 0,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hi, ${user?.displayName ?? "User"}",
            style: KTextStyle.title3.copyWith(color: KColor.white),
          ),
        ],
      ),
      actions: [
        InkWell(
          onTap: () {},
          child: const Padding(
            padding: EdgeInsets.only(right: 12.0),
            child:
                Icon(CupertinoIcons.bell, color: Colors.white, size: 30),
          ),
        )
      ],
    );
  }
}
