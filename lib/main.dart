import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}
enum ScreenType { screen1, screen2,screen3, screen4, screen5,screen6, screen7, screen8, screen9,screen10, screen11, screen12 , screen13, screen14, screen15, screen16, screen17, screen18, screen19, screen20, screen21, screen22, screen23, screen24, screen25}
extension ScreenExtension on ScreenType {
  String get title {
    switch (this) {
      case ScreenType.screen1:
        return 'Snack_bar';
      case ScreenType.screen2:
        return 'Container';
      case ScreenType.screen4:
        return 'Text';
      case ScreenType.screen3:
        return 'Dialog';
      case ScreenType.screen5:
        return 'listview';
      case ScreenType.screen6:
        return 'ListTile';
      case ScreenType.screen7:
        return 'Column';
      case ScreenType.screen8:
        return 'Row';
      case ScreenType.screen9:
        return 'Gesture';
      case ScreenType.screen10:
        return 'Navigator';
      case ScreenType.screen11:
        return 'TextField';
      case ScreenType.screen12:
        return 'Form';
      case ScreenType.screen13:
        return 'Bottom_Sheet';
      case ScreenType.screen14:
        return 'single_child_scrollview';
      case ScreenType.screen15:
        return 'Gridview';
      case ScreenType.screen16:
        return 'card';
      case ScreenType.screen17:
        return 'future';
      case ScreenType.screen18:
        return 'Stream';
      case ScreenType.screen19:
        return 'Drawer';
      case ScreenType.screen20:
        return 'Tab_bar';
      case ScreenType.screen21:
        return 'Page_view';
      case ScreenType.screen22:
        return 'flexible_expanded';
      case ScreenType.screen23:
        return 'stack';
      case ScreenType.screen24:
        return 'Exercise';
      case ScreenType.screen25:
        return 'Bottom_navigation';
    }
  }

  Widget get screenWidget {
    switch (this) {
      case ScreenType.screen1:
        return const Screen1();
      case ScreenType.screen2:
        return const Screen2();
      case ScreenType.screen4:
        return const Screen4();
      case ScreenType.screen3:
        return const Screen3();
      case ScreenType.screen5:
        return const Screen5();
      case ScreenType.screen6:
        return const Screen6();
      case ScreenType.screen7:
        return const Screen7();
      case ScreenType.screen8:
        return const Screen8();
      case ScreenType.screen9:
        return const Screen9();
      case ScreenType.screen10:
        return const Screen10();
      case ScreenType.screen11:
        return const Screen11();
      case ScreenType.screen12:
        return const Screen12();
      case ScreenType.screen13:
        return const Screen13();
      case ScreenType.screen14:
        return const Screen14();
      case ScreenType.screen15:
        return const Screen15();
      case ScreenType.screen16:
        return const Screen16();
      case ScreenType.screen17:
        return const Screen17();
      case ScreenType.screen18:
        return const Screen18();
      case ScreenType.screen19:
        return const Screen19();
      case ScreenType.screen20:
        return const Screen20();
      case ScreenType.screen21:
        return const Screen21();
      case ScreenType.screen22:
        return const Screen22();
      case ScreenType.screen23:
        return const Screen23();
      case ScreenType.screen24:
        return const Screen24();
      case ScreenType.screen25:
        return const Screen25();
    }

  }
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Enum Navigation Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomeScreen(),
    );
  }
}
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            childAspectRatio: 2
        ),
        itemCount: ScreenType.values.length,
        itemBuilder: (context, index) {
          final screen = ScreenType.values[index];
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => Scaffold(
                      appBar: AppBar(title: Text(screen.title)),
                      body: screen.screenWidget,
                    ),
                  ),
                );
              },
              child: Text(screen.title),
            ),
          );
        },
      ),
    );
  }
}

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  void _showSnackBar() {
    final snackBar = SnackBar(
      content: const Text(' Đây là SnackBar '),
      duration: const Duration(seconds: 4),
      backgroundColor: Colors.indigo,
      elevation: 10,
      behavior: SnackBarBehavior.floating,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      dismissDirection: DismissDirection.horizontal,
    );

    // Xóa SnackBar cũ nếu có
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: _showSnackBar,
          child: const Text('Hiện SnackBar'),
        ),
      ),
    );
  }
}


