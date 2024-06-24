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
      'closePopup': 'Close',
      'whatAreSolarFlaresTextPart1': 'Solar flares are sudden eruptions of electromagnetic radiation from the Sun\'s surface. These events occur when the energy stored in magnetic fields, usually above sunspots, is suddenly released.\n\n',
      'whatAreSolarFlaresTextPart2': 'Impacts on Daily Life:\n',
      'whatAreSolarFlaresTextPart3': '1. Communication Disruptions: ',
      'whatAreSolarFlaresTextPart4': 'Solar flares can cause interference in high-frequency radio communications and satellite communications.\n',
      'whatAreSolarFlaresTextPart5': '2. Geomagnetic Storms: ',
      'whatAreSolarFlaresTextPart6': 'The release of energetic particles can trigger geomagnetic storms that affect power grids and navigation systems.\n',
      'whatAreSolarFlaresTextPart7': '3. Radiation: ',
      'whatAreSolarFlaresTextPart8': 'Radiation from solar flares can pose a risk to astronauts and passengers on high-altitude flights.\n',
      'whatAreSolarFlaresTextPart9': '4. Auroras: ',
      'whatAreSolarFlaresTextPart10': 'Intense solar flares can result in spectacular auroras visible at lower latitudes than usual.\n',
      'understandDatesTextPart1': 'The start date of a solar flare indicates when the event begins, the peak date represents the point of maximum intensity, and the end date shows when the event has concluded.\n\n',
      'understandDatesTextPart2': '1. Start Date: ',
      'understandDatesTextPart3': 'The moment when the solar flare activity begins.\n',
      'understandDatesTextPart4': '2. Peak Date: ',
      'understandDatesTextPart5': 'The point of maximum intensity of the solar flare.\n',
      'understandDatesTextPart6': '3. End Date: ',
      'understandDatesTextPart7': 'The moment when the solar flare activity concludes.\n',
      'whatIsActiveRegionTextPart1': 'An active region on the Sun is an area with an especially strong and complex magnetic field. These regions are often associated with sunspots, solar flares, and coronal mass ejections.\n\n',
      'whatIsActiveRegionTextPart2': 'Features of Active Regions:\n\n',
      'whatIsActiveRegionTextPart3': '1. Sunspots: ',
      'whatIsActiveRegionTextPart4': 'Sunspots are dark areas on the Sun\'s surface that are cooler than surrounding areas and are indicators of magnetic activity.\n',
      'whatIsActiveRegionTextPart5': '2. Solar Flares: ',
      'whatIsActiveRegionTextPart6': 'These are sudden eruptions of energy caused by tangling, crossing, or reorganizing of magnetic field lines near sunspots.\n',
      'whatIsActiveRegionTextPart7': '3. Coronal Mass Ejections (CMEs): ',
      'whatIsActiveRegionTextPart8': 'CMEs are large expulsions of plasma and magnetic field from the Sun\'s corona. They often follow solar flares and can cause geomagnetic storms on Earth.\n',
      'whatIsActiveRegionTextPart9': '4. Magnetic Field Complexity: ',
      'whatIsActiveRegionTextPart10': 'Active regions are characterized by complex magnetic field structures that can store and release vast amounts of energy.\n',
      'whatIsClassTypesTextPart1': 'Solar flares are classified based on their X-ray brightness in the wavelength range 1 to 8 Angstroms. The classes are A, B, C, M, and X, with each class having a tenfold increase in energy output.\n\n',
      'whatIsClassTypesTextPart2': 'Classes of Solar Flares:\n\n',
      'whatIsClassTypesTextPart3': '1. Class A: ',
      'whatIsClassTypesTextPart4': 'These are the smallest flares, barely detectable above background radiation levels.\n',
      'whatIsClassTypesTextPart5': '2. Class B: ',
      'whatIsClassTypesTextPart6': 'These are small flares, with few noticeable effects on Earth.\n',
      'whatIsClassTypesTextPart7': '3. Class C: ',
      'whatIsClassTypesTextPart8': 'These are moderate flares, with minor effects on Earth, such as slight interruptions in satellite communications.\n',
      'whatIsClassTypesTextPart9': '4. Class M: ',
      'whatIsClassTypesTextPart10': 'These are large flares, capable of causing brief radio blackouts at the Earth\'s poles and minor radiation storms that might endanger astronauts.\n',
      'whatIsClassTypesTextPart11': '5. Class X: ',
      'whatIsClassTypesTextPart12': 'These are the largest flares, capable of causing planet-wide radio blackouts and long-lasting radiation storms.\n',
      'scaleExplanation': 'In our reports, we display the scales as follows:',
      'scaleExplanationDetail': 'Being:\n\nR1 = No risk\nR2 = Moderate risk\nR3 = Concerning risk\nR4 = High risk\nR5 = Maximum alert',
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
      'closePopup': 'Fechar',
      'whatAreSolarFlaresTextPart1': 'Flares solares são erupções repentinas de radiação eletromagnética da superfície do Sol. Esses eventos ocorrem quando a energia armazenada em campos magnéticos, geralmente acima de manchas solares, é liberada subitamente.\n\n',
      'whatAreSolarFlaresTextPart2': 'Impactos no Dia a Dia:\n',
      'whatAreSolarFlaresTextPart3': '1. Disrupções em Comunicações: ',
      'whatAreSolarFlaresTextPart4': 'Flares solares podem causar interferências nas comunicações por rádio de alta frequência e nas comunicações por satélite.\n',
      'whatAreSolarFlaresTextPart5': '2. Tempestades Geomagnéticas: ',
      'whatAreSolarFlaresTextPart6': 'A liberação de partículas energéticas pode provocar tempestades geomagnéticas que afetam redes elétricas e sistemas de navegação.\n',
      'whatAreSolarFlaresTextPart7': '3. Radiação: ',
      'whatAreSolarFlaresTextPart8': 'A radiação dos flares solares pode representar um risco para astronautas e passageiros de voos em altitudes elevadas.\n',
      'whatAreSolarFlaresTextPart9': '4. Auroras: ',
      'whatAreSolarFlaresTextPart10': 'Flares solares intensos podem resultar em auroras espetaculares visíveis em latitudes mais baixas do que o normal.\n',
      'understandDatesTextPart1': 'A data de início de uma tempestade solar indica quando o evento começa, a data de pico representa o ponto de intensidade máxima e a data de término mostra quando o evento foi concluído.\n\n',
      'understandDatesTextPart2': '1. Data de Início: ',
      'understandDatesTextPart3': 'O momento em que a atividade da tempestade solar começa.\n',
      'understandDatesTextPart4': '2. Data de Pico: ',
      'understandDatesTextPart5': 'O ponto de intensidade máxima da tempestade solar.\n',
      'understandDatesTextPart6': '3. Data de Término: ',
      'understandDatesTextPart7': 'O momento em que a atividade da tempestade solar é concluída.\n',
      'whatIsActiveRegionTextPart1': 'Uma região ativa no Sol é uma área com um campo magnético especialmente forte e complexo. Essas regiões estão frequentemente associadas a manchas solares, flares solares e ejeções de massa coronal.\n\n',
      'whatIsActiveRegionTextPart2': 'Características das Regiões Ativas:\n\n',
      'whatIsActiveRegionTextPart3': '1. Manchas Solares: ',
      'whatIsActiveRegionTextPart4': 'Manchas solares são áreas escuras na superfície do Sol que são mais frias do que as áreas circundantes e indicam atividade magnética.\n',
      'whatIsActiveRegionTextPart5': '2. Flares Solares: ',
      'whatIsActiveRegionTextPart6': 'São erupções súbitas de energia causadas pelo emaranhamento, cruzamento ou reorganização das linhas do campo magnético perto das manchas solares.\n',
      'whatIsActiveRegionTextPart7': '3. Ejeções de Massa Coronal (CMEs): ',
      'whatIsActiveRegionTextPart8': 'CMEs são grandes expulsões de plasma e campo magnético da coroa solar. Elas frequentemente seguem os flares solares e podem causar tempestades geomagnéticas na Terra.\n',
      'whatIsActiveRegionTextPart9': '4. Complexidade do Campo Magnético: ',
      'whatIsActiveRegionTextPart10': 'As regiões ativas são caracterizadas por estruturas complexas de campo magnético que podem armazenar e liberar grandes quantidades de energia.\n',
      'whatIsClassTypesTextPart1': 'Os flares solares são classificados com base em seu brilho de raios X no intervalo de comprimento de onda de 1 a 8 Angstroms. As classes são A, B, C, M e X, com cada classe tendo um aumento de dez vezes na produção de energia.\n\n',
      'whatIsClassTypesTextPart2': 'Classes de Flares Solares:\n\n',
      'whatIsClassTypesTextPart3': '1. Classe A: ',
      'whatIsClassTypesTextPart4': 'Esses são os menores flares, quase indetectáveis acima dos níveis de radiação de fundo.\n',
      'whatIsClassTypesTextPart5': '2. Classe B: ',
      'whatIsClassTypesTextPart6': 'Esses são pequenos flares, com poucos efeitos perceptíveis na Terra.\n',
      'whatIsClassTypesTextPart7': '3. Classe C: ',
      'whatIsClassTypesTextPart8': 'Esses são flares moderados, com efeitos menores na Terra, como leves interrupções nas comunicações via satélite.\n',
      'whatIsClassTypesTextPart9': '4. Classe M: ',
      'whatIsClassTypesTextPart10': 'Esses são grandes flares, capazes de causar breves apagões de rádio nos polos da Terra e tempestades de radiação menores que podem colocar astronautas em risco.\n',
      'whatIsClassTypesTextPart11': '5. Classe X: ',
      'whatIsClassTypesTextPart12': 'Esses são os maiores flares, capazes de causar apagões de rádio em todo o planeta e tempestades de radiação duradouras.\n',
      'scaleExplanation': 'Em nossos relatórios, exibimos as escalas da seguinte forma:',
      'scaleExplanationDetail': 'Sendo:\n\nR1 = Sem riscos\nR2 = Risco moderado\nR3 = Risco preocupante\nR4 = Risco alto\nR5 = Alerta máximo',
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

  String? get closePopup {
    return _localizedValues[locale.languageCode]!['closePopup'];
  }

  String? get whatAreSolarFlaresTextPart1 {
    return _localizedValues[locale.languageCode]!['whatAreSolarFlaresTextPart1'];
  }

  String? get whatAreSolarFlaresTextPart2 {
    return _localizedValues[locale.languageCode]!['whatAreSolarFlaresTextPart2'];
  }

  String? get whatAreSolarFlaresTextPart3 {
    return _localizedValues[locale.languageCode]!['whatAreSolarFlaresTextPart3'];
  }

  String? get whatAreSolarFlaresTextPart4 {
    return _localizedValues[locale.languageCode]!['whatAreSolarFlaresTextPart4'];
  }

  String? get whatAreSolarFlaresTextPart5 {
    return _localizedValues[locale.languageCode]!['whatAreSolarFlaresTextPart5'];
  }

  String? get whatAreSolarFlaresTextPart6 {
    return _localizedValues[locale.languageCode]!['whatAreSolarFlaresTextPart6'];
  }

  String? get whatAreSolarFlaresTextPart7 {
    return _localizedValues[locale.languageCode]!['whatAreSolarFlaresTextPart7'];
  }

  String? get whatAreSolarFlaresTextPart8 {
    return _localizedValues[locale.languageCode]!['whatAreSolarFlaresTextPart8'];
  }

  String? get whatAreSolarFlaresTextPart9 {
    return _localizedValues[locale.languageCode]!['whatAreSolarFlaresTextPart9'];
  }

  String? get whatAreSolarFlaresTextPart10 {
    return _localizedValues[locale.languageCode]!['whatAreSolarFlaresTextPart10'];
  }

  String? get understandDatesTextPart1 {
    return _localizedValues[locale.languageCode]!['understandDatesTextPart1'];
  }

  String? get understandDatesTextPart2 {
    return _localizedValues[locale.languageCode]!['understandDatesTextPart2'];
  }

  String? get understandDatesTextPart3 {
    return _localizedValues[locale.languageCode]!['understandDatesTextPart3'];
  }

  String? get understandDatesTextPart4 {
    return _localizedValues[locale.languageCode]!['understandDatesTextPart4'];
  }

  String? get understandDatesTextPart5 {
    return _localizedValues[locale.languageCode]!['understandDatesTextPart5'];
  }

  String? get understandDatesTextPart6 {
    return _localizedValues[locale.languageCode]!['understandDatesTextPart6'];
  }

  String? get understandDatesTextPart7 {
    return _localizedValues[locale.languageCode]!['understandDatesTextPart7'];
  }

  String? get whatIsActiveRegionTextPart1 {
    return _localizedValues[locale.languageCode]!['whatIsActiveRegionTextPart1'];
  }

  String? get whatIsActiveRegionTextPart2 {
    return _localizedValues[locale.languageCode]!['whatIsActiveRegionTextPart2'];
  }

  String? get whatIsActiveRegionTextPart3 {
    return _localizedValues[locale.languageCode]!['whatIsActiveRegionTextPart3'];
  }

  String? get whatIsActiveRegionTextPart4 {
    return _localizedValues[locale.languageCode]!['whatIsActiveRegionTextPart4'];
  }

  String? get whatIsActiveRegionTextPart5 {
    return _localizedValues[locale.languageCode]!['whatIsActiveRegionTextPart5'];
  }

  String? get whatIsActiveRegionTextPart6 {
    return _localizedValues[locale.languageCode]!['whatIsActiveRegionTextPart6'];
  }

  String? get whatIsActiveRegionTextPart7 {
    return _localizedValues[locale.languageCode]!['whatIsActiveRegionTextPart7'];
  }

  String? get whatIsActiveRegionTextPart8 {
    return _localizedValues[locale.languageCode]!['whatIsActiveRegionTextPart8'];
  }

  String? get whatIsActiveRegionTextPart9 {
    return _localizedValues[locale.languageCode]!['whatIsActiveRegionTextPart9'];
  }

  String? get whatIsActiveRegionTextPart10 {
    return _localizedValues[locale.languageCode]!['whatIsActiveRegionTextPart10'];
  }

  String? get whatIsClassTypesTextPart1 {
    return _localizedValues[locale.languageCode]!['whatIsClassTypesTextPart1'];
  }

  String? get whatIsClassTypesTextPart2 {
    return _localizedValues[locale.languageCode]!['whatIsClassTypesTextPart2'];
  }

  String? get whatIsClassTypesTextPart3 {
    return _localizedValues[locale.languageCode]!['whatIsClassTypesTextPart3'];
  }

  String? get whatIsClassTypesTextPart4 {
    return _localizedValues[locale.languageCode]!['whatIsClassTypesTextPart4'];
  }

  String? get whatIsClassTypesTextPart5 {
    return _localizedValues[locale.languageCode]!['whatIsClassTypesTextPart5'];
  }

  String? get whatIsClassTypesTextPart6 {
    return _localizedValues[locale.languageCode]!['whatIsClassTypesTextPart6'];
  }

  String? get whatIsClassTypesTextPart7 {
    return _localizedValues[locale.languageCode]!['whatIsClassTypesTextPart7'];
  }

  String? get whatIsClassTypesTextPart8 {
    return _localizedValues[locale.languageCode]!['whatIsClassTypesTextPart8'];
  }

  String? get whatIsClassTypesTextPart9 {
    return _localizedValues[locale.languageCode]!['whatIsClassTypesTextPart9'];
  }

  String? get whatIsClassTypesTextPart10 {
    return _localizedValues[locale.languageCode]!['whatIsClassTypesTextPart10'];
  }

  String? get whatIsClassTypesTextPart11 {
    return _localizedValues[locale.languageCode]!['whatIsClassTypesTextPart11'];
  }

  String? get whatIsClassTypesTextPart12 {
    return _localizedValues[locale.languageCode]!['whatIsClassTypesTextPart12'];
  }

  String? get scaleExplanation {
    return _localizedValues[locale.languageCode]!['scaleExplanation'];
  }

  String? get scaleExplanationDetail {
    return _localizedValues[locale.languageCode]!['scaleExplanationDetail'];
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