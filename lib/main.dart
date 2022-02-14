import 'package:flutter/material.dart';
import 'package:nothing/matches.dart';
import 'package:nothing/score.dart';
import 'package:nothing/squad.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List _alert =
        List<String>.generate(20, (index) => 'T20 World Cup 202$index');
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            centerTitle: true,
            title: Container(
              height: 35,
              width: 240,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color.fromARGB(255, 58, 57, 57),
              ),
              child: TextField(
                decoration: InputDecoration(
                    labelText: 'Search',
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30))),
              ),
            ),
            leading: Icon(Icons.arrow_back),
            actions: [
              Icon(
                Icons.star,
              ),
              SizedBox(
                width: 20,
              )
            ],
          ),
          body: DefaultTabController(
            length: 3,
            child: NestedScrollView(
              headerSliverBuilder:
                  (BuildContext context, bool innerBoxIsScrolled) {
                return <Widget>[
                  SliverAppBar(
                    expandedHeight: 150.0,
                    iconTheme: IconThemeData(color: Colors.white),
                    floating: true,
                    // pinned: true,
                    flexibleSpace: FlexibleSpaceBar(
                      collapseMode: CollapseMode.pin,
                      centerTitle: true,
                      background: Padding(
                        padding: const EdgeInsets.all(50.0),
                        child: Row(
                          children: [
                            Image.asset(
                              'images/bd.png',
                              height: 50,
                              width: 60,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Bangladesh',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 20.0),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    showDialog(
                                        context: context,
                                        builder: (context) {
                                          return Dialog(
                                            child: ListView.builder(
                                              itemCount: _alert.length,
                                              itemBuilder: (context, index) {
                                                return Card(
                                                  child: ListTile(
                                                    title: Center(
                                                        child: Text(
                                                            _alert[index])),
                                                  ),
                                                );
                                              },
                                            ),
                                          );
                                        });
                                  },
                                  child: Text(
                                    'T20 World Cup 2022 Series',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 16.0, color: Colors.grey),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SliverPersistentHeader(
                    delegate: _SliverAppBarDelegate(
                      TabBar(
                        indicatorColor: Colors.redAccent,
                        indicatorSize: TabBarIndicatorSize.label,
                        padding: EdgeInsets.only(left: 25, right: 25),
                        labelColor: Colors.white,
                        unselectedLabelColor: Colors.grey,
                        tabs: [
                          Tab(text: "Matches"),
                          Tab(text: "Standing"),
                          Tab(text: "Squad"),
                        ],
                      ),
                    ),
                    pinned: true,
                  ),
                ];
              },
              body: TabBarView(children: [Matches(), Score(), Squad()]),
            ),
          ),
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    // ignore: unnecessary_new
    return new Container(
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
