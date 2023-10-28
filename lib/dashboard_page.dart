import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Welcome to Shoping App!',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                ProductCard(
                  productName: 'Vans',
                  price: '\Rp 800.000',
                  imageUrl: 'https://filebroker-cdn.lazada.co.id/kf/S73eef3cafd5749178d50beaac5f8125aK.jpg',
                ),
                ProductCard(
                  productName: 'Vans Slip-on',
                  price: '\Rp 950.000',
                  imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQm_7UaktjmB6zM4OAnrv8uVxiFfe8rZwbFLA&usqp=CAU',
                ),
                ProductCard(
                  productName: 'Vans Slip-on',
                  price: '\Rp 950.000',
                  imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQm_7UaktjmB6zM4OAnrv8uVxiFfe8rZwbFLA&usqp=CAU',
                ),
                ProductCard(
                  productName: 'Vans Slip-on',
                  price: '\Rp 950.000',
                  imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQm_7UaktjmB6zM4OAnrv8uVxiFfe8rZwbFLA&usqp=CAU',
                ),
                ProductCard(
                  productName: 'Vans Slip-on',
                  price: '\Rp 950.000',
                  imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQm_7UaktjmB6zM4OAnrv8uVxiFfe8rZwbFLA&usqp=CAU',
                ),
                // Add more ProductCard widgets for other products
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String productName;
  final String price;
  final String imageUrl;

  ProductCard({
    required this.productName,
    required this.price,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          Image.asset(
            'assets/$imageUrl',
            width: double.infinity,
            height: 200.0,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  productName,
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Price: $price',
                  style: TextStyle(fontSize: 16.0),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Add logic to view product details or add to cart
                  },
                  child: Text('View Details'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}