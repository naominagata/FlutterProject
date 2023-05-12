import 'package:flutter/material.dart';
import 'package:githubrepo/components/all.dart';
import 'package:githubrepo/constants/spacings.dart';
import 'package:githubrepo/constants/typography.dart';
import 'package:githubrepo/mocks/repositories_mock.dart';
import 'package:githubrepo/models/repository.dart';
import 'package:githubrepo/utils/extensions/theme_data_extensions.dart';
import 'package:intl/intl.dart';

import '../mocks/repositories_mock.dart';
import '../models/repository.dart';

class RepoDetailScreen extends StatefulWidget {
  const RepoDetailScreen({super.key});

  @override
  State<RepoDetailScreen> createState() => _RepoDetailScreenState();
}

class _RepoDetailScreenState extends State<RepoDetailScreen> {
  Repository repository = kRepositoriesMock.first;

  @override
  Widget build(BuildContext context) {
    var formatter = NumberFormat.compact(locale: 'pt_BR');

    return Scaffold(
      appBar: CustomAppBar(
          text: 'Detalhes'
      ),
      body: Center(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
               CustomAvatar(
                  avatarUrl: repository.owner?.avatar,
                   radius: Spacings.xl,
                ),
                const CustomText(
                  text:  'Repositorio', 
                  style: TypographyType.label
                  ),
                CustomText(
                  text:  '${repository.name}', 
                  style: TypographyType.title
                  ),
                   const CustomText(
                  text:  'Usuario', 
                  style: TypographyType.label
                  ),
                CustomText(
                  text:  '${repository.owner?.login}', 
                  style: TypographyType.title
                  ),
            ],
            ),
        ),
      ),
    );
  }

}