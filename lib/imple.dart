// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Zero Hunger',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: HomeScreen(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }
//
//
//
// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('FoodAccio : The Nourish Nation'),
//
//       ),
//       backgroundColor: Color.fromARGB(255, 247, 222, 5),
//
//       drawer: Drawer(
//         child: ListView(
//           children: [
//             DrawerHeader(
//               child: Text('Menu'),
//               decoration: BoxDecoration(color: Colors.blue),
//             ),
//             ListTile(
//               title: Text('Log in'),
//               onTap: () {
//                 // Navigate to screen 1
//                 Navigator.push(context, MaterialPageRoute(builder: (_) => ScreenLog()));
//               },
//             ),
//             ListTile(
//               title: Text('About us'),
//               onTap: () {
//                 // Navigate to screen 2
//                 Navigator.push(context, MaterialPageRoute(builder: (_) => ScreenAbout()));
//               },
//             ),
//             ListTile(
//               title: Text('Contact'),
//               onTap: () {
//                 // Navigate to screen 3
//                 Navigator.push(context, MaterialPageRoute(builder: (_) => ScreenContact()));
//               },
//             ),
//           ],
//         ),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Container(
//
//               height: 60.0, // Adjust button height as needed
//               child: ElevatedButton(
//                 onPressed: () {
//                   Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenOne()));
//                 },
//                 child: Text('  Contribute Funds'),
//               ),
//             ),
//             SizedBox(height: 16.0),
//             Container(
//               height: 60.0, // Adjust button height as needed
//               child: ElevatedButton(
//                 onPressed: () {
//                   Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenTwo()));
//                 },
//                 child: Text('  Contribute Tasty Treats  '),
//               ),
//             ),
//             SizedBox(height: 16.0),
//             Container(
//               height: 60.0, // Adjust button height as needed
//               child: ElevatedButton(
//                 onPressed: () {
//                   Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenThree()));
//                 },
//                 child: Text('  Share Surplus Meals  '),
//               ),
//             ),
//             SizedBox(height: 16.0),
//             Container(
//               height: 60.0, // Adjust button height as needed
//               child: ElevatedButton(
//                 onPressed: () {
//                   Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenFour()));
//                 },
//                 child: Text(' Helpers Around you'),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class ScreenOne extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Contribute Fund')),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextFormField(
//               decoration: InputDecoration(labelText: 'Name'),
//             ),
//             SizedBox(height: 16.0),
//
//             SizedBox(height: 16.0),
//             TextFormField(
//               decoration: InputDecoration(labelText: 'Address'),
//             ),
//             TextFormField(
//               decoration: InputDecoration(labelText: 'Mobile Number'),
//             ),
//             TextFormField(
//               decoration: InputDecoration(labelText: 'Amount'),
//             ),
//             Image.network(
//               'https://th.bing.com/th/id/OIP.j8oglFHmWlpRNtT-qoS5AQHaHa?rs=1&pid=ImgDetMain'
//               width: 200,
//               height: 200,
//               fit: BoxFit.cover,
//             )
//             Text('Qr Code for Donation'),
//             Container(
//               height: 60.0, // Adjust button height as needed
//               child: ElevatedButton(
//                 onPressed: () {
//                   // Handle form submission here
//                 },
//                 child: Text('Contribute'),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class ScreenTwo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Donate food'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextFormField(
//               decoration: InputDecoration(labelText: 'Name'),
//             ),
//             SizedBox(height: 16.0),
//             TextFormField(
//               decoration: InputDecoration(labelText: 'Email'),
//             ),
//             SizedBox(height: 16.0),
//             TextFormField(
//               decoration: InputDecoration(labelText: 'Address'),
//             ),
//             TextFormField(
//               decoration: InputDecoration(labelText: 'Mobile Number'),
//             ),
//             Container(
//               height: 60.0, // Adjust button height as needed
//               child: ElevatedButton(
//                 onPressed: () {
//                   // Handle form submission here
//                 },
//                 child: Text('Submit'),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class ScreenThree extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Donate excess food (for Restaurant and cafe owners only)')),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextFormField(
//               decoration: InputDecoration(labelText: 'Name of the Restaurant'),
//               maxLines: 1,
//             ),
//             SizedBox(height: 16.0),
//             TextFormField(
//               decoration: InputDecoration(labelText: 'Address'),
//             ),
//             SizedBox(height: 16.0),
//             TextFormField(
//               decoration: InputDecoration(labelText: 'Email'),
//             ),
//             TextFormField(
//               decoration: InputDecoration(labelText: 'Mobile number'),
//             ),
//             Container(
//               height: 60.0, // Adjust button height as needed
//               child: ElevatedButton(
//                 onPressed: () {
//                   // Handle form submission here
//                 },
//                 child: Text('Submit'),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class ScreenFour extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Helpers Around the Nation')),
//       body: Center(child: Text('Smile Foundation: Established in 2002 in Delhi, the Smile Foundation focuses on supporting disadvantaged \n children’s education. They run humanitarian initiatives related to healthcare, women’s empowerment, and education across 25 Indian states and over 2,000 rural villages. ')),
//     );
//   }
// }
// class ScreenLog extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('User Login')),
//       body: Center(child: Text('Login')),
//     );
//   }
// }
// class ScreenAbout extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('About us')),
//       body: Center(child: Text('The Applicatio n is buid to encounter Google Zero Hunger Goal. We have done a detailed research and have found out that hunger is an issue\n that is not only prelevent in India but also it is an global issue which needs serius attention. So we have developed this app to contribute in\n this cause in our own way . ') ),
//     );
//
//   }
// }
// class ScreenContact extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Contact')),
//       body: Center(child: Text('Contact Us \n For any Query or issue related to the application please contact us \n E- mail -kunalbanerjee2910@gmail.com\n Address - Guru Ghasidas Vishwavidyalaya, Bilaspur, Chhattisgarh . ')),
//     );
//   }
// }