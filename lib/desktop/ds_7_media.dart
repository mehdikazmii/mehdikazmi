import 'package:flutter/material.dart';

import '../statics/data_values.dart';
import '../statics/key_holders.dart';
import '../theme/app_theme.dart';
import '../widgets/container_banner.dart';
import '../widgets/container_card.dart';
import '../widgets/frame_title.dart';

class DS7Media extends StatelessWidget {
  const DS7Media({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      key: KeyHolders.mediaKey,
      color: AppThemeData.backgroundGrey,
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const FrameTitle(
                title: DataValues.mediaTitle,
                description: DataValues.mediaDescription),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: ContainerCard().type3(
                    image: 'insta',
                    title: DataValues.mediaOrg1Title,
                    role: DataValues.mediaOrg1Role,
                    years: DataValues.mediaOrg1Years,
                    values: DataValues.mediaOrg1Vales,
                    message: DataValues.instagramURL.toString(),
                    url: DataValues.instagramURL,
                    isButtonEnabled: true,
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                Expanded(
                  child: ContainerCard().type3(
                    image: 'Youtube',
                    title: DataValues.mediaOrg2Title,
                    role: DataValues.mediaOrg2Role,
                    years: DataValues.mediaOrg2Years,
                    values: DataValues.mediaOrg2Vales,
                    message: DataValues.instagramURL.toString(),
                    url: DataValues.instagramURL,
                    isButtonEnabled: false,
                  ),
                ),
              ],
            ),
            // const SizedBox(height: 80.0),
            // Center(
            //   child: ContainerBanner().type1(
            //     isDesktop: true,
            //     title1: DataValues.mediaBanner,
            //     title2: DataValues.mediaBannerTitle,
            //     description: DataValues.mediaBannerWeb,
            //     image: 'image',
            //     message: 'media Profile',
            //     url: DataValues.mediaURL,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
