import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/mensajes/chat_item/chat_item_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'actividad_usuarios_model.dart';
export 'actividad_usuarios_model.dart';

class ActividadUsuariosWidget extends StatefulWidget {
  const ActividadUsuariosWidget({
    Key? key,
    String? idOtro,
    String? foto,
    String? name,
    String? email,
  })  : this.idOtro = idOtro ?? '0',
        this.foto = foto ?? '0',
        this.name = name ?? '0',
        this.email = email ?? '0',
        super(key: key);

  final String idOtro;
  final String foto;
  final String name;
  final String email;

  @override
  _ActividadUsuariosWidgetState createState() =>
      _ActividadUsuariosWidgetState();
}

class _ActividadUsuariosWidgetState extends State<ActividadUsuariosWidget> {
  late ActividadUsuariosModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ActividadUsuariosModel());

    _model.txtMensajeController ??= TextEditingController();
    _model.txtMensajeFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFE6E8F4),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                height: 100.0,
                decoration: BoxDecoration(
                  color: Color(0xFF2072DF),
                ),
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.safePop();
                                    },
                                    child: Icon(
                                      Icons.reply,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 35.0,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        15.0, 0.0, 0.0, 0.0),
                                    child: Container(
                                      width: 55.0,
                                      height: 55.0,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      child: Image.network(
                                        valueOrDefault<String>(
                                          widget.foto,
                                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/proyecto-granel-ed9sbw/assets/qymre9eth7zx/e368718f-7958-4032-8347-5e1737b9e9f5.jpg',
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        15.0, 0.0, 0.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 5.0),
                                          child: Text(
                                            valueOrDefault<String>(
                                              widget.name,
                                              '0',
                                            ),
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBtnText,
                                                  fontSize: 17.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                        ),
                                        Text(
                                          valueOrDefault<String>(
                                            widget.email,
                                            '0',
                                          ),
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .customColor6,
                                                fontSize: 15.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 1.0,
                        color: Color(0xCD14181B),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                height: MediaQuery.sizeOf(context).height * 0.75,
                decoration: BoxDecoration(
                  color: Color(0xFFE6E8F4),
                ),
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 0.0),
                  child: SingleChildScrollView(
                    controller: _model.columnController,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        StreamBuilder<List<ChatRoomRecord>>(
                          stream: queryChatRoomRecord(
                            queryBuilder: (chatRoomRecord) => chatRoomRecord
                                .where(
                                  'idConversacion',
                                  isEqualTo: valueOrDefault<String>(
                                            functions.generarIdChat(
                                                valueOrDefault<String>(
                                                  currentUserUid,
                                                  '0',
                                                ),
                                                valueOrDefault<String>(
                                                  widget.idOtro,
                                                  '0',
                                                )),
                                            '0',
                                          ) !=
                                          ''
                                      ? valueOrDefault<String>(
                                          functions.generarIdChat(
                                              valueOrDefault<String>(
                                                currentUserUid,
                                                '0',
                                              ),
                                              valueOrDefault<String>(
                                                widget.idOtro,
                                                '0',
                                              )),
                                          '0',
                                        )
                                      : null,
                                )
                                .orderBy('time'),
                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 50.0,
                                  height: 50.0,
                                  child: SpinKitThreeBounce(
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 50.0,
                                  ),
                                ),
                              );
                            }
                            List<ChatRoomRecord> listViewChatRoomRecordList =
                                snapshot.data!;
                            return ListView.builder(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount: listViewChatRoomRecordList.length,
                              itemBuilder: (context, listViewIndex) {
                                final listViewChatRoomRecord =
                                    listViewChatRoomRecordList[listViewIndex];
                                return wrapWithModel(
                                  model: _model.chatItemModels.getModel(
                                    widget.name,
                                    listViewIndex,
                                  ),
                                  updateCallback: () => setState(() {}),
                                  child: ChatItemWidget(
                                    key: Key(
                                      'Keyrd9_${widget.name}',
                                    ),
                                    message: valueOrDefault<String>(
                                      listViewChatRoomRecord.message,
                                      'mensaje',
                                    ),
                                    senderId: valueOrDefault<String>(
                                      listViewChatRoomRecord.senderId,
                                      '0',
                                    ),
                                    time: listViewChatRoomRecord.time,
                                    foto: valueOrDefault<String>(
                                      widget.foto,
                                      '0',
                                    ),
                                  ),
                                );
                              },
                              controller: _model.listViewController,
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                height: MediaQuery.sizeOf(context).height * 0.13,
                decoration: BoxDecoration(
                  color: Color(0xFFE6E8F4),
                ),
                child: Align(
                  alignment: AlignmentDirectional(0.00, 0.00),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 30.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              width: MediaQuery.sizeOf(context).width * 0.75,
                              height: 60.0,
                              decoration: BoxDecoration(
                                color: Color(0xFFE6E8F4),
                                borderRadius: BorderRadius.circular(6.0),
                                border: Border.all(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8.0, 0.0, 8.0, 0.0),
                                      child: TextFormField(
                                        controller: _model.txtMensajeController,
                                        focusNode: _model.txtMensajeFocusNode,
                                        autofocus: true,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: 'Escribe aquí...',
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: Color(0xCE57636C),
                                                  ),
                                          hintStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium,
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .customColor3,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          errorBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedErrorBorder:
                                              UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                        validator: _model
                                            .txtMensajeControllerValidator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 40.0,
                                    child: VerticalDivider(
                                      thickness: 1.0,
                                      color: Color(0xFFBEB7B7),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 7.0),
                              child: Container(
                                width: 45.0,
                                height: 45.0,
                                decoration: BoxDecoration(
                                  color:
                                      FlutterFlowTheme.of(context).customColor5,
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Color(0xFFE6E8F4),
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        var chatRoomRecordReference =
                                            ChatRoomRecord.collection.doc();
                                        await chatRoomRecordReference.set({
                                          ...createChatRoomRecordData(
                                            message: valueOrDefault<String>(
                                              _model.txtMensajeController.text,
                                              '0',
                                            ),
                                            senderId: valueOrDefault<String>(
                                              currentUserUid,
                                              '0',
                                            ),
                                            receiverId: valueOrDefault<String>(
                                              widget.idOtro,
                                              '0',
                                            ),
                                            idConversacion:
                                                valueOrDefault<String>(
                                              functions.generarIdChat(
                                                  valueOrDefault<String>(
                                                    currentUserUid,
                                                    '0',
                                                  ),
                                                  valueOrDefault<String>(
                                                    widget.idOtro,
                                                    '0',
                                                  )),
                                              '0',
                                            ),
                                          ),
                                          ...mapToFirestore(
                                            {
                                              'time':
                                                  FieldValue.serverTimestamp(),
                                            },
                                          ),
                                        });
                                        _model.enter =
                                            ChatRoomRecord.getDocumentFromData({
                                          ...createChatRoomRecordData(
                                            message: valueOrDefault<String>(
                                              _model.txtMensajeController.text,
                                              '0',
                                            ),
                                            senderId: valueOrDefault<String>(
                                              currentUserUid,
                                              '0',
                                            ),
                                            receiverId: valueOrDefault<String>(
                                              widget.idOtro,
                                              '0',
                                            ),
                                            idConversacion:
                                                valueOrDefault<String>(
                                              functions.generarIdChat(
                                                  valueOrDefault<String>(
                                                    currentUserUid,
                                                    '0',
                                                  ),
                                                  valueOrDefault<String>(
                                                    widget.idOtro,
                                                    '0',
                                                  )),
                                              '0',
                                            ),
                                          ),
                                          ...mapToFirestore(
                                            {
                                              'time': DateTime.now(),
                                            },
                                          ),
                                        }, chatRoomRecordReference);
                                        setState(() {
                                          _model.txtMensajeController?.clear();
                                        });
                                        await _model.listViewController
                                            ?.animateTo(
                                          _model.listViewController!.position
                                              .maxScrollExtent,
                                          duration: Duration(milliseconds: 100),
                                          curve: Curves.ease,
                                        );

                                        setState(() {});
                                      },
                                      child: Icon(
                                        Icons.send,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 30.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
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
