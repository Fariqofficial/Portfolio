part of '../dashboard.dart';

final List<FooterItem> footerItems = [
  FooterItem(
      iconData: Icons.location_on,
      title: "Address",
      text1: "Slipi, Jakarta",
      text2: "Indonesia",
      onTap: () {
        Utilty.openMyLocation();
      }),
  FooterItem(
      iconData: Icons.phone,
      title: "Phone",
      text1: "085156648147",
      text2: "",
      onTap: () {
        Utilty.openMyPhoneNo();
      }),
  FooterItem(
      iconData: Icons.mail,
      title: "Email",
      text1: "fariqn.diaz22@gmail.com",
      text2: "",
      onTap: () {
        Utilty.openMail();
      }),
  FooterItem(
      title: "Whatsapp",
      text1: "085156648147",
      text2: "",
      iconData: Icons.sms_outlined,
      onTap: () {
        Utilty.openWhatsapp();
      }),
];

class _Footer extends ConsumerWidget {
  const _Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ScreenHelper(
      desktop: _buildUi(kDesktopMaxWidth, context, ref),
      tablet: _buildUi(kTabletMaxWidth, context, ref),
      mobile: _buildUi(getMobileMaxWidth(context), context, ref),
    );
  }
}

Widget _buildUi(double width, BuildContext context, WidgetRef ref) {
  final isDarkMode = ref.watch(themeProvider).isDarkMode;
  final iconColor = isDarkMode ? kdarkSecondaryColor : kSecondaryColor;
  final titleColor = isDarkMode ? kwhiteColor : kSecondaryColor;
  return Center(
    child: ResponsiveWrapper(
      maxWidth: width,
      minWidth: width,
      defaultScale: false,
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 50.0),
                child: Wrap(
                  spacing: 20.0,
                  runSpacing: 20.0,
                  children: footerItems
                      .map(
                        (footerItem) => MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: InkWell(
                            onTap: footerItem.onTap,
                            child: SizedBox(
                              width: ScreenHelper.isMobile(context)
                                  ? constraints.maxWidth / 2.0 - 20.0
                                  : constraints.maxWidth / 4.0 - 20.0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        footerItem.iconData,
                                        color: iconColor,
                                        size: 28,
                                      ),
                                      const SizedBox(
                                        width: 15.0,
                                      ),
                                      Text(
                                        footerItem.title,
                                        style: GoogleFonts.josefinSans(
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.w700,
                                          color: titleColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10.0,
                                  ),
                                  RichText(
                                    textAlign: TextAlign.start,
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "${footerItem.text1}\n",
                                          style: TextStyle(
                                              height: 1.8, color: titleColor),
                                        ),
                                        TextSpan(
                                            text: "${footerItem.text2}\n",
                                            style: TextStyle(color: titleColor))
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
            ],
          );
        },
      ),
    ),
  );
}
