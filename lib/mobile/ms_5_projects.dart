import 'package:flutter/material.dart';

import '../statics/data_values.dart';
import '../statics/key_holders.dart';
import '../theme/app_theme.dart';
import '../widgets/container_card.dart';
import '../widgets/frame_title.dart';

class MS5Projects extends StatelessWidget {
  const MS5Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      key: KeyHolders.projectsKey,
      color: AppThemeData.backgroundGrey,
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const FrameTitle(
                title: DataValues.projectsTitle,
                description: DataValues.projectsDescription),
            const SizedBox(height: 30.0),
            ContainerCard().type3(
              image: 'logo',
              title: DataValues.projectsOrg1Title,
              role: DataValues.projectsOrg1Role,
              years: DataValues.projectsOrg1Years,
              values: DataValues.projectsOrg1Vales,
              message: DataValues.lateNightStudentURL.toString(),
              url: DataValues.lateNightStudentURL,
              isButtonEnabled: true,
            ),
            const SizedBox(height: 20.0),
            ContainerCard().type3(
              image: 'logo',
              title: DataValues.projectsOrg2Title,
              role: DataValues.projectsOrg2Role,
              years: DataValues.projectsOrg2Years,
              values: DataValues.projectsOrg2Vales,
              message: DataValues.projectsURL.toString(),
              url: DataValues.projectsURL,
              isButtonEnabled: true,
            ),
          ],
        ),
      ),
    );
  }
}
