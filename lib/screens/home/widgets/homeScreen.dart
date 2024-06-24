import 'package:flutter/material.dart';
import '../../../components/skyBackground.dart';
import '../../../translation/localization.dart';
import 'package:solarwardenapp/translation/TranslationWidget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  void _showPopup(BuildContext context, String title, String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: <Widget>[
            TextButton(
              child: Text("Close"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(
        actions: const [TranslationWidget()],
        backgroundColor: Colors.black,
      ),
      body: SkyBackground(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                const SizedBox(height: 80),
                Text(
                  localization.welcome ?? 'Seja Bem-Vindo ao Solar Warden',
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    shadows: [
                      Shadow(
                        blurRadius: 10.0,
                        color: Colors.yellow,
                        offset: Offset(0, 0),
                      ),
                    ],
                  ),
                ),
                Text(
                  localization.personalObservatory ?? 'Seu observatório pessoal!',
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    shadows: [
                      Shadow(
                        blurRadius: 10.0,
                        color: Colors.yellow,
                        offset: Offset(0, 0),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                Text(
                  localization.menuLabel ?? 'Abaixo você encontrará informações que lhe ajudarão a entender os dados apresentados por esta ferramenta:',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 50),
                _buildLegendSection(context, localization),
                const SizedBox(height: 50),
                Text(
                  localization.observeNow ?? 'Observe agora!',
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 10),
                _buildActionButton(localization.solarFlares ?? 'Flares Solares', context, isSolarFlare: true),
                const SizedBox(height: 20),
                _buildActionButton(localization.nears ?? 'NEOs', context, isNeo: true),
                const SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLegendSection(BuildContext context, AppLocalizations localization) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          localization.solarFlares ?? 'Flares Solares',
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        _buildLegendButton(localization.whatAreSolarFlares ?? 'O que são Flares Solares?', context),
        _buildLegendButton(localization.understandDates ?? 'Entenda as datas', context),
        _buildLegendButton(localization.typesOfClasses ?? 'Quais são os tipos de classes destes eventos?', context),
        _buildLegendButton(localization.activeRegions ?? 'O que são as regiões ativas?', context),
        const SizedBox(height: 10),
        Text(
          localization.nears ?? 'NEOs',
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        _buildLegendButton(localization.whatAreNEOs ?? 'O que são NEOs?', context),
        _buildLegendButton(localization.approachDates ?? 'Entenda as datas de aproximação', context),
        _buildLegendButton(localization.diameter ?? 'Entenda mais sobre o diâmetro dos objetos', context),
        _buildLegendButton(localization.relativeSpeed ?? 'Entenda mais sobre a velocidade relativa', context),
        _buildLegendButton(localization.proximityDistances ?? 'Entenda as distâncias de proximidade', context),
        _buildLegendButton(localization.orbitingBody ?? 'O que é o Corpo em Órbita', context),
      ],
    );
  }

  Widget _buildLegendButton(String text, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.grey[900],
          foregroundColor: Colors.yellow,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          shadowColor: Colors.yellow,
          elevation: 10,
          minimumSize: const Size(double.infinity, 50),
        ),
        onPressed: () {
          _showPopup(context, text, 'teste');
        },
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.yellow,
          ),
        ),
      ),
    );
  }

  Widget _buildActionButton(String text, BuildContext context, {bool isSolarFlare = false, bool isNeo = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Stack(
        children: [
          Container(
            height: 80,
            decoration: BoxDecoration(
              boxShadow: [
                if (isSolarFlare || isNeo)
                  BoxShadow(
                    color: Colors.yellow.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 20,
                    offset: Offset(0, 0),
                  ),
              ],
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.grey[900],
              foregroundColor: Colors.yellow,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              shadowColor: Colors.yellow,
              elevation: 10,
              minimumSize: const Size(double.infinity, 80),
            ),
            onPressed: () {
              // Define actions here if needed
            },
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                shadows: [
                  Shadow(
                    blurRadius: 10.0,
                    color: Colors.yellow,
                    offset: Offset(0, 0),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}