class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}
class _Screen2State extends State<Screen2> {
  Color bgColor = Colors.white;
  @override
  Widget build(BuildContext context) {
     return Center(
       child: Container(
         width: 300,
         height: 300,
         padding: const EdgeInsets.all(16),
         margin: const EdgeInsets.symmetric(vertical: 20),
         alignment: Alignment.center,

         decoration: BoxDecoration(
           color: Colors.blue, // màu nền
           borderRadius: BorderRadius.circular(16), // bo góc
           border: Border.all(color: Colors.black, width: 2), // viền đen
           boxShadow: [
             BoxShadow(
               color: Colors.black26,
               blurRadius: 8,
               offset: Offset(2, 2),
             )
           ], // đổ bóng nhẹ
         ),

         child: const Text(
           'Container',
           style: TextStyle(color: Colors.white, fontSize: 18),
         ),

     ),);
  }
}

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          title: const Text('Thông báo'),
          content: const Text('Đây là AlertDialog '),

          // Các nút hành động
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Hủy'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('OK'),
            ),
          ],


          backgroundColor: Colors.white,
          elevation: 12,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            // side: const BorderSide(color: Colors.blueAccent, width: 2),
          ),
          // insetPadding: const EdgeInsets.symmetric(horizontal: 40, vertical: 24),
          alignment: Alignment.center,
          actionsAlignment: MainAxisAlignment.end,

          // Style text
          titleTextStyle: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.indigo),
          contentTextStyle: const TextStyle(fontSize: 18, color: Colors.black87),

          scrollable: true,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () => _showDialog(context),
          child: const Text("Hiện Dialog"),
        ),
      ),
    );
  }
}




class Screen4 extends StatelessWidget {
  const Screen4({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Caption: Stay - Justin Bieber',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Text(
                '''
     I do the same thing I told you that I never would
     I told you I'd change, even when I knew I never could
     I know that I can't find nobody else as good as you
     I need you to stay, need you to stay, hey (oh)
     I get drunk, wake up, I'm wasted still
     I realize the time that I wasted here
     I feel like you can't feel the way I feel
     Oh, I'll be f- up if you can't be right here
     Oh, ooh-woah (oh, ooh-woah, ooh-woah)
     ...
     Woah-oh
     I need you to stay, need you to stay, hey ''',
                textAlign: TextAlign.center,
                style: TextStyle(fontStyle: FontStyle.italic, color: Colors.grey[600]),
              ),
            ),

          ],
        ),
      ),
    );
  }
}


class Screen5 extends StatelessWidget {
  const Screen5({super.key});

  final List<Map<String, String>> moods = const [
    {'emoji': '😎', 'label': 'fell confident'},
    {'emoji': '😴', 'label': 'fell sleepy'},
    {'emoji': '🤔', 'label': 'fell wonder about something'},
    {'emoji': '🥹', 'label': 'fell sad'},
    {'emoji': '🔥', 'label': 'fire '},
    {'emoji': '🔥', 'label': 'fire '},
    {'emoji': '🔥', 'label': 'fire '},
    {'emoji': '🔥', 'label': 'fire '},
    {'emoji': '🔥', 'label': 'fire '},
    {'emoji': '🔥', 'label': 'fire '},
    {'emoji': '🔥', 'label': 'fire '},
    {'emoji': '🔥', 'label': 'fire '},
    {'emoji': '🔥', 'label': 'fire '},
    {'emoji': '🔥', 'label': 'fire '},
    {'emoji': '🔥', 'label': 'fire '},
    {'emoji': '🔥', 'label': 'fire '},
    {'emoji': '🔥', 'label': 'fire '},
    {'emoji': '🔥', 'label': 'fire '},
    {'emoji': '🔥', 'label': 'fire '},
    {'emoji': '🔥', 'label': 'fire '},
    {'emoji': '🔥', 'label': 'fire '},
    {'emoji': '🔥', 'label': 'fire '},
    {'emoji': '🔥', 'label': 'fire '},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: moods.length,
      itemBuilder: (context, index) {
        final item = moods[index];
        return Card(
          child: ListTile(
            leading: Text(item['emoji']!, style: TextStyle(fontSize: 28)),
            title: Text(item['label']!),
          ),
        );
      },
    );
  }
}

