import 'config.dart';
import '../carlsjrsucursales/botones.dart';
import '../carlsjrsucursales/temas.dart';
import '../carlsjrsucursales/utils.dart';
import 'guacamolebacon.dart';
import 'historialdepedidos.dart';
import 'inicio.dart';
import 'jalapeno.dart';
import 'lowcarb.dart';
import 'micuenta.dart';
import 'originalbigangus.dart';
import 'portobello.dart';
import 'westernbacon.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuWidget extends StatefulWidget {
  const MenuWidget({Key key}) : super(key: key);

  @override
  _MenuWidgetState createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> {
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
        title: Text(
          FFLocalizations.of(context).getText(
            'n8u9mqhi' /* Menu */,
          ),
          style: temascarls.of(context).bodyText1.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 20,
              ),
        ),
        actions: [
          botones(
            borderColor: Colors.transparent,
            borderRadius: 30,
            borderWidth: 1,
            buttonSize: 60,
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () {
              print('IconButton pressed ...');
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
                              'ykq5vw27' /* Pedir en linea */,
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
                              'ejk1980p' /* ¿Quiénes somos? */,
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
                              'gxuc8x0m' /* Mi cuenta */,
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
                              '7rexifov' /* Historial de pedidos */,
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
                              'fgtmiox8' /* Configuración */,
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
                FFLocalizations.of(context).getText(
                  '2gmurkfx' /* LOS MÁS PEDIDOS */,
                ),
                style: temascarls.of(context).bodyText1.override(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                      fontSize: 25,
                    ),
              ),
              Expanded(
                child: Align(
                  alignment: AlignmentDirectional(0, -0.75),
                  child: Container(
                    width: 400,
                    height: 500,
                    decoration: BoxDecoration(
                      color: Color(0xFF1F1F1F),
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: GridView(
                            padding: EdgeInsets.zero,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10,
                              childAspectRatio: 1,
                            ),
                            scrollDirection: Axis.vertical,
                            children: [
                              Card(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                color: Color(0xFFF5F5F5),
                                child: InkWell(
                                  onTap: () async {
                                    await Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            GuacamolebaconWidget(),
                                      ),
                                    );
                                  },
                                  child: Image.asset(
                                    'assets/images/GUACAMOLE-BACON-BIG-ANGUS.png',
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Card(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                color: Color(0xFFF5F5F5),
                                child: InkWell(
                                  onTap: () async {
                                    await Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => JalapenoWidget(),
                                      ),
                                    );
                                  },
                                  child: Image.asset(
                                    'assets/images/JALAPENO-BIG-ANGUS.png',
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Card(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                color: Color(0xFFF5F5F5),
                                child: InkWell(
                                  onTap: () async {
                                    await Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            OriginalbigangusWidget(),
                                      ),
                                    );
                                  },
                                  child: Image.asset(
                                    'assets/images/ORIGINAL-BIG-ANGUS.png',
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Card(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                color: Color(0xFFF5F5F5),
                                child: InkWell(
                                  onTap: () async {
                                    await Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            PortobelloWidget(),
                                      ),
                                    );
                                  },
                                  child: Image.asset(
                                    'assets/images/PORTOBELLO-MUSHROOM-BIG-ANGUS.png',
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Card(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                color: Color(0xFFF5F5F5),
                                child: InkWell(
                                  onTap: () async {
                                    await Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            WesternbaconWidget(),
                                      ),
                                    );
                                  },
                                  child: Image.asset(
                                    'assets/images/WESTERN-BACON-BIG-ANGUS.png',
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Card(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                color: Color(0xFFF5F5F5),
                                child: InkWell(
                                  onTap: () async {
                                    await Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => LowcarbWidget(),
                                      ),
                                    );
                                  },
                                  child: Image.asset(
                                    'assets/images/LOW-CARB.png',
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
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
