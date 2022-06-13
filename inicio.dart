import 'config.dart';
import '../carlsjrsucursales/botones.dart';
import '../carlsjrsucursales/temas.dart';
import '../carlsjrsucursales/utils.dart';
import 'historialdepedidos.dart';
import 'menu.dart';
import 'micuenta.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class InicioWidget extends StatefulWidget {
  const InicioWidget({Key key}) : super(key: key);

  @override
  _InicioWidgetState createState() => _InicioWidgetState();
}

class _InicioWidgetState extends State<InicioWidget> {
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
                              'krx3s6bb' /* Pedir en linea */,
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
                              builder: (context) => InicioWidget(),
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
                              'hitsuucy' /* ¿Quiénes somos? */,
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
                              'u8c7qpqq' /* Mi cuenta */,
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
                              'ip7w9lmn' /* Historial de pedidos */,
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
                              'aobyzhn6' /* Configuración */,
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
                  InkWell(
                    onTap: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MenuWidget(),
                        ),
                      );
                    },
                    child: ListTile(
                      leading: FaIcon(
                        FontAwesomeIcons.solidCircle,
                        color: Color(0xFF3BB000),
                        size: 20,
                      ),
                      title: Text(
                        FFLocalizations.of(context).getText(
                          'r3beebfd' /* Carl's Jr. Las Torres */,
                        ),
                        style: temascarls.of(context).title3.override(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                            ),
                      ),
                      subtitle: Text(
                        FFLocalizations.of(context).getText(
                          'dtdsplkj' /* Abierto */,
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
                  ),
                  InkWell(
                    onTap: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MenuWidget(),
                        ),
                      );
                    },
                    child: ListTile(
                      leading: FaIcon(
                        FontAwesomeIcons.solidCircle,
                        color: Color(0xFF3BB000),
                        size: 20,
                      ),
                      title: Text(
                        FFLocalizations.of(context).getText(
                          '1tuxwfpf' /* Carl's Jr. Industrias */,
                        ),
                        style: temascarls.of(context).title3.override(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                            ),
                      ),
                      subtitle: Text(
                        FFLocalizations.of(context).getText(
                          'iasqd173' /* Abierto */,
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
                  ),
                  InkWell(
                    onTap: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MenuWidget(),
                        ),
                      );
                    },
                    child: ListTile(
                      leading: FaIcon(
                        FontAwesomeIcons.solidCircle,
                        color: Color(0xFF3BB000),
                        size: 20,
                      ),
                      title: Text(
                        FFLocalizations.of(context).getText(
                          '7uyinq63' /* Carl's Jr. San Lorenzo */,
                        ),
                        style: temascarls.of(context).title3.override(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                            ),
                      ),
                      subtitle: Text(
                        FFLocalizations.of(context).getText(
                          'f9zn4lnl' /* Abierto */,
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
                  ),
                  InkWell(
                    onTap: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MenuWidget(),
                        ),
                      );
                    },
                    child: ListTile(
                      leading: FaIcon(
                        FontAwesomeIcons.solidCircle,
                        color: Color(0xFF3BB000),
                        size: 20,
                      ),
                      title: Text(
                        FFLocalizations.of(context).getText(
                          'yg43mapb' /* Carl's Jr. Aeropuerto */,
                        ),
                        style: temascarls.of(context).title3.override(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                            ),
                      ),
                      subtitle: Text(
                        FFLocalizations.of(context).getText(
                          '2oi3ayxb' /* Abierto */,
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
                  ),
                  InkWell(
                    onTap: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MenuWidget(),
                        ),
                      );
                    },
                    child: ListTile(
                      leading: FaIcon(
                        FontAwesomeIcons.solidCircle,
                        color: Color(0xFF3BB000),
                        size: 20,
                      ),
                      title: Text(
                        FFLocalizations.of(context).getText(
                          '4u556r9q' /* Carl's Jr. Ejército Nacional */,
                        ),
                        style: temascarls.of(context).title3.override(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                            ),
                      ),
                      subtitle: Text(
                        FFLocalizations.of(context).getText(
                          'ez6k5pyi' /* Abierto */,
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
