// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Let’sFood`
  String get let_food {
    return Intl.message(
      'Let’sFood',
      name: 'let_food',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Menu`
  String get menu {
    return Intl.message(
      'Menu',
      name: 'menu',
      desc: '',
      args: [],
    );
  }

  /// `How it work`
  String get how_it_work {
    return Intl.message(
      'How it work',
      name: 'how_it_work',
      desc: '',
      args: [],
    );
  }

  /// `About`
  String get about {
    return Intl.message(
      'About',
      name: 'about',
      desc: '',
      args: [],
    );
  }

  /// `Contact`
  String get contact {
    return Intl.message(
      'Contact',
      name: 'contact',
      desc: '',
      args: [],
    );
  }

  /// `Sign in`
  String get sign_in {
    return Intl.message(
      'Sign in',
      name: 'sign_in',
      desc: '',
      args: [],
    );
  }

  /// `Be The Fastest In\nDelivery Your`
  String get banner_title {
    return Intl.message(
      'Be The Fastest In\nDelivery Your',
      name: 'banner_title',
      desc: '',
      args: [],
    );
  }

  /// `Food`
  String get food {
    return Intl.message(
      'Food',
      name: 'food',
      desc: '',
      args: [],
    );
  }

  /// `Lorem ipsum dolor sit amet, consectetur\nadipiscing elit ut aliquam, purus sit amet`
  String get banner_content {
    return Intl.message(
      'Lorem ipsum dolor sit amet, consectetur\nadipiscing elit ut aliquam, purus sit amet',
      name: 'banner_content',
      desc: '',
      args: [],
    );
  }

  /// `Get Started`
  String get get_started {
    return Intl.message(
      'Get Started',
      name: 'get_started',
      desc: '',
      args: [],
    );
  }

  /// `How it works`
  String get how_it_works {
    return Intl.message(
      'How it works',
      name: 'how_it_works',
      desc: '',
      args: [],
    );
  }

  /// `What we serve`
  String get what_we_serve {
    return Intl.message(
      'What we serve',
      name: 'what_we_serve',
      desc: '',
      args: [],
    );
  }

  /// `Product Quality Is Our Priority, And Always Guarantees\nHalal And Safety Until It Is In Your Hands.`
  String get product_quality {
    return Intl.message(
      'Product Quality Is Our Priority, And Always Guarantees\nHalal And Safety Until It Is In Your Hands.',
      name: 'product_quality',
      desc: '',
      args: [],
    );
  }

  /// `Easy To Order`
  String get easy_to_order_title {
    return Intl.message(
      'Easy To Order',
      name: 'easy_to_order_title',
      desc: '',
      args: [],
    );
  }

  /// `You only order through\nthe app`
  String get easy_to_order_content {
    return Intl.message(
      'You only order through\nthe app',
      name: 'easy_to_order_content',
      desc: '',
      args: [],
    );
  }

  /// `Fastest Delivery`
  String get fastest_delivery_title {
    return Intl.message(
      'Fastest Delivery',
      name: 'fastest_delivery_title',
      desc: '',
      args: [],
    );
  }

  /// `Delivery will be on\ntime`
  String get fastest_delivery_content {
    return Intl.message(
      'Delivery will be on\ntime',
      name: 'fastest_delivery_content',
      desc: '',
      args: [],
    );
  }

  /// `Best Quality`
  String get best_quality_title {
    return Intl.message(
      'Best Quality',
      name: 'best_quality_title',
      desc: '',
      args: [],
    );
  }

  /// `The best quality of food\nfor you`
  String get best_quality_content {
    return Intl.message(
      'The best quality of food\nfor you',
      name: 'best_quality_content',
      desc: '',
      args: [],
    );
  }

  /// `Our menu`
  String get our_menu {
    return Intl.message(
      'Our menu',
      name: 'our_menu',
      desc: '',
      args: [],
    );
  }

  /// `Our Popular Menu`
  String get our_menu_popular {
    return Intl.message(
      'Our Popular Menu',
      name: 'our_menu_popular',
      desc: '',
      args: [],
    );
  }

  /// `Lorem ipsum dolor sit amet, consectetur\nadipiscing elit ut aliquam`
  String get our_menu_content {
    return Intl.message(
      'Lorem ipsum dolor sit amet, consectetur\nadipiscing elit ut aliquam',
      name: 'our_menu_content',
      desc: '',
      args: [],
    );
  }

  /// `$ {price}`
  String product_price(Object price) {
    return Intl.message(
      '\$ $price',
      name: 'product_price',
      desc: '',
      args: [price],
    );
  }

  /// `More Menu`
  String get more_menu {
    return Intl.message(
      'More Menu',
      name: 'more_menu',
      desc: '',
      args: [],
    );
  }

  /// `What the say`
  String get what_the_say {
    return Intl.message(
      'What the say',
      name: 'what_the_say',
      desc: '',
      args: [],
    );
  }

  /// `What Our Customers Say \nAbout Us`
  String get what_the_say_content {
    return Intl.message(
      'What Our Customers Say \nAbout Us',
      name: 'what_the_say_content',
      desc: '',
      args: [],
    );
  }

  /// `Join our member and get\ndiscount up to 50%`
  String get discount_content {
    return Intl.message(
      'Join our member and get\ndiscount up to 50%',
      name: 'discount_content',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get sign_up {
    return Intl.message(
      'Sign Up',
      name: 'sign_up',
      desc: '',
      args: [],
    );
  }

  /// `Jalan Semangka Raya, Telaga \nMurni,Cikarang Barat, Kab. Bekasi`
  String get address {
    return Intl.message(
      'Jalan Semangka Raya, Telaga \nMurni,Cikarang Barat, Kab. Bekasi',
      name: 'address',
      desc: '',
      args: [],
    );
  }

  /// `Company`
  String get company {
    return Intl.message(
      'Company',
      name: 'company',
      desc: '',
      args: [],
    );
  }

  /// `About Us`
  String get about_us {
    return Intl.message(
      'About Us',
      name: 'about_us',
      desc: '',
      args: [],
    );
  }

  /// `Career`
  String get career {
    return Intl.message(
      'Career',
      name: 'career',
      desc: '',
      args: [],
    );
  }

  /// `How It Work`
  String get how_it_work_v2 {
    return Intl.message(
      'How It Work',
      name: 'how_it_work_v2',
      desc: '',
      args: [],
    );
  }

  /// `Policy`
  String get policy {
    return Intl.message(
      'Policy',
      name: 'policy',
      desc: '',
      args: [],
    );
  }

  /// `FAQ`
  String get faq {
    return Intl.message(
      'FAQ',
      name: 'faq',
      desc: '',
      args: [],
    );
  }

  /// `Privacy`
  String get privacy {
    return Intl.message(
      'Privacy',
      name: 'privacy',
      desc: '',
      args: [],
    );
  }

  /// `Shipping`
  String get shipping {
    return Intl.message(
      'Shipping',
      name: 'shipping',
      desc: '',
      args: [],
    );
  }

  /// `Get In Touch`
  String get get_in_touch {
    return Intl.message(
      'Get In Touch',
      name: 'get_in_touch',
      desc: '',
      args: [],
    );
  }

  /// `+62 896 7311 2766`
  String get phone {
    return Intl.message(
      '+62 896 7311 2766',
      name: 'phone',
      desc: '',
      args: [],
    );
  }

  /// `food@example.com`
  String get email {
    return Intl.message(
      'food@example.com',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `© 2022 Let’sFood. ALL RIGHT RESERVED.`
  String get copy_right {
    return Intl.message(
      '© 2022 Let’sFood. ALL RIGHT RESERVED.',
      name: 'copy_right',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'vi'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
