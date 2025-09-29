import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController _pageController = PageController();

  // Sample data for featured products
  final List<String> featuredProducts = [
    'assets/images/image.jpg',
    'assets/images/image.jpg',
    'assets/images/image.jpg',
  ];

  // Sample data for product grid
  final List<Map<String, dynamic>> products = [
    {'title': 'Smartphone', 'image': 'assets/images/image.jpg'},
    {'title': 'Laptop', 'image': 'assets/images/image.jpg'},
    {'title': 'Headphones', 'image': 'assets/images/image.jpg'},
    {'title': 'Watch', 'image': 'assets/images/image.jpg'},
    {'title': 'Camera', 'image': 'assets/images/image.jpg'},
    {'title': 'Tablet', 'image': 'assets/images/image.jpg'},
  ];

  // Sample data for hot offers
  final List<Map<String, dynamic>> hotOffers = [
    {
      'image': 'assets/images/image.jpg',
      'description': '50% off on Electronics - Limited Time Offer!',
    },
    {
      'image': 'assets/images/image.jpg',
      'description': 'Buy 2 Get 1 Free on Selected Items',
    },
    {
      'image': 'assets/images/image.jpg',
      'description': 'Free Shipping on Orders Above \$100',
    },
    {
      'image': 'assets/images/image.jpg',
      'description': 'Summer Sale - Up to 70% off Fashion',
    },
    {
      'image': 'assets/images/image.jpg',
      'description': 'New Arrivals - Check out the Latest Collection',
    },
  ];

  void _addToCart(String productTitle) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Item added to the cart'),
        duration: Duration(seconds: 2),
        backgroundColor: Colors.deepOrange,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.deepOrange[100],
        appBar: AppBar(
          title: Text("Our Products"),
          automaticallyImplyLeading: false,
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Featured Products PageView
              Container(
                height: 200,
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: featuredProducts.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 8.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          featuredProducts[index],
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return Container(
                              color: Colors.grey[300],
                              child: Icon(
                                Icons.image,
                                size: 50,
                                color: Colors.grey[600],
                              ),
                            );
                          },
                        ),
                      ),
                    );
                  },
                ),
              ),

              SizedBox(height: 24),

              // Products Grid
              Text(
                'Products',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepOrange[900],
                ),
              ),
              SizedBox(height: 16),

              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 0.8,
                ),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];
                  return Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          flex: 3,
                          child: ClipRRect(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(12),
                            ),
                            child: Image.asset(
                              product['image'],
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) {
                                return Container(
                                  color: Colors.grey[300],
                                  child: Icon(
                                    Icons.image,
                                    size: 40,
                                    color: Colors.grey[600],
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text(
                                  product['title'],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Spacer(),
                                IconButton(
                                  onPressed: () => _addToCart(product['title']),
                                  icon: Icon(Icons.add_shopping_cart),
                                  color: Colors.deepOrange,
                                  iconSize: 24,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),

              SizedBox(height: 32),

              // Hot Offers Section
              Text(
                'Hot Offers',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepOrange[900],
                ),
              ),
              SizedBox(height: 16),

              Container(
                height: 300,
                child: ListView.builder(
                  itemCount: hotOffers.length,
                  itemBuilder: (context, index) {
                    final offer = hotOffers[index];
                    return Container(
                      margin: EdgeInsets.only(bottom: 12),
                      child: Card(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Row(
                            children: [
                              Container(
                                width: 80,
                                height: 80,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.asset(
                                    offer['image'],
                                    fit: BoxFit.cover,
                                    errorBuilder: (context, error, stackTrace) {
                                      return Container(
                                        color: Colors.grey[300],
                                        child: Icon(
                                          Icons.local_offer,
                                          size: 30,
                                          color: Colors.grey[600],
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                              SizedBox(width: 12),
                              Expanded(
                                child: Text(
                                  offer['description'],
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