class Screen6 extends StatelessWidget {
  const Screen6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Screen 6")),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: ListTile(
          leading: Icon(Icons.account_circle, size: 40, color: Colors.blue), // Icon bên trái
          title: Text(
            'Tên người dùng',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            'Đây là subtitle của ListTile',
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),
          trailing: Icon(Icons.arrow_forward_ios, size: 20),
          isThreeLine: false,
          dense: false,
          enabled: true,
          selected: false,
          tileColor: Color(0xFFF0F0F0),
          selectedTileColor: Color(0xFFCCE5FF),
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
          onTap: null,
        ),
      ),
    );
  }
}

class Screen7 extends StatelessWidget {
  const Screen7({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.home, color: Colors.red),
          SizedBox(height: 20),
          Icon(Icons.favorite, color: Colors.pink),
          SizedBox(height: 20),
          Icon(Icons.settings, color: Colors.grey)
        ],
      ),
    );
  }
}
class Screen8 extends StatelessWidget {
  const Screen8({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: () {}, child: Text('Like ')),
          SizedBox(width: 10),
          ElevatedButton(onPressed: () {}, child: Text('Share ')),
          SizedBox(width: 10),
          ElevatedButton(onPressed: () {}, child: Text(' Subscribe')),
        ]
      ),);
  }
}

class Screen9 extends StatelessWidget {
  const Screen9({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
              child: const Text("Về HomeScreen"),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                print('Gesture tapped!');
              },
              onDoubleTap: () {
                print('Double tapped!');
              },
              onLongPress: () {
                print('Long pressed!');
              },
              child: Container(
                width: 200,
                height: 100,
                alignment: Alignment.center,
                color: Colors.blue,
                child: const Text(
                  'GestureDetector',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



class Screen10 extends StatelessWidget {
  const Screen10({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Screen9()),
            );
          },
          child: const Text('Đi tới Screen9'),
        ),
      ),
    );
  }
}

class Screen11 extends StatefulWidget {
  const Screen11({super.key});

  @override
  State<Screen11> createState() => _Screen11State();
}

class _Screen11State extends State<Screen11> {
  final TextEditingController _controller = TextEditingController();
  String _result = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z\s]')),
              ],

              decoration: const InputDecoration(
                labelText: 'Nhập tên của bạn',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _result = _controller.text;
                });
              },
              child: const Text('Hiển thị'),
            ),
            const SizedBox(height: 20),
            Text(
              _result,
              style: const TextStyle(fontSize: 20, color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}
class Screen12 extends StatefulWidget {
  const Screen12({super.key});

  @override
  State<Screen12> createState() => _Screen12State();
}

class _Screen12State extends State<Screen12> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Ảnh nền từ Internet
          Image.network(
            'https://images.pexels.com/photos/531880/pexels-photo-531880.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
            fit: BoxFit.cover,
          ),

          // Lớp phủ màu tối nhẹ
          Container(
            color: Colors.black
          ),

          // Nội dung Form chính
          Padding(
            padding: const EdgeInsets.all(16),
            child: Center(
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.9),
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 8,
                      offset: Offset(0, 4),
                    )
                  ],
                ),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        'Đăng nhập',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        controller: _emailController,
                        decoration: const InputDecoration(labelText: 'Email'),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Không được để trống';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 12),
                      TextFormField(
                        controller: _passController,
                        decoration: const InputDecoration(
                            labelText: 'Mật khẩu'),
                        obscureText: true,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Không được để trống';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: const Text('Thông báo'),
                                  content: const Text('Đăng nhập thành công!'),
                                  actions: [
                                    TextButton(
                                      onPressed: () => Navigator.pop(context),
                                      child: const Text('OK'),
                                    )
                                  ],
                                );
                              },
                            );
                          }
                        },
                        child: const Text('Đăng nhập'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
  class Screen13 extends StatelessWidget {
  const Screen13({super.key});

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Icon(Icons.share),
              title: const Text('Chia sẻ'),
              onTap: () {
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Bạn đã chọn: Chia sẻ')),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.edit),
              title: const Text('Sửa'),
              onTap: () {
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Bạn đã chọn: Sửa')),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.delete),
              title: const Text('Xóa'),
              onTap: () {
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Bạn đã chọn: Xóa')),
                );
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () => _showBottomSheet(context),
          child: const Text('Mở Menu'),
        ),
      ),
    );
  }
}

