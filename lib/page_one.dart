import 'package:flutter/material.dart';

class ExampleWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ExampleState();
}

class ExampleState extends State<ExampleWidget>
    with SingleTickerProviderStateMixin {
  ScrollController scrollController = ScrollController();
  TabController _tabController;
  final _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    scrollController.addListener(() {
      if (scrollController.position.pixels ==
          scrollController.position.maxScrollExtent) {
        onLoadMore();
      }
    });
  }

  @override
  void dispose() {
    scrollController.removeListener(onLoadMore);
    _tabController.dispose();
    super.dispose();
  }

  onLoadMore() {
    List anotherList = List<int>.generate(10, (int index) => index);
    setState(() {
      _dataList.addAll(anotherList);
    });
  }

  List _dataList = List<int>.generate(10, (int index) => index, growable: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Builder(builder: (BuildContext context) {
              return NestedScrollView(
                  //controller: scrollController,
                  headerSliverBuilder:
                      (BuildContext context, bool innerBoxIsScrolled) {
                return <Widget>[
                  SliverAppBar(
                    title: Text('data'),
                    bottom: getTabHeader(),
                  )
                ];
              }, body: Builder(builder: (BuildContext context) {
                return Stack(children: <Widget>[
                  getTabBody(),
                ]);
              }));
            }),
          )
        ],
      ),
    );
  }

  Widget getTabHeader() {
    return TabBar(
      controller: _tabController,
      tabs: <Widget>[
        Tab(child: Text("Tab 1")),
        Tab(child: Text("Tab 2")),
        Tab(child: Text("Tab 3")),
      ],
    );
  }

  Widget getTabBody() {
    return Column(
      children: <Widget>[
        Expanded(
            child: TabBarView(controller: _tabController, children: [
          Container(
            child:
                //Solved with SingleChildScrollView with scrollController
                SingleChildScrollView(
              key: _scaffoldKey,
              controller: scrollController,
              child: MediaQuery.removePadding(
                context: context,
                removeTop: true,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: _dataList.length,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 100,
                      child: ListTile(
                        title: Text('$index'),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
          Container(child: Container()),
          Container(child: Container())
        ]))
      ],
    );
  }
}
