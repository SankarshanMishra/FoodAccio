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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FoodAccio : The Nourish Nation'),
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
                Navigator.push(context, MaterialPageRoute(builder: (_) => ScreenLog()));
              },
            ),
            ListTile(
              title: Text('About us'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => ScreenAbout()));
              },
            ),
            ListTile(
              title: Text('Contact'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => ScreenContact()));
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(

              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenOne()));
              },

              child: Text('       Contribute Funds       '),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenTwo()));
              },
              child: Text('  Contribute Tasty Treats  '),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenThree()));
              },
              child: Text('    Share Surplus Meals    '),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenFour()));
              },
              child: Text('Helpers Around the Nation'),
            ),
          ],
        ),
      ),
    );
  }
}

class ScreenOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Contribute Fund')),
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
              decoration: InputDecoration(labelText: 'Address'),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Mobile Number'),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Amount'),
            ),
            SizedBox(
              height: 15,
            ),
            Image.asset("assets/images/qrcode.jpg",
            height: 90,
            width: 90,),

            SizedBox(
              height: 20,
            ),
            Text('Qr Code for Donation'),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 60.0,
              child: ElevatedButton(
                onPressed: () {
                  // Handle form submission here
                },
                child: Text('Contribute'),
              ),
            ),
          ],
        ),
      ),
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
              height: 60.0,
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
              height: 60.0,
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
      appBar: AppBar(title: Text('Helpers Around the Nation')),
      body: Center(child: Text('Smile Foundation: \n Established in 2002 in Delhi, the Smile Foundation focuses on supporting disadvantaged \n children’s education. They run humanitarian initiatives related to healthcare, women’s empowerment, and education across 25 Indian states and over 2,000 rural villages.\n \n Akshaya Patra Foundation  \nHeadquartered in Bengaluru Akshaya Patra Foundation strives to eliminate classroom hunger by implementing the Mid-Day Meal Scheme in the government schools and government-aided schools. Alongside, Akshaya Patra also aims at countering malnutrition and supporting the right to education of socio-economically\n disadvantaged children.Since 2000, Akshaya Patra has been concentrating all its efforts towards providing fresh and nutritious meals to children on every \n single school day. They also provide meals to communities affected by natural disasters, pandemics, and other crises.According to the organization, “We are continuously leveraging technology to multiply our reach. The state-of-the-art \n kitchens have become a subject of study and have attracted curious visitors from around the world.”Partnerships with the Government of India and various State Governments, \n along with the persistent support from corporates, individual donors, and well-wishers Akshaya Patra has gone from serving just 1,500 children in 5 schools in 2000 to serving 2 million children. \n \n Roti Bank Mumbai \n Roti Bank is a non-profit, hunger relief organization with the mission to eliminate hunger and malnutrition. Started in December 2017 under the able mentorship of former Director \n General of Police, Maharashtra, Mr. D. Sivanandhan, our initial objective was to reduce the gap between hunger and the excess food.The organization says, “Initially, we used to pick up \n excess food from weddings, events, hotels, cafeterias, housing societies and deliver it to thousands of hungry people who live in slums or on the footpath. Everyday, we \n serve beneficiaries which primarily include children and also others who are most in need.”Today, Roti Bank has set up a kitchen to cook fresh nutritious meals for their beneficiaries. In the \n last five years, Mumbai Roti bank has not only improvised and innovated its operations to reach the neediest and deprived in the Mumbai Metropolitan Region (MMR) but has also initiated \n new chapters in Nagpur, Coimbatore, Hyderabad, Chennai, Ahmedabad and Cuttack. \n \n Khushiyaan FoundationKhushiyaan \n  As the name suggests Happiness is committed to delivering Happiness to underprivileged humans of the society & environment.Through its successfully running projects Roti Ghar,\n Naari Shakti, Beach Warriors and Project Paathshala, Khushiyaan Foundation strives to provide quality food, women empowerment and hygiene, cleanliness drives and the gift of education \n respectively.Started in 2017, the ‘Roti Ghar’ project aims to eradicate malnutrition among slum kids. The purpose of Roti Ghar is to give the slum children access to at least one \n healthy and nutritious meal in a day and also to teach them health and hygiene and table manners, thus focusing on their overall development.   ')),);
  }
}

class ScreenLog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Log in')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              decoration: InputDecoration(labelText: 'UserName'),
              maxLines: 1,
            ),
            SizedBox(height: 16.0),
            TextFormField(
              decoration: InputDecoration(labelText: 'Email'),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              decoration: InputDecoration(labelText: 'Mobile Number  '),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Passward'),
            ),
            Container(
              height: 60.0,
              child: ElevatedButton(
                onPressed: () {
                  // Handle form submission here
                },
                child: Text('Log in'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ScreenAbout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('About us')),
      body: Center(child: Text('The Application is buid to encounter Google Zero Hunger Goal. We have done a detailed research and have found out that hunger is an issue\n that is not only prelevent in India but also it is an global issue which needs serius attention. So we have developed this app to contribute in\n this cause in our own way . ') ),
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