class Screen14 extends StatelessWidget {
  const Screen14({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: List.generate(10, (index) {
              return Card(
                margin: const EdgeInsets.symmetric(vertical: 8),
                child: ListTile(
                  leading: const Icon(Icons.person),
                  title: Text('Người dùng số ${index + 1}'),
                  subtitle: const Text('Thành viên Flutter Club'),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
class Screen15 extends StatelessWidget {
  const Screen15({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = [
      Colors.red,
      Colors.blue,
      Colors.green,
      Colors.orange,
      Colors.purple,
      Colors.teal
    ];

    return Scaffold(
      body: GridView.count(
        crossAxisCount: 3, // 3 cột
        children: List.generate(6, (index) {
          return Container(
            margin: const EdgeInsets.all(8),
            color: colors[index],
            child: const Center(
              child: Icon(Icons.face, color: Colors.white, size: 40),
            ),
          );
        }),
      ),
    );
  }
}
class Screen16 extends StatelessWidget {
  const Screen16({super.key});

  @override
  Widget build(BuildContext context) {
    final fruits = ["Táo", "Cam", "Chuối", "Dưa hấu", "Nho", "Xoài"];

    return Scaffold(

      body: GridView.builder(
        padding: const EdgeInsets.all(8),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // 2 cột
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 1.2,
        ),
        itemCount: fruits.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Bạn chọn ${fruits[index]}')),
              );
            },
            child: Card(
              elevation: 3,
              color: Colors.lightBlue.shade100,
              child: Center(
                child: Text(
                  fruits[index],
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
class Screen17 extends StatelessWidget {
  const Screen17({super.key});

  Future<String> fetchData() async {
    await Future.delayed(Duration(seconds: 2));
    return "Dữ liệu đã được tải bằng Future!";
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FutureBuilder<String>(
        future: fetchData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          } else if (snapshot.hasError) {
            return Text('Lỗi: ${snapshot.error}');
          } else {
            return Text(snapshot.data!, style: TextStyle(fontSize: 18));
          }
        },
      ),
    );
  }
}
class Screen18 extends StatefulWidget {
  const Screen18({super.key});

  @override
  State<Screen18> createState() => _Screen18State();
}

class _Screen18State extends State<Screen18> {
  Stream<int> counterStream() async* {
    int count = 0;
    while (true) {
      await Future.delayed(Duration(seconds: 1));
      yield count++;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: StreamBuilder<int>(
        stream: counterStream(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Text('Đang bắt đầu stream...');
          } else if (snapshot.hasError) {
            return Text('Lỗi: ${snapshot.error}');
          } else {
            return Text('Đếm: ${snapshot.data}', style: TextStyle(fontSize: 24));
          }
        },
      ),
    );
  }
}



class Screen19 extends StatelessWidget {
  const Screen19({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: Text('Item 1'),
            ),
            ListTile(
              title: Text('Item 2'),
            ),
          ],
        ),
      ),

      body: const Center(
        child: Text(' Nội dung chính '),
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Trang chủ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Cài đặt',
          ),
        ],
      ),
    );
  }
}





class Screen20 extends StatelessWidget {
  const Screen20({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6, // 3 tab: Home, Search, Profile
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home), text: 'Home'),
              Tab(icon: Icon(Icons.account_circle_outlined), text: 'Profile'),
              Tab(icon: Icon(Icons.ondemand_video), text: 'Video'),
              Tab(icon: Icon(Icons.group), text: 'Group'),
              Tab(icon: Icon(Icons.notifications_none), text: 'Notifications'),
              Tab(icon: Icon(Icons.menu), text: 'Menu')
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text(' Trang chủ')),
            Center(child: Text(' Hồ sơ cá nhân')),
            Center(child: Text(' Video')),
            Center(child: Text(' Nhóm')),
            Center(child: Text(' Thông báo')),
            Center(child: Text(' Menu')),
          ],
        ),
      ),
    );
  }
}

