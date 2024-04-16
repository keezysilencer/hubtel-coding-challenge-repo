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
      theme: ThemeData(colorSchemeSeed: Colors.teal, useMaterial3: false),
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
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(20),
            child: Container(
              height: 40,
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(border: Border.all(color: Colors.grey), borderRadius: BorderRadius.circular(5), color: Colors.grey[300]),
              child: TabBar(
                  indicator: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.white),
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  tabs: [Tab(text: 'History'), Tab(text: 'Transaction Summary')]),
            ),
          ),
        ),
        body: SafeArea(
            child: TabBarView(children: [
          FutureBuilder<Object>(
              future: Future.delayed(Duration(seconds: 3), () => true),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return SingleChildScrollView(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                      Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Row(children: [
                            const Expanded(
                                child: TextField(
                                    decoration: InputDecoration(
                                        prefixIcon: Icon(Icons.search),
                                        border: OutlineInputBorder(borderSide: BorderSide.none),
                                        hintText: 'Search',
                                        filled: true))),
                            IconButton(onPressed: () {}, icon: const Icon(Icons.sort_rounded))
                          ])),
                      Chip(labelStyle: Theme.of(context).textTheme.bodySmall, label: Text('May 24, 2022')),
                      Card(
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                            Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                                child: Text(
                                  '14:45PM',
                                  style: Theme.of(context).textTheme.bodySmall,
                                )),
                            ListTile(
                              leading: const CircleAvatar(
                                backgroundColor: Colors.amber,
                              ),
                              titleTextStyle: Theme.of(context).textTheme.bodyLarge,
                              title: const Text('Emmanuel Rockson Kwabena Uncle Ebo'),
                              trailing: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Flexible(
                                    child: Chip(
                                        backgroundColor: Colors.green.withOpacity(0.3),
                                        avatar: const Icon(Icons.check_circle, color: Colors.green, size: 15),
                                        labelStyle: Theme.of(context).textTheme.labelSmall!.apply(color: Colors.green),
                                        label: const Text('Successful')),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 3),
                                    child: Text(
                                      'GHS 500',
                                      style: Theme.of(context).textTheme.bodySmall!.copyWith(fontWeight: FontWeight.bold),
                                    ),
                                  )
                                ],
                              ),
                              subtitle: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 5),
                                child: Text(
                                  '024 123 4567',
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                              ),
                            ),
                            const Divider(indent: 20, endIndent: 20),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                              child: Row(children: [
                                CircleAvatar(
                                  backgroundColor: Colors.deepPurpleAccent.withOpacity(0.6),
                                  radius: 10,
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 5),
                                  child: Text(
                                    'Personal',
                                    style: Theme.of(context).textTheme.labelSmall,
                                  ),
                                ),
                                Text('•'),
                                Expanded(
                                    child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 5),
                                  child: Text(
                                    'Cool your heart wai',
                                    style: Theme.of(context).textTheme.labelSmall,
                                  ),
                                )),
                                Icon(Icons.star, size: 15, color: Colors.amber)
                              ]),
                            )
                          ])),
                      Card(
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                            Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                                child: Text(
                                  '14:45PM',
                                  style: Theme.of(context).textTheme.bodySmall,
                                )),
                            ListTile(
                              leading: const CircleAvatar(backgroundColor: Colors.redAccent),
                              titleTextStyle: Theme.of(context).textTheme.bodyLarge,
                              title: const Text('Absa Bank'),
                              trailing: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Flexible(
                                    child: Chip(
                                        backgroundColor: Colors.red.withOpacity(0.4),
                                        avatar: const Icon(Icons.cancel, color: Colors.red, size: 15),
                                        labelStyle: Theme.of(context).textTheme.labelSmall!.apply(color: Colors.red.shade900),
                                        label: const Text('Failed')),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 3),
                                    child: Text(
                                      'GHS 500',
                                      style: Theme.of(context).textTheme.bodySmall!.copyWith(fontWeight: FontWeight.bold),
                                    ),
                                  )
                                ],
                              ),
                              subtitle: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 5),
                                child: Text(
                                  '024 123 4567',
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                              ),
                            ),
                            const Divider(indent: 20, endIndent: 20),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                              child: Row(children: [
                                CircleAvatar(
                                  backgroundColor: Colors.deepPurpleAccent.withOpacity(0.6),
                                  radius: 10,
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 5),
                                  child: Text(
                                    'Personal',
                                    style: Theme.of(context).textTheme.labelSmall,
                                  ),
                                ),
                                Text('•'),
                                Expanded(
                                    child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 5),
                                  child: Text(
                                    'Cool your heart wai',
                                    style: Theme.of(context).textTheme.labelSmall,
                                  ),
                                ))
                              ]),
                            ),
                          ])),
                      Chip(labelStyle: Theme.of(context).textTheme.bodySmall, label: Text('May 23, 2022')),
                      Card(
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                            Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                                child: Text(
                                  '14:45PM',
                                  style: Theme.of(context).textTheme.bodySmall,
                                )),
                            ListTile(
                              leading: const CircleAvatar(
                                backgroundColor: Colors.amber,
                              ),
                              titleTextStyle: Theme.of(context).textTheme.bodyLarge,
                              title: const Text('Emmanuel Rockson'),
                              trailing: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Flexible(
                                    child: Chip(
                                        backgroundColor: Colors.green.withOpacity(0.3),
                                        avatar: const Icon(Icons.check_circle, color: Colors.green, size: 15),
                                        labelStyle: Theme.of(context).textTheme.labelSmall!.apply(color: Colors.green),
                                        label: const Text('Successful')),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 3),
                                    child: Text(
                                      'GHS 500',
                                      style: Theme.of(context).textTheme.bodySmall!.copyWith(fontWeight: FontWeight.bold),
                                    ),
                                  )
                                ],
                              ),
                              subtitle: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 5),
                                child: Text(
                                  '024 123 4567',
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                              ),
                            ),
                            const Divider(indent: 20, endIndent: 20),
                            Padding(
                                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                                child: Row(children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.deepPurpleAccent.withOpacity(0.6),
                                    radius: 10,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 5),
                                    child: Text(
                                      'Other',
                                      style: Theme.of(context).textTheme.labelSmall,
                                    ),
                                  ),
                                  Text('•'),
                                  Expanded(
                                      child: Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 5),
                                    child: Text(
                                      'Cool your heart wai',
                                      style: Theme.of(context).textTheme.labelSmall,
                                    ),
                                  )),
                                  Icon(Icons.star, size: 15, color: Colors.amber)
                                ]))
                          ])),
                      Card(
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                            Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                                child: Text(
                                  '14:45PM',
                                  style: Theme.of(context).textTheme.bodySmall,
                                )),
                            ListTile(
                              leading: const CircleAvatar(
                                backgroundColor: Colors.amber,
                              ),
                              titleTextStyle: Theme.of(context).textTheme.bodyLarge,
                              title: const Text('Emmanuel Rockson'),
                              trailing: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Flexible(
                                    child: Chip(
                                        backgroundColor: Colors.green.withOpacity(0.3),
                                        avatar: const Icon(Icons.check_circle, color: Colors.green, size: 15),
                                        labelStyle: Theme.of(context).textTheme.labelSmall!.apply(color: Colors.green),
                                        label: const Text('Successful')),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 3),
                                    child: Text(
                                      'GHS 500',
                                      style: Theme.of(context).textTheme.bodySmall!.copyWith(fontWeight: FontWeight.bold),
                                    ),
                                  )
                                ],
                              ),
                              subtitle: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 5),
                                child: Text(
                                  '024 123 4567',
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                              ),
                            ),
                            const Divider(indent: 20, endIndent: 20),
                            Padding(
                                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                                child: Row(children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.deepPurpleAccent.withOpacity(0.6),
                                    radius: 10,
                                  ),
                                  Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 5),
                                      child: Text('Other', style: Theme.of(context).textTheme.labelSmall)),
                                  Icon(Icons.star, size: 15, color: Colors.amber)
                                ]))
                          ])),
                      SizedBox(
                        height: MediaQuery.sizeOf(context).height * 0.2,
                      )
                    ]),
                  );
                }
                return Center(child: CircularProgressIndicator.adaptive());
              }),
          Container(color: Colors.red)
        ])),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton.extended(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
          foregroundColor: Colors.white,
          backgroundColor: Colors.teal.shade300,
          onPressed: () {},
          icon: Icon(Icons.add_outlined),
          label: Text('SEND NEW'),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          elevation: 5,
          currentIndex: 2,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.black,
          items: [
            BottomNavigationBarItem(
                icon: CircleAvatar(
                  child: Icon(
                    Icons.home_filled,
                    color: Colors.black,
                  ),
                  backgroundColor: Colors.tealAccent,
                ),
                label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.send), label: 'Send'),
            BottomNavigationBarItem(icon: Icon(Icons.receipt), label: 'History'),
            BottomNavigationBarItem(icon: Icon(Icons.calendar_month), label: 'Schedule')
          ],
        ),
      ),
    );
  }
}
