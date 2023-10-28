import 'package:flutter/material.dart';


class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile '),
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                CircleAvatar(
                  radius: 60.0,
                  backgroundImage: AssetImage('assets/profile_image.jpg'),
                ),
                SizedBox(height: 16.0),
                Text(
                  'Muhammad Ilham',
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8.0),
                Text(
                  'Mahasiswa Tahun angkatan 21 dengan NPM 21670035, Memilih Program Studi Informatika di Universitas PGRI Semarang.',
                  style: TextStyle(fontSize: 16.0),
                ),
              ],
            ),
          ),
          Divider(),
          Container(
            padding: EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.android),
                  onPressed: () {
                    
                  },
                ),
                IconButton(
                  icon: Icon(Icons.android),
                  onPressed: () {
                    
                  },
                ),
                IconButton(
                  icon: Icon(Icons.android),
                  onPressed: () {
                    
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}