class Screen21 extends StatelessWidget {
  const Screen21({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            color: Colors.redAccent,
            child: const Center(
              child: Text(
                'Trang 1',
                style: TextStyle(fontSize: 32, color: Colors.white),
              ),
            ),
          ),
          Container(
            color: Colors.green,
            child: const Center(
              child: Text(
                'Trang 2',
                style: TextStyle(fontSize: 32, color: Colors.white),
              ),
            ),
          ),
          Container(
            color: Colors.blue,
            child: const Center(
              child: Text(
                'Trang 3',
                style: TextStyle(fontSize: 32, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Screen22 extends StatelessWidget {
  const Screen22({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Ô 1: Chiều cao cố định
          Container(
            height: 100,
            color: Colors.red,
            child: const Center(child: Text('Cố định 100')),
          ),

          // Ô 2: Chiếm toàn bộ phần còn lại
          Expanded(
            flex: 9,
            child: Container(
              color: Colors.green,
              child: const Center(child: Text('Expanded - chiếm hết phần còn lại')),
            ),
          ),

          // Ô 3: Co giãn theo nội dung, khg bị ép
          Flexible(
            flex: 1,
            child: Container(
              color: Colors.blue,
              height: 80,
              child: const Center(child: Text(' Flexible - cao 80 nhưng co giãn được')),
            ),
          ),
        ],
      ),
    );
  }
}

class Screen23 extends StatelessWidget {
  const Screen23({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Ô 1: Nền xám
            Container(
              width: 200,
              height: 200,
              color: Colors.grey[300],
            ),

            // Ô 2: Positioned xanh ở góc phải dưới
            Positioned(
              right: 0,
              bottom: 0,
              child: Container(
                width: 80,
                height: 80,
                color: Colors.green,
                child: Center(child: Text('Bottom Right')),
              ),
            ),

            // Ô 3: Đỏ nằm chính giữa
            Container(
              width: 100,
              height: 100,
              color: Colors.red,
              child: Center(child: Text('Center')),
            ),
          ],
        ),
      ),
    );
  }
}

class Screen24 extends StatelessWidget {
  const Screen24({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // 👉 Bọc Stack trong một SizedBox lớn hơn
        child: SizedBox(
          width: 250,
          height: 300, // Lớn hơn chiều cao container chính + phần tràn
          child: Stack(
            clipBehavior: Clip.none, // Cho phép tràn ra ngoài
            alignment: Alignment.center,
            children: [
              Container(
                width: 250,
                height: 250,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2),
                ),
              ),


              Positioned(
                top: -50,
                child: GestureDetector(
                  onTap: () {
                    print('Tapped on the yellow box!');
                  },
                  child: Container(
                    width: 150,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.black),
                    ),
                    child: const Center(
                      child: Text(
                        'Tap Me!',
                        style: TextStyle(fontSize: 16),
                      ),
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
class Screen25 extends StatefulWidget {
  const Screen25({super.key});

  @override
  State<Screen25> createState() => _Screen25State();
}

class _Screen25State extends State<Screen25> {
  int _currentIndex = 0;

  final List<Widget> _pages = const [
    Center(child: Text(' Home Page', style: TextStyle(fontSize: 24))),
    Center(child: Text(' Discover Page', style: TextStyle(fontSize: 24))),
    Center(child: Text(' Upload Page', style: TextStyle(fontSize: 24))),
    Center(child: Text(' Inbox Page', style: TextStyle(fontSize: 24))),
    Center(child: Text(' Profile Page', style: TextStyle(fontSize: 24))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Discover'),
          BottomNavigationBarItem(icon: Icon(Icons.add_box, size: 32), label: 'Upload'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Inbox'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}











