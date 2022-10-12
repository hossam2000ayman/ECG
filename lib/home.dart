import 'package:ecg/constantSize.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //automaticallyImplyLeading: false,
        title: const Text('E.C.G'),
        backgroundColor: HexColor("#08089E"),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.messenger)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                'Welcome : Edward Abbeo',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              constSize(),
              homeMeter(),
              Card(
                elevation: 0.5,
                child: Column(
                  children: const <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 15.0),
                      child: Text(
                        'Payment History',
                        style: TextStyle(
                          // color: HexColor("#08089E"),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/eddie.jpg'),
                      ),
                      title: Text(
                        'Prepaid Purchased',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text("Ghc 50, 31-Dec. 2021, 11:15am"),
                      trailing: Icon(Icons.read_more),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/eddie.jpg'),
                      ),
                      title: Text(
                        'Prepaid Purchased',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text("Ghc 100, 15-Dec. 2021, 12:22pm"),
                      trailing: Icon(Icons.read_more),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/eddie.jpg'),
                      ),
                      title: Text(
                        'Prepaid Purchased',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text("Ghc 150, 5-Jan. 2022, 1:15am"),
                      trailing: Icon(Icons.read_more),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/eddie.jpg'),
                      ),
                      title: Text(
                        'Prepaid Purchased',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text("Ghc 50, 2-Feb. 2022, 3:34pm"),
                      trailing: Icon(Icons.read_more),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/eddie.jpg'),
                      ),
                      title: Text(
                        'Prepaid Purchased',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text("Ghc 50, 3-March. 2022, 9:07am"),
                      trailing: Icon(Icons.read_more),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/eddie.jpg'),
                      ),
                      title: Text(
                        'Prepaid Purchased',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text("Ghc 50, 5-April. 2022, 11:15am"),
                      trailing: Icon(Icons.read_more),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (() {}),
        backgroundColor: HexColor("#08089E"),
        child: const Icon(Icons.add),
      ),
      drawer: homeDrawer(context),
    );
  }

  Card homeMeter() {
    return Card(
      elevation: 0.5,
      child: SingleChildScrollView(
        child: Row(
          children: <Widget>[
            Column(
              children: [
                Image.asset(
                  "assets/images/meter.png",
                  width: 100,
                  height: 150,
                ),
              ],
            ),
            const SizedBox(
              width: 15,
            ),
            Column(
              children: [
                Text(
                  'Meter : MT100000',
                  style: TextStyle(
                    color: HexColor("#08089E"),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                constSize(),
                Text(
                  'Balance : GHC 25.46',
                  style: TextStyle(
                    color: HexColor("#08089E"),
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                constSize(),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: HexColor("#F4B807"),
                      fixedSize: const Size(150.0, 20.0)),
                  child: const Text(
                    'Top Up',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Drawer homeDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            // <-- SEE HERE
            decoration: BoxDecoration(
              color: HexColor("#08089E"),
            ),
            accountName: const Text(
              "Edward Abbeo",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            accountEmail: const Text(
              "eabbeo@live.com.com",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            currentAccountPicture: const CircleAvatar(
              backgroundImage: AssetImage('assets/images/eddie.jpg'),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.bubble_chart,
            ),
            title: const Text('Meter Management'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.settings,
            ),
            title: const Text('User Settings'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.report,
            ),
            title: const Text('Report Issue'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.call_sharp,
            ),
            title: const Text('Contact Us'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
