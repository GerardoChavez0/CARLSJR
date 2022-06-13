import 'config.dart';
import '../carlsjrsucursales/botones.dart';
import '../carlsjrsucursales/temas.dart';
import '../carlsjrsucursales/utils.dart';
import 'inicio.dart';
import 'micuenta.dart';
import 'quienessomos.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class HistorialdepedidosWidget extends StatefulWidget {
  const HistorialdepedidosWidget({Key key}) : super(key: key);

  @override
  _HistorialdepedidosWidgetState createState() =>
      _HistorialdepedidosWidgetState();
}

class _HistorialdepedidosWidgetState extends State<HistorialdepedidosWidget> {
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
                              '0q40sa12' /* Pedir en linea */,
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
                              'h43z9okg' /* ¿Quiénes somos? */,
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
                              'r3lii954' /* Mi cuenta */,
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
                              'h7luj1ae' /* Historial de pedidos */,
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
                              'k0qf7rj1' /* Configuración */,
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
              Expanded(
                child: Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      '64lie73s' /* Tu historial de pedidos está v... */,
                    ),
                    style: temascarls.of(context).bodyText1.override(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                          fontSize: 16,
                        ),
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
