import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zero Hunger',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}



class HomeScreen extends StatelessWidget {
  final List<String> imageUrls = [
    'https://th.bing.com/th/id/OIP.C6d646c6ce06QjFnGNvsnwHaEJ?rs=1&pid=ImgDetMain' ,
    'https://th.bing.com/th/id/OIP.UplYlB5hlh-ZwGEX4qx6hgHaEi?w=1034&h=634&rs=1&pid=ImgDetMain' ,
    'https://th.bing.com/th/id/OIP.0Ynz2cShSLHi-h6Uj2hl3gHaE8?rs=1&pid=ImgDetMain' ,
    'https://images.indianexpress.com/2019/08/food-security-hunger.jpg ' ,
    'https://th.bing.com/th/id/OIP.DxDoRHO9bqUxohc23IDeCgHaE7?rs=1&pid=ImgDetMain ' ,
    'https://static.dw.com/image/37750323_6.jpg'

    // Add more image URLs as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Zero Hunger'),

        ),
        backgroundColor: Color.fromARGB(255, 247, 222, 5),

        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                child: Text('Menu'),
                decoration: BoxDecoration(color: Colors.blue),
              ),
              ListTile(
                title: Text('Log in'),
                onTap: () {
                  // Navigate to screen 1
                  Navigator.push(context, MaterialPageRoute(builder: (_) => ScreenLog()));
                },
              ),
              ListTile(
                title: Text('About us'),
                onTap: () {
                  // Navigate to screen 2
                  Navigator.push(context, MaterialPageRoute(builder: (_) => ScreenAbout()));
                },
              ),
              ListTile(
                title: Text('Contact'),
                onTap: () {
                  // Navigate to screen 3
                  Navigator.push(context, MaterialPageRoute(builder: (_) => ScreenContact()));
                },
              ),
            ],
          ),
        ),
        body: Column(children: [
          Container(
            height:200,
            child: ListView.builder(scrollDirection: Axis.horizontal,itemCount:imageUrls.length,itemBuilder:(context,index){
              return Padding(padding: const EdgeInsets.all(8.0), child :ClipRRect(borderRadius: BorderRadius.circular(10),child: Image.network(imageUrls[index],fit: BoxFit.cover,),));
            }  ,),
          )
        ],
        )




    );
  }
}

class ScreenOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Donate Money for food')),
      body: Center(child: Text('Payment interface')),
    );
  }
}

class ScreenTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Donate food'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              decoration: InputDecoration(labelText: 'Name'),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              decoration: InputDecoration(labelText: 'Email'),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              decoration: InputDecoration(labelText: 'Address'),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Mobile Number'),
            ),
            Container(
              height: 60.0, // Adjust button height as needed
              child: ElevatedButton(
                onPressed: () {
                  // Handle form submission here
                },
                child: Text('Submit'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ScreenThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Donate excess food (for Restaurant and cafe owners only)')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              decoration: InputDecoration(labelText: 'Name of the Restaurant'),
              maxLines: 1,
            ),
            SizedBox(height: 16.0),
            TextFormField(
              decoration: InputDecoration(labelText: 'Address'),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Mobile number'),
            ),
            Container(
              height: 60.0, // Adjust button height as needed
              child: ElevatedButton(
                onPressed: () {
                  // Handle form submission here
                },
                child: Text('Submit'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ScreenFour extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Donate money to NGOs for needy')),
      body: Center(child: Text('Payment Interface')),
    );
  }
}
class ScreenLog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('User Login')),
      body: Center(child: Text('Login')),
    );
  }
}
class ScreenAbout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('About us')),
      body: Center(child: Text('The Applicatio n is buid to encounter Google Zero Hunger Goal. We have done a detailed research and have found out that hunger is an issue\n that is not only prelevent in India but also it is an global issue which needs serius attention. So we have developed this app to contribute in\n this cause in our own way . ') ),
    );

  }
}
class ScreenContact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Contact')),
      body: Center(child: Text('Contact Us \n For any Query or issue related to the application please contact us \n E- mail -kunalbanerjee2910@gmail.com\n Address - Guru Ghasidas Vishwavidyalaya, Bilaspur, Chhattisgarh . ')),
    );
  }
}