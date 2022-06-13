import '../carlsjrsucursales/botones.dart';
import '../carlsjrsucursales/lenguajes.dart';
import '../carlsjrsucursales/temas.dart';
import '../carlsjrsucursales/utils.dart';
import 'historialdepedidos.dart';
import 'inicio.dart';
import 'micuenta.dart';
import 'quienessomos.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ConfigWidget extends StatefulWidget {
  const ConfigWidget({Key key}) : super(key: key);

  @override
  _ConfigWidgetState createState() => _ConfigWidgetState();
}

class _ConfigWidgetState extends State<ConfigWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF1F1F1F),
        automaticallyImplyLeading: false,
        leading: botones(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.list,
            color: Colors.white,
            size: 25,
          ),
          onPressed: () async {
            scaffoldKey.currentState.openDrawer();
          },
        ),
        title: Align(
          alignment: AlignmentDirectional(-0.3, 0),
          child: Image.asset(
            'assets/images/Carls_Jr_Logo_CMYK_REV.png',
            width: 150,
            height: 100,
            fit: BoxFit.contain,
          ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: Color(0xFF1F1F1F),
      drawer: Drawer(
        elevation: 16,
        child: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: Color(0xFF1F1F1F),
          ),
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(-1.01, -0.15),
                child: Container(
                  width: 400,
                  height: 500,
                  decoration: BoxDecoration(
                    color: Color(0xFF1F1F1F),
                  ),
                  child: ListView(
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.vertical,
                    children: [
                      InkWell(
                        onTap: () async {
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => InicioWidget(),
                            ),
                          );
                        },
                        child: ListTile(
                          leading: Icon(
                            Icons.fastfood_rounded,
                            color: Colors.white,
                          ),
                          title: Text(
                            FFLocalizations.of(context).getText(
                              'dbvbeqs1' /* Pedir en linea */,
                            ),
                            style: temascarls.of(context).title3.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                  fontSize: 17,
                                ),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            color: temascarls.of(context).primaryBtnText,
                            size: 20,
                          ),
                          tileColor: Color(0xFFF5F5F5),
                          dense: false,
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => QuienessomosWidget(),
                            ),
                          );
                        },
                        child: ListTile(
                          leading: Icon(
                            Icons.help,
                            color: Colors.white,
                          ),
                          title: Text(
                            FFLocalizations.of(context).getText(
                              'oka3x7g5' /* ¿Quiénes somos? */,
                            ),
                            style: temascarls.of(context).title3.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                  fontSize: 17,
                                ),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            color: temascarls.of(context).primaryBtnText,
                            size: 20,
                          ),
                          tileColor: Color(0xFFF5F5F5),
                          dense: false,
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MicuentaWidget(),
                            ),
                          );
                        },
                        child: ListTile(
                          leading: Icon(
                            Icons.person,
                            color: temascarls.of(context).primaryBtnText,
                          ),
                          title: Text(
                            FFLocalizations.of(context).getText(
                              'du3em0qt' /* Mi cuenta */,
                            ),
                            style: temascarls.of(context).title3.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                  fontSize: 17,
                                ),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            color: temascarls.of(context).primaryBtnText,
                            size: 20,
                          ),
                          tileColor: Color(0xFFF5F5F5),
                          dense: false,
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HistorialdepedidosWidget(),
                            ),
                          );
                        },
                        child: ListTile(
                          leading: Icon(
                            Icons.history_toggle_off,
                            color: Colors.white,
                          ),
                          title: Text(
                            FFLocalizations.of(context).getText(
                              'z76xo1hz' /* Historial de pedidos */,
                            ),
                            style: temascarls.of(context).title3.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                  fontSize: 17,
                                ),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            color: temascarls.of(context).primaryBtnText,
                            size: 20,
                          ),
                          tileColor: Color(0xFFF5F5F5),
                          dense: false,
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ConfigWidget(),
                            ),
                          );
                        },
                        child: ListTile(
                          leading: FaIcon(
                            FontAwesomeIcons.cog,
                            color: Colors.white,
                          ),
                          title: Text(
                            FFLocalizations.of(context).getText(
                              '5ethh2na' /* Configuración */,
                            ),
                            style: temascarls.of(context).title3.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                  fontSize: 17,
                                ),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            color: temascarls.of(context).primaryBtnText,
                            size: 20,
                          ),
                          tileColor: Color(0xFFF5F5F5),
                          dense: false,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.15, -0.95),
                child: Image.asset(
                  'assets/images/Carls_Jr_Logo_CMYK_REV.png',
                  width: 200,
                  height: 100,
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                'Selecciona Tu Idioma',
                style: temascarls.of(context).bodyText1.override(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                      fontSize: 20,
                    ),
              ),
              Expanded(
                child: Align(
                  alignment: AlignmentDirectional(0, -0.95),
                  child: ListView(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: [
                      lenguajes(
                        width: 200,
                        backgroundColor: Color(0xFF484848),
                        borderColor: Color(0xFF262D34),
                        dropdownIconColor: Color(0xFF14181B),
                        borderRadius: 8,
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 13,
                        ),
                        hideFlags: false,
                        flagSize: 24,
                        flagTextGap: 8,
                        currentLanguage:
                            FFLocalizations.of(context).languageCode,
                        languages: FFLocalizations.languages(),
                        onChanged: (lang) => setAppLanguage(context, lang),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
