import 'package:dating_app/src/features/authentication/data/data_user_account_local.dart';
import 'package:dating_app/src/features/authentication/domain/user_account.dart';
import 'package:dating_app/src/theme_manager/values_manager.dart';
import 'package:flutter/material.dart';

import '../../../common_widgets/explore_people_app_bar_widget.dart';
import '../../../common_widgets/explore_people_button_widget.dart';
import '../../../common_widgets/match_card_widget.dart';

class ExplorePeopleScreen extends StatefulWidget {
  static const String routeName = '/explore-people';
  const ExplorePeopleScreen({super.key});

  @override
  State<ExplorePeopleScreen> createState() => _ExplorePeopleScreenState();
}

class _ExplorePeopleScreenState extends State<ExplorePeopleScreen> {
  UserAccount? account;

  getDataUserAccount() async {
    final data = await DataUserAccountLocal.getDataUserAccountFromStorage();
    final result = UserAccount.fromMap(data);
    account = result;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getDataUserAccount();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: AppSize.s50,
          left: AppSize.s24,
          right: AppSize.s24,
        ),
        child: Column(
          children: [
            ExplorePeopleAppBarWidget(
              imagePath: account!.imageProfile,
            ),
            const SizedBox(height: AppSize.s50),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: MatchCardWidget(),
                  ),
                  const SizedBox(height: AppSize.s50),
                  ExplorePeopleButtonWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
