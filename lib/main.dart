import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hubtel Demo',
      theme: ThemeData(
        colorSchemeSeed: Colors.teal,
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 5,
          bottom: const TabBar(tabs: [Tab(text: 'History'), Tab(text: 'Transaction Summary')]),
        ),
        body: SafeArea(
            child: TabBarView(children: [
          Column(children: [
            Row(
              children: [
                const Expanded(
                  child: TextField(
                      decoration: InputDecoration(prefixIcon: Icon(Icons.search), border: OutlineInputBorder(), hintText: 'Search', filled: true)),
                ),
                IconButton(onPressed: () {}, icon: const Icon(Icons.sort_rounded))
              ],
            ),
            const Chip(label: Text('May 24, 2022')),
            Card(
                margin: const EdgeInsets.all(20),
                child: Column(children: [
                  const Text('14:45PM'),
                  ListTile(
                    leading: const CircleAvatar(child: Text('M')),
                    title: const Text('Emmanuel Rockson Kwabena Uncle Ebo'),
                    trailing: Chip(
                        side: BorderSide.none,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                        backgroundColor: Colors.green.withOpacity(0.6),
                        avatar: const Icon(Icons.check_circle, color: Colors.green),
                        labelStyle: Theme.of(context).textTheme.labelSmall!.apply(color: Colors.green),
                        label: const Text('Successful')),
                    subtitle: Row(
                      children: [const Text('024 123 4567'), Text('GHS 500', style: Theme.of(context).textTheme.bodyMedium)],
                    ),
                  ),
                  const Divider(),
                  const Row(children: [
                    CircleAvatar(child: Text('M')),
                    Text('--'),
                    Expanded(child: Text('Cool your heart wai')),
                    Icon(Icons.star, color: Colors.amber)
                  ])
                ]))
          ]),
          Container(color: Colors.red)
        ])),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton.extended(
          foregroundColor: Colors.white,
          backgroundColor: Colors.teal.shade300,
          onPressed: () {},
          icon: Icon(Icons.add),
          label: Text('SEND NEW'),
        ),
        bottomNavigationBar: NavigationBar(
          onDestinationSelected: (value) {},
          selectedIndex: 2,
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: ''),
            NavigationDestination(icon: Icon(Icons.send), label: 'Send'),
            NavigationDestination(icon: Icon(Icons.receipt), label: 'History'),
            NavigationDestination(icon: Icon(Icons.calendar_month), label: 'Schedule')
          ],
        ),
      ),
    );
  }
}
