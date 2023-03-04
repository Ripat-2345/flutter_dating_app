import 'package:dating_app/src/features/likes_you/presentation/bloc/people_loved/people_loved_bloc.dart';
import 'package:dating_app/src/theme_manager/font_manager.dart';
import 'package:dating_app/src/theme_manager/style_manager.dart';
import 'package:dating_app/src/theme_manager/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common_widgets/people_loved_card_widget.dart';

class PeopleLovedScreen extends StatefulWidget {
  static const String routeName = '/people-loved';
  const PeopleLovedScreen({super.key});

  @override
  State<PeopleLovedScreen> createState() => _PeopleLovedScreenState();
}

class _PeopleLovedScreenState extends State<PeopleLovedScreen> {
  @override
  void initState() {
    super.initState();
    context.read<PeopleLovedBloc>().add(OnPeopleLovedEventCalled());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "People You\nLoved",
          style: getWhiteTextStyle(
            fontSize: FontSizeManager.f20,
            fontWeight: FontWeightManager.semiBold,
          ),
          textAlign: TextAlign.center,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              size: 30,
            ),
          ),
        ],
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(height: AppSize.s50),
          BlocBuilder<PeopleLovedBloc, PeopleLovedState>(
            builder: (context, state) {
              if (state is PeopleLovedLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (state is PeopleLovedLoaded) {
                final users = state.userMatch;
                return Expanded(
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return PeopleLovedCardWidget();
                    },
                    itemCount: users.length,
                  ),
                );
              }
              return Container();
            },
          ),
        ],
      ),
    );
  }
}
