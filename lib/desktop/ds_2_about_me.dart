import 'package:flutter/material.dart';

import '../statics/key_holders.dart';
import '../statics/data_values.dart';
import '../theme/app_theme.dart';
import '../widgets/button_text.dart';
import '../widgets/text_pairs.dart';
import '../widgets/container_card.dart';
import '../widgets/container_banner.dart';
import '../widgets/frame_title.dart';

class DS2About extends StatelessWidget {
  const DS2About({Key? key}) : super(key: key);

  Widget bio(BuildContext context) {
    return SizedBox(
      //color: Colors.blue,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextPairs().type1(
                  title: DataValues.aboutBiographyTitle,
                  description: DataValues.aboutBiographyDescription,
                ),
                const SizedBox(height: 40.0),
                // ButtonTextSmall(
                //   text: 'View Full Biography >>',
                //   message: DataValues.biographyURL.toString(),
                //   url: DataValues.biographyURL,
                // ),
              ],
            ),
          ),
          SizedBox(width: MediaQuery.of(context).size.width * 0.08),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextPairs().type1(
                  title: DataValues.aboutFullNameTitle,
                  description: DataValues.aboutFullNameDescription,
                ),
                const SizedBox(height: 30.0),
                TextPairs().type1(
                  title: DataValues.aboutNwITitle,
                  description: DataValues.aboutNwIDescription,
                ),
                const SizedBox(height: 30.0),
                TextPairs().type1(
                  title: DataValues.aboutFnLTitle,
                  description: DataValues.aboutFnLDescription,
                ),
                const SizedBox(height: 30.0),
                TextPairs().type1(
                  title: DataValues.aboutGenderTitle,
                  description: DataValues.aboutGenderDescription,
                ),
                const SizedBox(height: 30.0),
                TextPairs().type1(
                  title: DataValues.aboutDobTitle,
                  description: DataValues.aboutDobDescription,
                ),
                const SizedBox(height: 30.0),
                TextPairs().type1(
                  title: DataValues.aboutLanguageTitle,
                  description: DataValues.aboutLanguageDescription,
                ),
              ],
            ),
          ),
          SizedBox(width: MediaQuery.of(context).size.width * 0.08),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextPairs().type1(
                  title: DataValues.aboutNationalityTitle,
                  description: DataValues.aboutNationalityDescription,
                ),
                const SizedBox(height: 30.0),
                TextPairs().type1(
                  title: DataValues.aboutLocationTitle,
                  description: DataValues.aboutLocationDescription,
                ),
                const SizedBox(height: 30.0),
                TextPairs().type1(
                  title: DataValues.aboutWorkDomainTitle,
                  description: DataValues.aboutWorkDomainDescription,
                ),
                const SizedBox(height: 30.0),
                TextPairs().type1(
                  title: DataValues.aboutHobbiesTitle,
                  description: DataValues.aboutHobbiesDescription,
                ),
                const SizedBox(height: 30.0),
                TextPairs().type1(
                  title: DataValues.aboutGoalTitle,
                  description: DataValues.aboutGoalDescription,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget titles(BuildContext context) {
    return SizedBox(
      //color: Colors.red,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ContainerCard().type1(
              title: DataValues.aboutStudentTitle,
              description: DataValues.aboutStudentDescription,
              image: 'assets/icons/student.png',
              message: DataValues.linkedinURL.toString(),
              url: DataValues.linkedinURL,
            ),
          ),
          SizedBox(width: MediaQuery.of(context).size.width * 0.03),
          Expanded(
            child: ContainerCard().type1(
              title: DataValues.aboutDeveloperTitle,
              description: DataValues.aboutDeveloperDescription,
              image: 'assets/icons/developer.png',
              message: DataValues.linkedinURL.toString(),
              url: DataValues.linkedinURL,
            ),
          ),
          SizedBox(width: MediaQuery.of(context).size.width * 0.03),
          Expanded(
            child: ContainerCard().type1(
              title: DataValues.aboutVolunteerTitle,
              description: DataValues.aboutVolunteerDescription,
              image: 'assets/icons/volunteer.png',
              message: DataValues.linkedinURL.toString(),
              url: DataValues.linkedinURL,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      key: KeyHolders.aboutKey,
      color: AppThemeData.backgroundGrey,
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const FrameTitle(
                title: DataValues.aboutTitle,
                description: DataValues.aboutDescription),
            const SizedBox(height: 40.0),
            bio(context),
            const SizedBox(height: 40.0),
            titles(context),
            // const SizedBox(height: 80.0),
            // Center(
            //   child: ContainerBanner().type1(
            //       isDesktop: true,
            //       title1: DataValues.aboutBanner,
            //       title2: DataValues.aboutBannerTitle,
            //       description: DataValues.aboutBannerWeb,
            //       image: 'logo',
            //       message: 'View Profiles',
            //       url: DataValues.profilesURL),
            // ),
          ],
        ),
      ),
    );
  }
}
