import 'package:flutter/material.dart';

class AppLocalizations {
  final Locale locale;

  AppLocalizations(this.locale);

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static Map<String, Map<String, String>> _localizedValues = {
    'en': {
      'eye_in_the_sky': 'Eye in the Sky',
      'start': 'START',
      'by': 'By Lucas G. Reinert',
      'welcome': 'Welcome to Solar Warden',
      'personalObservatory': 'Your personal observatory!',
      'menuLabel': 'Below you will find information that will help you understand the data presented by this tool:',
      'solarFlares': 'Solar Flares',
      'whatAreSolarFlares': 'What are Solar Flares?',
      'understandDates': 'Understand the dates',
      'typesOfClasses': 'What are the types of classes of these events?',
      'activeRegions': 'What are the active regions?',
      'nears': 'NEOs',
      'whatAreNEOs': 'What are NEOs?',
      'approachDates': 'Understand the approach dates',
      'diameter': 'Understand more about the diameter of objects',
      'relativeSpeed': 'Understand more about relative speed',
      'proximityDistances': 'Understand proximity distances',
      'orbitingBody': 'What is the orbiting body?',
      'observeNow': 'Observe now!',
    },
    'pt': {
      'eye_in_the_sky': 'De Olho no Céu',
      'start': 'INICIAR',
      'by': 'Por Lucas G. Reinert',
      'welcome': 'Bem-Vindo ao Solar Warden',
      'personalObservatory': 'Seu observatório pessoal!',
      'menuLabel': 'Abaixo você encontrará informações que lhe ajudarão a entender os dados apresentados por esta ferramenta:',
      'solarFlares': 'Flares Solares',
      'whatAreSolarFlares': 'O que são Flares Solares?',
      'understandDates': 'Entenda as datas',
      'typesOfClasses': 'Quais são os tipos de classes destes eventos?',
      'activeRegions': 'O que são as regiões ativas?',
      'nears': 'NEOs',
      'whatAreNEOs': 'O que são NEOs?',
      'approachDates': 'Entenda as datas de aproximação',
      'diameter': 'Entenda mais sobre o diâmetro dos objetos',
      'relativeSpeed': 'Entenda mais sobre a velocidade relativa',
      'proximityDistances': 'Entenda as distâncias de proximidade',
      'orbitingBody': 'O que é o Corpo em Órbita?',
      'observeNow': 'Observe agora!',
    },
  };

  String? get eyeInTheSky {
    return _localizedValues[locale.languageCode]!['eye_in_the_sky'];
  }

  String? get start {
    return _localizedValues[locale.languageCode]!['start'];
  }

  String? get by {
    return _localizedValues[locale.languageCode]!['by'];
  }

  String? get welcome {
    return _localizedValues[locale.languageCode]!['welcome'];
  }

  String? get personalObservatory {
    return _localizedValues[locale.languageCode]!['personalObservatory'];
  }

  String? get menuLabel {
    return _localizedValues[locale.languageCode]!['menuLabel'];
  }

  String? get solarFlares {
    return _localizedValues[locale.languageCode]!['solarFlares'];
  }

  String? get whatAreSolarFlares {
    return _localizedValues[locale.languageCode]!['whatAreSolarFlares'];
  }

  String? get understandDates {
    return _localizedValues[locale.languageCode]!['understandDates'];
  }

  String? get typesOfClasses {
    return _localizedValues[locale.languageCode]!['typesOfClasses'];
  }

  String? get activeRegions {
    return _localizedValues[locale.languageCode]!['activeRegions'];
  }

  String? get nears {
    return _localizedValues[locale.languageCode]!['nears'];
  }

  String? get whatAreNEOs {
    return _localizedValues[locale.languageCode]!['whatAreNEOs'];
  }

  String? get approachDates {
    return _localizedValues[locale.languageCode]!['approachDates'];
  }

  String? get diameter {
    return _localizedValues[locale.languageCode]!['diameter'];
  }

  String? get relativeSpeed {
    return _localizedValues[locale.languageCode]!['relativeSpeed'];
  }

  String? get proximityDistances {
    return _localizedValues[locale.languageCode]!['proximityDistances'];
  }

  String? get orbitingBody {
    return _localizedValues[locale.languageCode]!['orbitingBody'];
  }

  String? get observeNow {
    return _localizedValues[locale.languageCode]!['observeNow'];
  }
}

class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    return ['en', 'pt'].contains(locale.languageCode);
  }

  @override
  Future<AppLocalizations> load(Locale locale) async {
    return AppLocalizations(locale);
  }

  @override
  bool shouldReload(covariant LocalizationsDelegate<AppLocalizations> old) {
    return false;
  }
}