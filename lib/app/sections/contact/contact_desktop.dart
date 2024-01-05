import 'package:flutter/material.dart';
import 'package:mysite/app/utils/contact_utils.dart';
import 'package:mysite/app/widgets/custom_text_heading.dart';
import 'package:mysite/changes/links.dart';
import 'package:mysite/changes/strings.dart';
import 'package:mysite/core/color/colors.dart';
import 'package:mysite/core/configs/configs.dart';
import 'package:mysite/core/util/constants.dart';
import 'package:sizer/sizer.dart';

class ContactDesktop extends StatelessWidget {
  const ContactDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: size.width / 9),
          child: Column(
            children: [
              const CustomSectionHeading(text: "\nKontak Saya"),
              Space.y(0.5.w)!,
              const CustomSectionSubHeading(
                text:
                "Hubungi saya pada kontak di bawah ini.",
              ),
              Space.y(2.w)!,
            ],
          ),
        ),
        Container(
          // padding: Space.all(1, 1),
          // padding: EdgeInsets.symmetric(horizontal: AppDimensions.normalize(30)),
          padding: EdgeInsets.symmetric(horizontal: size.width / 3),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(size.width * 0.02).copyWith(bottom: 10),
                decoration: BoxDecoration(
                  gradient: theme.contactCard,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [blackColorShadow],
                ),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () => openURL(whatsapp),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 20),
                        decoration: BoxDecoration(
                            gradient: buttonGradi,
                            // border: Border.all(
                            //     width: 2.0, color: theme.primaryColor),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Text(
                          'Hubungi',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: textColor,
                          ),
                        ),
                      ),
                    ),
                    Container(color: Colors.white.withOpacity(0.2), height: 1),
                    Space.y(1.w)!,
                    Wrap(
                        alignment: WrapAlignment.center,
                        runSpacing: 50,
                        children: contactUtils
                            .asMap()
                            .entries
                            .map((e) => IconButton(
                                  icon: Image.network(
                                    e.value.icon,
                                    color: theme.textColor,
                                  ),
                                  onPressed: () => openURL(e.value.url),
                                  highlightColor: Colors.white54,
                                  iconSize: 21,
                                ))
                            .toList()),
                    // Space.y(1.w)!,
                  ],
                ),
              ),
              // Space.y!,
            ],
          ),
        ),
      ],
    );
  }
}
