import 'config.dart';
import '../carlsjrsucursales/botones.dart';
import '../carlsjrsucursales/temas.dart';
import '../carlsjrsucursales/utils.dart';
import 'historialdepedidos.dart';
import 'inicio.dart';
import 'micuenta.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class QuienessomosWidget extends StatefulWidget {
  const QuienessomosWidget({Key key}) : super(key: key);

  @override
  _QuienessomosWidgetState createState() => _QuienessomosWidgetState();
}

class _QuienessomosWidgetState extends State<QuienessomosWidget> {
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
          alignment: AlignmentDirectional(-0.05, 0),
          child: Image.asset(
            'assets/images/Carls_Jr_Logo_CMYK_REV.png',
            width: 150,
            height: 100,
            fit: BoxFit.contain,
          ),
        ),
        actions: [
          botones(
            borderColor: Colors.transparent,
            borderRadius: 30,
            borderWidth: 1,
            buttonSize: 60,
            icon: Icon(
              Icons.person,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () async {
              await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MicuentaWidget(),
                ),
              );
            },
          ),
        ],
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
                              'u03jsr12' /* Pedir en linea */,
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
                              'ndpzp0b0' /* ¿Quiénes somos? */,
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
                              'k4dr1ifc' /* Mi cuenta */,
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
                              '08ecoe3b' /* Historial de pedidos */,
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
                              'n1cmudsd' /* Configuración */,
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
              ListView(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  ListTile(
                    leading: FaIcon(
                      FontAwesomeIcons.solidCircle,
                      color: Color(0xFF3BB000),
                      size: 20,
                    ),
                    title: Text(
                      FFLocalizations.of(context).getText(
                        'ooshva9h' /* Carl's Jr. Las Torres */,
                      ),
                      style: temascarls.of(context).title3.override(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                          ),
                    ),
                    subtitle: Text(
                      FFLocalizations.of(context).getText(
                        '4l6y195d' /* Abierto */,
                      ),
                      style: temascarls.of(context).subtitle2.override(
                            fontFamily: 'Poppins',
                            color: Color(0xFF08B500),
                          ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 20,
                    ),
                    tileColor: Color(0xFF1F1F1F),
                    dense: false,
                  ),
                  ListTile(
                    leading: FaIcon(
                      FontAwesomeIcons.solidCircle,
                      color: Color(0xFF3BB000),
                      size: 20,
                    ),
                    title: Text(
                      FFLocalizations.of(context).getText(
                        '3a7mxs5e' /* Carl's Jr. Industrias */,
                      ),
                      style: temascarls.of(context).title3.override(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                          ),
                    ),
                    subtitle: Text(
                      FFLocalizations.of(context).getText(
                        'mwfh9xw3' /* Abierto */,
                      ),
                      style: temascarls.of(context).subtitle2.override(
                            fontFamily: 'Poppins',
                            color: Color(0xFF3BB000),
                          ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 20,
                    ),
                    tileColor: Color(0xFF1F1F1F),
                    dense: false,
                  ),
                  ListTile(
                    leading: FaIcon(
                      FontAwesomeIcons.solidCircle,
                      color: Color(0xFF3BB000),
                      size: 20,
                    ),
                    title: Text(
                      FFLocalizations.of(context).getText(
                        'fzw92dqa' /* Carl's Jr. San Lorenzo */,
                      ),
                      style: temascarls.of(context).title3.override(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                          ),
                    ),
                    subtitle: Text(
                      FFLocalizations.of(context).getText(
                        'z7ytm5vd' /* Abierto */,
                      ),
                      style: temascarls.of(context).subtitle2.override(
                            fontFamily: 'Poppins',
                            color: Color(0xFF3BB000),
                          ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 20,
                    ),
                    tileColor: Color(0xFF1F1F1F),
                    dense: false,
                  ),
                  ListTile(
                    leading: FaIcon(
                      FontAwesomeIcons.solidCircle,
                      color: Color(0xFF3BB000),
                      size: 20,
                    ),
                    title: Text(
                      FFLocalizations.of(context).getText(
                        '5zf4o13o' /* Carl's Jr. Aeropuerto */,
                      ),
                      style: temascarls.of(context).title3.override(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                          ),
                    ),
                    subtitle: Text(
                      FFLocalizations.of(context).getText(
                        '1bjj5r3f' /* Abierto */,
                      ),
                      style: temascarls.of(context).subtitle2.override(
                            fontFamily: 'Poppins',
                            color: Color(0xFF3BB000),
                          ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 20,
                    ),
                    tileColor: Color(0xFF1F1F1F),
                    dense: false,
                  ),
                  ListTile(
                    leading: FaIcon(
                      FontAwesomeIcons.solidCircle,
                      color: Color(0xFF3BB000),
                      size: 20,
                    ),
                    title: Text(
                      FFLocalizations.of(context).getText(
                        'i47mxl3r' /* Carl's Jr. Ejército Nacional */,
                      ),
                      style: temascarls.of(context).title3.override(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                          ),
                    ),
                    subtitle: Text(
                      FFLocalizations.of(context).getText(
                        'n86ibmtd' /* Abierto */,
                      ),
                      style: temascarls.of(context).subtitle2.override(
                            fontFamily: 'Poppins',
                            color: Color(0xFF3BB000),
                          ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 20,
                    ),
                    tileColor: Color(0xFF1F1F1F),
                    dense: false,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
