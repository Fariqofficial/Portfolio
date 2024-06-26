part of '../../dashboard.dart';

class _TabletHomeView extends StatelessWidget {
  const _TabletHomeView({required this.containerHeight, required this.ref});

  final double containerHeight;
  final WidgetRef ref;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: containerHeight,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                const Flexible(
                  flex: 2,
                  child: SizedBox(height: 55.0),
                ),
                Flexible(
                  flex: 2,
                  child: Text(
                    "Fariq Naufal Diaz".toUpperCase(),
                    style: GoogleFonts.josefinSans(
                      fontSize: 22.0,
                      fontWeight: FontWeight.w900,
                      height: 1.3,
                      letterSpacing: 2.3,
                    ),
                  ),
                ),
                const Flexible(
                  flex: 1,
                  child: SizedBox(height: 15.0),
                ),
                Flexible(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Flutter Developer  |",
                        style: TextStyle(
                            color: ref.watch(themeProvider).isDarkMode
                                ? kdarkSecondaryColor
                                : kSecondaryColor,
                            fontSize: 20.0,
                            height: 1.0,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(width: 5),
                      Icon(
                        Icons.location_on,
                        color: ref.watch(themeProvider).isDarkMode
                            ? kdarkSecondaryColor
                            : kSecondaryColor,
                        size: 24,
                      ),
                      const SizedBox(width: 2),
                      Text(
                        "Jakarta, Indonesia",
                        style: TextStyle(
                            color: ref.watch(themeProvider).isDarkMode
                                ? kdarkSecondaryColor
                                : kSecondaryColor,
                            fontSize: 20.0,
                            height: 1.0,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                const Flexible(
                  flex: 1,
                  child: SizedBox(height: 25.0),
                ),
                Flexible(
                  flex: 3,
                  child: Consumer(builder: (context, mouseref, _) {
                    return SizedBox(
                      height: 50,
                      child: ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: AppConstants.socialLoginDatas.length,
                          itemBuilder: (context, index) {
                            return MouseRegion(
                              cursor: SystemMouseCursors.alias,
                              onEnter: (event) {
                                mouseref
                                    .watch(mouseProvider)
                                    .setashovered(index);
                              },
                              onExit: (event) {
                                mouseref.watch(mouseProvider).setasnothovered();
                              },
                              child: InkWell(
                                onTap:
                                    AppConstants.socialLoginDatas[index].onTap,
                                child: Card(
                                  elevation: mouseref
                                          .watch(mouseProvider)
                                          .ishovered(index)
                                      ? 55
                                      : 0,
                                  color: mouseref
                                          .watch(mouseProvider)
                                          .ishovered(index)
                                      ? Colors.blue.shade900
                                      : Colors.white,
                                  borderOnForeground: false,
                                  child: Container(
                                    width: 45,
                                    height: 45,
                                    margin: const EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                      image: AssetImage(
                                        AppConstants
                                            .socialLoginDatas[index].title,
                                      ),
                                      fit: BoxFit.fill,
                                    )),
                                  ),
                                ),
                              ),
                            );
                          }),
                    );
                  }),
                ),
                const Flexible(
                  flex: 1,
                  child: SizedBox(
                    height: 15.0,
                  ),
                ),
                Flexible(
                    flex: 2,
                    child: Text(
                      "Hello my name is Fariq Naufal Diaz, I'm A Flutter Developer",
                      style: GoogleFonts.josefinSans(
                        fontWeight: FontWeight.bold,
                        height: 1.3,
                        fontSize: 22.0,
                      ),
                    )),
                const Flexible(flex: 1, child: SizedBox(height: 15.0)),
                Flexible(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Text(
                      "I graduated from the faculty of informatics engineering in 2020 at Pradita University. I have been developing Flutter Apps for 2 years.",
                      style: TextStyle(
                          color: ref.watch(themeProvider).isDarkMode
                              ? kdarkSecondaryColor
                              : kSecondaryColor,
                          height: 1.5,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const Flexible(
                  flex: 1,
                  child: SizedBox(height: 30.0),
                ),
                const Flexible(
                  flex: 1,
                  child: Text(
                    "Technologies I have worked with",
                    style: TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold, height: 1),
                  ),
                ),
                const Flexible(
                  flex: 1,
                  child: SizedBox(
                    height: 20.0,
                  ),
                ),
                Flexible(
                  flex: 5,
                  child: Wrap(
                    direction: Axis.horizontal,
                    children: TechnologyConstants.technologyLearned
                        .map((e) => MouseRegion(
                              cursor: SystemMouseCursors.alias,
                              child: Container(
                                width: 120,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: ref.watch(themeProvider).isDarkMode
                                      ? Colors.grey[800]
                                      : Colors.grey[200],
                                  borderRadius: BorderRadius.circular(4.0),
                                ),
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 5),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8.0, vertical: 6),
                                child: Center(
                                  child: Row(
                                    children: [
                                      SizedBox(
                                          width: 20,
                                          height: 20,
                                          child: Image.asset(e.logo)),
                                      const SizedBox(width: 5),
                                      SizedBox(
                                        width: 72,
                                        child: Text(
                                          e.name,
                                          overflow: TextOverflow.ellipsis,
                                          style: const TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ))
                        .toList(),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
