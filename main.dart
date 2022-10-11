// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, curly_braces_in_flow_control_structures

import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static const customSwatch = MaterialColor(
    0xFFFF5252,
    <int, Color>{
      50: Color(0xFFFFEBEE),
      100: Color(0xFFFFCDD2),
      200: Color(0xFFEF9A9A),
      300: Color(0xFFE57373),
      400: Color(0xFFEF5350),
      500: Color(0xFFFF5252),
      600: Color(0xFFE53935),
      700: Color(0xFFD32F2F),
      800: Color(0xFFC62828),
      900: Color(0xFFB71C1C),
    },
  );

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: customSwatch,
      ),
      debugShowCheckedModeBanner: false,
      home: const loginpage(),
    );
  }
}

class loginpage extends StatefulWidget {
  const loginpage({Key? key}) : super(key: key);

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  var username = new TextEditingController();
  var password = new TextEditingController();
  String temp = "";
  bool password_visible = true, passworderror = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(child: const Text("Temple Finder")),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.only(top: 35.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(flex: 1, child: Text("")),
                    Expanded(
                      flex: 5,
                      child: Container(
                        child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8, vertical: 16),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 7,
                                  child: Container(
                                    child: TextField(
                                      onChanged: (s) {
                                        setState(() {
                                          temp = s;
                                        });

                                        // if(s.contains("@bitsathy.ac.in")){
                                        //
                                        //   setState(() {
                                        //     usernameerror=false;
                                        //   });
                                        // }
                                        // else{
                                        //   setState(() {
                                        //     usernameerror=true;
                                        //   });
                                        // }
                                      },
                                      controller: username,
                                      decoration: InputDecoration(
                                        border: UnderlineInputBorder(),
                                        labelText: 'Email',
                                      ),
                                    ),
                                  ),
                                ),
                                // Expanded(flex:3,child: Container(width: double.infinity,)),
                              ],
                            )),
                      ),
                    ),
                    Expanded(flex: 1, child: Text("")),
                  ],
                ),
                Row(
                  children: [
                    Expanded(flex: 1, child: Text("")),
                    Expanded(
                      flex: 5,
                      child: Container(
                        child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8, vertical: 16),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 7,
                                  child: Container(
                                    child: TextField(
                                      obscureText: password_visible,
                                      controller: password,
                                      decoration: InputDecoration(
                                        suffixIcon: IconButton(
                                            onPressed: () {
                                              setState(() {
                                                password_visible =
                                                    !password_visible;
                                              });
                                            },
                                            icon: password_visible
                                                ? Icon(
                                                    Icons.remove_red_eye,
                                                    color: Colors.grey,
                                                  )
                                                : Icon(Icons.remove_red_eye)),
                                        errorText: passworderror
                                            ? "InValid Password"
                                            : null,
                                        border: UnderlineInputBorder(),
                                        labelText: 'Password',
                                      ),
                                    ),
                                  ),
                                ),
                                // Expanded(flex:3,child: Container(width: double.infinity,)),
                              ],
                            )),
                      ),
                    ),
                    Expanded(flex: 1, child: Text("")),
                  ],
                ),
                Column(children: [
                  GestureDetector(
                    onTap: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => religion_page())),
                    },
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                      child: Container(
                        child: (Text(
                          'Login',
                          style: TextStyle(
                              backgroundColor: Colors.black,
                              fontSize: 20,
                              color: Colors.white),
                        )),
                      ),
                    ),
                  ),
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class religion_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
            child: Text(
          'Temple Finder',
          style: TextStyle(color: Colors.white),
        )),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () => {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => christian_temple()))
                            },
                            child: Container(
                              width: currentWidth * 0.4,
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Column(
                                  children: [
                                    Card(
                                      child: Image(
                                        image: AssetImage('assets/hindu.jpg'),
                                        height: 250,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          0, 10, 0, 10),
                                      child: Text(
                                        'HINDU TEMPLE',
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () => {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => christian_temple()))
                            },
                            child: Container(
                              width: currentWidth * 0.4,
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Column(
                                  children: [
                                    Card(
                                      child: Image(
                                        image: AssetImage('assets/christ.png'),
                                        height: 250,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          0, 10, 0, 10),
                                      child: Text(
                                        'CHRISTIAN TEMPLE',
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
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
                  ],
                ),
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              GestureDetector(
                                onTap: () => {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              christian_temple()))
                                },
                                child: Container(
                                  width: currentWidth * 0.4,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Column(
                                      children: [
                                        Card(
                                          child: Image(
                                            image:
                                                AssetImage('assets/muslim.jpg'),
                                            height: 250,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              0, 10, 0, 10),
                                          child: Text(
                                            'MUSLIM TEMPLE',
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
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
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () => {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => christian_temple()))
                            },
                            child: Container(
                              width: currentWidth * 0.4,
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Column(
                                  children: [
                                    Card(
                                      child: Image(
                                        image: AssetImage('assets/budda.jpg'),
                                        height: 250,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          0, 10, 0, 10),
                                      child: Text(
                                        'BUDDHA TEMPLE',
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(child: const Text("Temple Finder")),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              DropdownSearch<String>(
                mode: Mode.MENU,
                showSelectedItems: true,
                items: ["Tamil Nadu", "Karnataka", "Kerala", 'Andhra Pradesh'],
                dropdownSearchDecoration: InputDecoration(
                  labelText: "Select State",
                  hintText: "State in menu mode",
                ),

                onChanged: itemSelectionChanged,
                //selectedItem: "",
                showSearchBox: true,
                searchFieldProps: TextFieldProps(
                  cursorColor: Colors.blue,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // hindu
                    GestureDetector(
                      onTap: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => hindu_temple()))
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          width: 450,
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(40.0),
                            child: Column(
                              children: [
                                Card(
                                  child: Image(
                                    image: AssetImage('assets/ht.jpg'),
                                    height: 150,
                                  ),
                                ),
                                Text('Hindu'),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 10,
                    ),

                    // christian
                    GestureDetector(
                      onTap: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => muslim_temple()))
                      },
                      child: Container(
                        width: 450,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(40.0),
                          child: Column(
                            children: [
                              Card(
                                child: Image(
                                  image: AssetImage('assets/ht.jpg'),
                                  height: 150,
                                ),
                              ),
                              Text('Muslim'),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),

                    // muslim
                    GestureDetector(
                      onTap: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => christian_temple()))
                      },
                      child: Container(
                        width: 350,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(40.0),
                          child: Column(
                            children: [
                              Card(
                                child: Image(
                                  image: AssetImage('assets/ht.jpg'),
                                  height: 150,
                                ),
                              ),
                              Text('Christian'),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    //  muslim
                    GestureDetector(
                      onTap: () => {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => abcd()))
                      },
                      child: Container(
                        width: 350,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(40.0),
                          child: Column(
                            children: [
                              Card(
                                child: Image(
                                  image: AssetImage('assets/ht.jpg'),
                                  height: 150,
                                ),
                              ),
                              Text('abcd'),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  bool isItemDisabled(String s) {
    //return s.startsWith('I');

    if (s.startsWith('I')) {
      return true;
    } else {
      return false;
    }
  }

  void itemSelectionChanged(String? s) {
    print(s);
  }
}

class hindu_temple extends StatefulWidget {
  const hindu_temple({super.key});

  @override
  State<hindu_temple> createState() => _hindu_templeState();
}

class _hindu_templeState extends State<hindu_temple> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hindu Temples'),
      ),
    );
  }
}

class muslim_temple extends StatefulWidget {
  const muslim_temple({super.key});

  @override
  State<muslim_temple> createState() => _muslim_templeState();
}

class _muslim_templeState extends State<muslim_temple> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Muslim Temple'),
        ),
        body: Text('Hello'));
  }
}

class christian_temple extends StatefulWidget {
  const christian_temple({super.key});

  @override
  State<christian_temple> createState() => _christian_templeState();
}

class _christian_templeState extends State<christian_temple> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Christian Temple'),
      ),
    );
  }
}

class abcd extends StatefulWidget {
  const abcd({super.key});

  @override
  State<abcd> createState() => _abcdState();
}

class _abcdState extends State<abcd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('abcd'),
      ),
      body: Text('Hello'),
    );
  }
}
