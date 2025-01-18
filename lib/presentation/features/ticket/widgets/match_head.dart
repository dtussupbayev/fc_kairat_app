import 'package:fc_kairat_app/presentation/common/widgets/section_title.dart';
import 'package:fc_kairat_app/presentation/themes/theme.dart';
import 'package:flutter/material.dart';

class MatchHead extends StatelessWidget {
  const MatchHead({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: AppColors.mainYellow,
            width: 6.0,
          ),
        ),
      ),
      child: SectionTitle(
        text: 'Матчи и результаты',
      ),
    );
  }
}
