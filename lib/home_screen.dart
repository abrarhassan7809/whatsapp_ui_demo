import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('WhatsApp'),
            bottom: const TabBar(
              tabs: [
                Tab(
                  child: Icon(Icons.camera_alt),
                ),
                Tab(
                  child: Text('Chats'),
                ),
                Tab(
                    child: Text('Status'),
                ),
                Tab(
                    child: Text('Call'),
                ),
              ],
            ),
            actions: [
              const Icon(Icons.search,),
              PopupMenuButton(
                icon: const Icon(Icons.more_vert_outlined),
                  itemBuilder: (context) => [
                    const PopupMenuItem(
                      value: '1',
                      child: Text('New Group'),
                    ),
                    const PopupMenuItem(
                      value: '2',
                      child: Text('Settings'),
                    ),
                    const PopupMenuItem(
                      value: '3',
                      child: Text('Logout'),
                    ),
                  ],
              ),
              const SizedBox(width: 10,),
            ],
          ),
          body: TabBarView(
            children: [
              const Text('Camera'),
              ListView.builder(
                itemCount: 50,
                itemBuilder: (context, index){
                  return const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage('https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                    ),
                    title: Text('Sheela'),
                    subtitle: Text('Cat is cute'),
                    trailing: Text('6:29 PM'),
                  );
                },
              ),
              ListView.builder(
                itemCount: 50,
                itemBuilder: (context, index){
                  if (index == 0){
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('New Updates'),
                          ListTile(
                            leading: Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.green,
                                    width: 3,
                                  )
                              ),
                              child: const CircleAvatar(
                                backgroundImage: NetworkImage('https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                              ),
                            ),
                            title: const Text('Sheela'),
                            subtitle: const Text('25m ago'),
                          ),
                        ],
                      ),
                    );
                  }else{
                    return ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.green,
                              width: 3,
                            )
                        ),
                        child: const CircleAvatar(
                          backgroundImage: NetworkImage('https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                        ),
                      ),
                      title: const Text('Sheela'),
                      subtitle: const Text('25m ago'),
                    );
                  }

                },
              ),
              ListView.builder(
                itemCount: 50,
                itemBuilder: (context, index){
                  return ListTile(
                    leading: const CircleAvatar(
                      backgroundImage: NetworkImage('https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                    ),
                    title: const Text('Sheela'),
                    subtitle: Text(index /2 == 0 ? 'You missed video call' : 'You missed audio call'),
                    trailing: Icon(index /2 == 0 ? Icons.video_call : Icons.phone),
                  );
                },
              ),
            ],
          ),
        ),
    );
  }
}
