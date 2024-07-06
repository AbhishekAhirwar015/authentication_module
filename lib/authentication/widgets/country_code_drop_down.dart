import 'package:authentication_screen/constants/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CountryCodeDropdown extends StatefulWidget {
  const CountryCodeDropdown({super.key});

  @override
  _CountryCodeDropdownState createState() => _CountryCodeDropdownState();
}

class _CountryCodeDropdownState extends State<CountryCodeDropdown> {
  List<Country> countryList = [
    const Country(code: '+224', imageUrl: 'assets/logo/flag.png'),
    const Country(code: '+91', imageUrl: 'assets/logo/flag.png'),
    const Country(code: '+1', imageUrl: 'assets/logo/flag.png'),
    const Country(code: '+21', imageUrl: 'assets/logo/flag.png'),
  ];
  Country? selectedCountry;

  @override
  Widget build(BuildContext context) {
    return DropdownMenu<Country>(
        initialSelection: countryList.first,
        onSelected: (value) {
          setState(() {
            selectedCountry = value;
          });
        },
        width: MediaQuery.of(context).size.width * 0.4,
        textStyle: TextStyleConstant.hintTextStyle,
        inputDecorationTheme: const InputDecorationTheme(
            border: OutlineInputBorder(borderSide: BorderSide.none)),
        leadingIcon: Padding(
          padding: const EdgeInsets.only(top: 15.0, bottom: 15, left: 18),
          child: CircleAvatar(
            radius: 9,
            child: Image.asset(
              selectedCountry == null
                  ? countryList.first.imageUrl
                  : selectedCountry!.imageUrl,
            ),
          ),
        ),
        trailingIcon: Padding(
          padding:
              const EdgeInsets.only(left: 0.0, right: 2, top: 15, bottom: 15),
          child: SvgPicture.asset('assets/icons/down_arrow.svg'),
        ),
        dropdownMenuEntries: countryList
            .map(
              (country) => DropdownMenuEntry<Country>(
                value: country,
                label: country.code,
                leadingIcon: CircleAvatar(
                  radius: 9,
                  child: Image.asset(
                    country.imageUrl,
                    height: 18,
                    width: 18,
                  ),
                ),
              ),
            )
            .toList());
  }
}

class Country {
  final String code;
  final String imageUrl;

  const Country({
    required this.code,
    required this.imageUrl,
  });
}
