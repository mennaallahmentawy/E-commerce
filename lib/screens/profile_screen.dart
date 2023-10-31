import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/widget/custom_list_tile.dart';
import 'package:untitled/widget/title_text.dart';

import '../providers/theme_provider.dart';
import '../widget/subtitle_text.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Theme.of(context).cardColor,
                        border: Border.all(
                            color: Theme.of(context).colorScheme.background,
                            width: 3,
                        ),
                        image: const DecorationImage(
                          image: AssetImage(
                            " ",
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                     const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TitlesTextWidget(label: "User Name"),
                        SubtitleTextWidget(label: "username@gmail.com"),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12.0,
                  vertical: 24,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TitlesTextWidget(label: "General"),
                    CustomListTile(
                      imagePath: "asset/profile/order_svg.png",
                      text: "All orders",
                      function: ()  {

                      },
                    ),
                    CustomListTile(
                      imagePath: "asset/profile/address.png",
                      text: "Address",
                      function: () {},
                    ),

                    CustomListTile(
                      imagePath: "asset/profile/recent.png",
                      text: "Viewed recently",
                      function: () {

                      },
                    ),
                    CustomListTile(
                      imagePath: "asset/profile/wishlist_svg.png",
                      text: "Wishlist",
                      function: ()  {

                      },
                    ),

                    const Divider(
                      thickness: 1,
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    const TitlesTextWidget(label: "Settings"),
                    const SizedBox(
                      height: 7,
                    ),
                    SwitchListTile(
                      secondary: Image.asset(
                       "asset/profile/theme.png",
                        height: 30,
                      ),
                      title: Text(themeProvider.getIsDarkTheme
                          ? "Dark mode"
                          : "Light mode"),
                      value: themeProvider.getIsDarkTheme,
                      onChanged: (value) {
                        themeProvider.setDarkTheme(themeValue: value);
                      },
                    ),
                    const Divider(
                      thickness: 1,
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    const TitlesTextWidget(label: "Others"),
                    const SizedBox(
                      height: 7,
                    ),
                    CustomListTile(
                      imagePath: "asset/profile/privacy.png",
                      text: "Privacy & Policy",
                      function: () {},
                    ),
                    const Divider(
                      thickness: 1,
                    ),
                    CustomListTile(
                      imagePath: "asset/profile/language.png",
                      text: "Language",
                      function: () {},
                    ),
                    const Divider(
                      thickness: 1,
                    ),
                  ],
                ),
              ),

              Center(
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 160.0),
                    backgroundColor: Colors.grey,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)

                      ),
                    ),
                  ),
                  icon: const Icon(Icons.login),
                  label: const Text(
                    "Login",
                  ),
                  onPressed: ()  {
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
