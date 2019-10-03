import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'dart:async';

import 'package:manzu_app/src/models/activity_model.dart';
import 'package:manzu_app/src/providers/activity_provider.dart';

class ActivityPage extends StatefulWidget {
  _ActivityPageState createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage> {
  ScrollController _scrollController = new ScrollController();
  List<Activity> _listActivity = new List();
  final activityProvider = new ActivityProviders();
  int _ultimoNumero = 0;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _getActivites();
    // _scrollController.addListener(() {
    //   if (_scrollController.position.pixels ==
    //       _scrollController.position.maxScrollExtent) {
    //     // _agregar10();
    //     _fetchData();
    //   }
    // });
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white54,
          title: Text("Actividades",style: TextStyle(color: Colors.black87, fontSize: 25.0)),
        ),
        body: Stack(
          children: <Widget>[
            _createProgressBar(),
            Container(
              padding: EdgeInsets.only(top: 100.0),
              child: _createListViewActivity()
            ),
            _createLoading()
          ],
        )
    );
  }

  Widget _createListViewActivity() {
    return RefreshIndicator(
      child: ListView.builder(
        itemCount: _listActivity.length,
        controller: _scrollController,
        itemBuilder: (BuildContext context, int index) {
          final activity = _listActivity[index];

          return _createCard(activity);
        },
      ),
      onRefresh: _onRefresh,
    );
  }

  Widget _createCard(Activity activity) {
    final card = Card(
      elevation: 2.0,
      margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text(activity.name),
            subtitle: Text(activity.date),
            leading: Icon(Icons.photo_album, color: Colors.cyan),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        ],
      ),
    );

    return card;
  }

  _getActivites() async {
    _listActivity = await activityProvider.getActivites();

    setState(() {});
  }

  Future<Null> _fetchData() async {
    _isLoading = true;
    setState(() {});

    final duration = new Duration(seconds: 2);
    new Timer(duration, peticionHttp);
  }

  void peticionHttp() {
    _isLoading = false;
    _scrollController.animateTo(_scrollController.position.pixels + 100,
        curve: Curves.fastOutSlowIn, duration: Duration(milliseconds: 250));
    _getActivites();
  }

  Widget _createLoading() {
    if (_isLoading) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[CircularProgressIndicator()],
          ),
          SizedBox(
            height: 15.0,
          )
        ],
      );
    } else {
      return Container();
    }
  }

  Future<void> _onRefresh() async {
    final duration = Duration(seconds: 2);

    new Timer(duration, () {
      _listActivity.clear();
      _ultimoNumero++;
      _getActivites();
    });

    return Future.delayed(duration);
  }

  Widget _createProgressBar(){
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text("Progreso"),
              SizedBox(width: 230.0),
              Text("1/60"),
            ],
          ),
          SizedBox(height: 10.0),
          LinearPercentIndicator(
            padding: EdgeInsets.all(0.0),
            width: 320.0,
            lineHeight: 50.0,
            percent: 0.5,
            linearStrokeCap: LinearStrokeCap.butt,
            progressColor: Colors.blueAccent,
          ),
        ],
        
      ),
    );
  }
}
