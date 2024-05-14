part of '../../dashboard.dart';

class _DesktopHomeView extends StatelessWidget {
  const _DesktopHomeView({required this.containerHeight, required this.ref});

  final double containerHeight;
  final WidgetRef ref;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: containerHeight,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 100),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Flexible(
                  flex: 10,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            flex: 2,
                            child: Text(
                              "Fariq Naufal Diaz".toUpperCase(),
                              style: GoogleFonts.josefinSans(
                                fontSize: 40.0,
                                fontWeight: FontWeight.w900,
                                height: 1.3,
                                letterSpacing: 2.3,
                              ),
                            ),
                          ),
                          const Flexible(
                            child: SizedBox(height: 10.0),
                          ),
                          Flexible(
                            flex: 2,
                            child: Row(
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
                          const SizedBox(
                            height: 10.0,
                          ),
                          Flexible(
                            flex: 2,
                            child: Row(
                              children: [
                                Text(
                                  "25 Years Old",
                                  style: TextStyle(
                                    color: ref.watch(themeProvider).isDarkMode
                                        ? kdarkSecondaryColor
                                        : kSecondaryColor,
                                    fontSize: 20.0,
                                    height: 1.0,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Container(
                        height: 250,
                        width: 250,
                        margin: const EdgeInsets.all(30),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage(AppConstants.profilepict),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ],
                  ),
                ),
                const Flexible(
                  child: SizedBox(height: 15.0),
                ),
                Flexible(
                  flex: 3,
                  child: Consumer(builder: (context, mouseref, _) {
                    return SizedBox(
                      height: 65,
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
                                    width: mouseref
                                            .watch(mouseProvider)
                                            .ishovered(index)
                                        ? 75
                                        : 55,
                                    height: mouseref
                                            .watch(mouseProvider)
                                            .ishovered(index)
                                        ? 55
                                        : 55,
                                    margin: mouseref
                                            .watch(mouseProvider)
                                            .ishovered(index)
                                        ? const EdgeInsets.all(0)
                                        : const EdgeInsets.all(10),
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
                  child: SizedBox(
                    height: 15.0,
                  ),
                ),
                Flexible(
                    child: Text(
                  "Hello, my name is Fariq Naufal Diaz, I'm a Flutter Developer",
                  style: GoogleFonts.josefinSans(
                    fontWeight: FontWeight.bold,
                    height: 1,
                    fontSize: 24.0,
                  ),
                )),
                const Flexible(child: SizedBox(height: 16.0)),
                Flexible(
                    child: Text(
                  "I graduated from the faculty of informatics engineering in 2020 at Pradita University. I have been developing Flutter Apps for 2 years.",
                  style: TextStyle(
                      color: ref.watch(themeProvider).isDarkMode
                          ? kdarkSecondaryColor
                          : kSecondaryColor,
                      height: 1,
                      fontSize: 19,
                      fontWeight: FontWeight.bold),
                )),
                const Flexible(
                    child: SizedBox(
                  height: 40.0,
                )),
                const Flexible(
                  child: Text(
                    "Technologies I have worked with",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      height: 0.5,
                    ),
                  ),
                ),
                const Flexible(
                  flex: 1,
                  child: SizedBox(
                    height: 25.0,
                  ),
                ),
                Flexible(
                    flex: 5,
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 100),
                      child: Wrap(
                        direction: Axis.horizontal,
                        children: TechnologyConstants.technologyLearned
                            .map(
                              (e) => MouseRegion(
                                cursor: SystemMouseCursors.alias,
                                child: Container(
                                  width: 150,
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
                                  child: InkWell(
                                    onTap: () {},
                                    child: Center(
                                      child: Row(
                                        children: [
                                          SizedBox(
                                              width: 30,
                                              height: 30,
                                              child: Image.asset(e.logo)),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          SizedBox(
                                            width: 80,
                                            child: Text(
                                              e.name,
                                              overflow: TextOverflow.ellipsis,
                                              style: const TextStyle(
                                                fontSize: 18.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            )
                            .toList(),
                      ),
                    )),
              ],
            ),
          ),
        ));
  }
}
