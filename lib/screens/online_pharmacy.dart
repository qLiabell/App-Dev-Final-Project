import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blessing Pharma and Medical Supplies',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Blessing Pharma',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              const SizedBox(height: 40),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  prefixIcon: const Icon(Icons.email),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  prefixIcon: const Icon(Icons.lock),
                ),
              ),
              const SizedBox(height: 30),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const OnlinePharmacy(),
                      ),
                    );
                  },
                  child: const Text('LOGIN', style: TextStyle(fontSize: 18)),
                ),
              ),
              const SizedBox(height: 20),
              TextButton(
                onPressed: () {},
                child: const Text('Forgot Password?'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OnlinePharmacy extends StatefulWidget {
  const OnlinePharmacy({super.key});

  @override
  State<OnlinePharmacy> createState() => _OnlinePharmacyState();
}

class _OnlinePharmacyState extends State<OnlinePharmacy> {
  int _cartItemCount = 0;
  int _selectedIndex = 0;
  final PageController _pageController = PageController();
  final TextEditingController _searchController = TextEditingController();
  String _searchQuery = '';

  final List<Map<String, dynamic>> _cartItems = [];

  final List<Map<String, dynamic>> _products = [
    {
      'category': 'Covid Essentials',
      'items': [
        {
          'name': 'N95 Mask (10 pcs)',
          'price': 15.99,
          'image': 'assets/mask.png',
        },
        {
          'name': 'Hand Sanitizer (500ml)',
          'price': 8.49,
          'image': 'assets/sanitizer.png',
        },
        {'name': 'Face Shield', 'price': 5.99, 'image': 'assets/shield.png'},
        {
          'name': 'Disposable Gloves (100 pcs)',
          'price': 12.99,
          'image': 'assets/gloves.png',
        },
        {
          'name': 'Thermometer',
          'price': 19.99,
          'image': 'assets/thermometer.png',
        },
      ],
    },
    {
      'category': 'Vitamins & Supplements',
      'items': [
        {
          'name': 'Vitamin C 1000mg',
          'price': 12.99,
          'image': 'assets/vitamin_c.png',
        },
        {
          'name': 'Multivitamin Complex',
          'price': 18.99,
          'image': 'assets/multivitamin.png',
        },
        {
          'name': 'Vitamin D3 5000IU',
          'price': 14.99,
          'image': 'assets/vitamin_d.png',
        },
        {
          'name': 'Omega-3 Fish Oil',
          'price': 22.99,
          'image': 'assets/fish_oil.png',
        },
        {
          'name': 'Calcium + Magnesium',
          'price': 16.99,
          'image': 'assets/calcium.png',
        },
      ],
    },
    {
      'category': 'Pain Relief',
      'items': [
        {
          'name': 'Ibuprofen 200mg',
          'price': 7.99,
          'image': 'assets/ibuprofen.png',
        },
        {
          'name': 'Acetaminophen 500mg',
          'price': 5.99,
          'image': 'assets/acetaminophen.png',
        },
        {'name': 'Aspirin 81mg', 'price': 4.99, 'image': 'assets/aspirin.png'},
        {
          'name': 'Naproxen Sodium',
          'price': 9.99,
          'image': 'assets/naproxen.png',
        },
        {
          'name': 'Migraine Relief',
          'price': 12.99,
          'image': 'assets/migraine.png',
        },
      ],
    },
    {
      'category': 'Digestive Health',
      'items': [
        {
          'name': 'Antacid Tablets',
          'price': 6.99,
          'image': 'assets/antacid.png',
        },
        {
          'name': 'Probiotic Supplement',
          'price': 24.99,
          'image': 'assets/probiotic.png',
        },
        {'name': 'Laxative', 'price': 8.99, 'image': 'assets/laxative.png'},
        {
          'name': 'Anti-Diarrheal',
          'price': 7.99,
          'image': 'assets/antidiarrheal.png',
        },
        {
          'name': 'Digestive Enzymes',
          'price': 19.99,
          'image': 'assets/enzymes.png',
        },
      ],
    },
    {
      'category': 'Skin Care',
      'items': [
        {
          'name': 'Antibiotic Ointment',
          'price': 5.99,
          'image': 'assets/ointment.png',
        },
        {
          'name': 'Hydrocortisone Cream',
          'price': 7.99,
          'image': 'assets/hydrocortisone.png',
        },
        {
          'name': 'Antifungal Cream',
          'price': 8.99,
          'image': 'assets/antifungal.png',
        },
        {'name': 'Acne Treatment', 'price': 11.99, 'image': 'assets/acne.png'},
        {
          'name': 'Moisturizing Lotion',
          'price': 9.99,
          'image': 'assets/lotion.png',
        },
      ],
    },
  ];

  final List<Map<String, dynamic>> _dashboardItems = [
    {
      'title': 'Total Orders',
      'value': '24',
      'icon': Icons.shopping_bag,
      'color': Colors.blue,
    },
    {
      'title': 'Pending Orders',
      'value': '5',
      'icon': Icons.pending_actions,
      'color': Colors.orange,
    },
    {
      'title': 'Completed Orders',
      'value': '19',
      'icon': Icons.check_circle,
      'color': Colors.green,
    },
    {
      'title': 'Total Revenue',
      'value': '\$1,245',
      'icon': Icons.attach_money,
      'color': Colors.purple,
    },
    {
      'title': 'New Customers',
      'value': '8',
      'icon': Icons.person_add,
      'color': Colors.teal,
    },
    {
      'title': 'Returning Customers',
      'value': '16',
      'icon': Icons.people,
      'color': Colors.indigo,
    },
  ];

  final List<Map<String, dynamic>> _inventoryItems = [
    {'name': 'N95 Mask', 'stock': 45, 'threshold': 20},
    {'name': 'Paracetamol', 'stock': 32, 'threshold': 15},
    {'name': 'Vitamin C', 'stock': 28, 'threshold': 10},
    {'name': 'Hand Sanitizer', 'stock': 38, 'threshold': 15},
    {'name': 'Ibuprofen', 'stock': 52, 'threshold': 20},
    {'name': 'Omega-3 Fish Oil', 'stock': 18, 'threshold': 10},
    {'name': 'Probiotic', 'stock': 22, 'threshold': 15},
    {'name': 'Antacid', 'stock': 30, 'threshold': 20},
  ];

  final List<Map<String, dynamic>> _salesData = [
    {'day': 'Mon', 'sales': 120},
    {'day': 'Tue', 'sales': 200},
    {'day': 'Wed', 'sales': 150},
    {'day': 'Thu', 'sales': 180},
    {'day': 'Fri', 'sales': 220},
    {'day': 'Sat', 'sales': 250},
    {'day': 'Sun', 'sales': 190},
  ];

  final List<Map<String, dynamic>> _topProducts = [
    {'name': 'N95 Mask', 'sales': 45, 'image': 'assets/mask.png'},
    {'name': 'Vitamin C', 'sales': 38, 'image': 'assets/vitamin_c.png'},
    {'name': 'Gloves', 'sales': 32, 'image': 'assets/gloves.png'},
    {'name': 'Ibuprofen', 'sales': 28, 'image': 'assets/ibuprofen.png'},
    {'name': 'Probiotic', 'sales': 25, 'image': 'assets/probiotic.png'},
  ];

  @override
  void initState() {
    super.initState();
    _updateCartCount();
  }

  void _updateCartCount() {
    _cartItemCount = _cartItems.fold(
      0,
      (sum, item) => sum + (item['quantity'] as int),
    );
  }

  void _onItemTapped(int index) {
    setState(() => _selectedIndex = index);
    _pageController.jumpToPage(index);
  }

  void _addToCart(String name, String image, double price) {
    final existingIndex = _cartItems.indexWhere((item) => item['name'] == name);
    setState(() {
      if (existingIndex >= 0) {
        _cartItems[existingIndex]['quantity'] += 1;
      } else {
        _cartItems.add({
          'name': name,
          'price': price,
          'quantity': 1,
          'image': image,
        });
      }
      _updateCartCount();
    });
    if (mounted) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('$name added to cart')));
    }
  }

  void _showCheckoutDialog() {
    showDialog(
      context: context,
      builder: (dialogContext) {
        return StatefulBuilder(
          builder: (context, setStateDialog) {
            final total = _cartItems.fold<double>(
              0,
              (sum, item) => sum + (item['price'] * item['quantity']),
            );
            return AlertDialog(
              title: const Text('Your Cart'),
              content: SizedBox(
                width: double.maxFinite,
                child: _cartItems.isEmpty
                    ? const Text("Cart is empty.")
                    : ListView.builder(
                        shrinkWrap: true,
                        itemCount: _cartItems.length,
                        itemBuilder: (context, index) {
                          final item = _cartItems[index];
                          return Card(
                            margin: const EdgeInsets.symmetric(vertical: 4),
                            child: ListTile(
                              leading: Image.asset(
                                item['image'],
                                width: 40,
                                height: 40,
                              ),
                              title: Text(item['name']),
                              subtitle: Text('\$${item['price']}'),
                              trailing: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  IconButton(
                                    icon: const Icon(Icons.remove),
                                    onPressed: () {
                                      setState(() {
                                        if (item['quantity'] > 1) {
                                          item['quantity']--;
                                        } else {
                                          _cartItems.removeAt(index);
                                        }
                                        _updateCartCount();
                                      });
                                      setStateDialog(() {});
                                    },
                                  ),
                                  Text('${item['quantity']}'),
                                  IconButton(
                                    icon: const Icon(Icons.add),
                                    onPressed: () {
                                      setState(() {
                                        item['quantity']++;
                                        _updateCartCount();
                                      });
                                      setStateDialog(() {});
                                    },
                                  ),
                                  IconButton(
                                    icon: const Icon(
                                      Icons.delete,
                                      color: Colors.red,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        _cartItems.removeAt(index);
                                        _updateCartCount();
                                      });
                                      Navigator.pop(dialogContext);
                                    },
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
              ),
              actions: [
                Text(
                  'Total: \$${total.toStringAsFixed(2)}',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () => Navigator.pop(dialogContext),
                      child: const Text('Continue Shopping'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(dialogContext);
                        if (_cartItems.isNotEmpty && mounted) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Order placed successfully!'),
                            ),
                          );
                          setState(() {
                            _cartItems.clear();
                            _updateCartCount();
                          });
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 12,
                        ),
                      ),
                      child: const Text(
                        'Checkout',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
        );
      },
    );
  }

  Widget _buildHomeScreen() {
    return SingleChildScrollView(
      child: Column(
        children: [
          _buildSearchBar(),
          _buildCarouselSection(),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Shop by Category',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedIndex = 1;
                      _pageController.jumpToPage(1);
                    });
                  },
                  child: const Text(
                    'View all',
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          GridView.builder(
            padding: const EdgeInsets.all(16),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 16,
              crossAxisSpacing: 12,
              childAspectRatio: 0.8,
            ),
            itemCount: 12,
            itemBuilder: (context, index) {
              final List<Map<String, dynamic>> sampleItems = [
                {
                  'name': 'N95 Mask',
                  'image': 'assets/mask.png',
                  'price': 15.99,
                },
                {
                  'name': 'Acne Cream',
                  'image': 'assets/acne.png',
                  'price': 11.99,
                },
                {
                  'name': 'Antacid',
                  'image': 'assets/antacid.png',
                  'price': 8.99,
                },
                {
                  'name': 'Aspirin',
                  'image': 'assets/aspirin.png',
                  'price': 4.99,
                },
                {
                  'name': 'Calcium',
                  'image': 'assets/calcium.png',
                  'price': 16.99,
                },
                {
                  'name': 'Enzymes',
                  'image': 'assets/enzymes.png',
                  'price': 19.99,
                },
                {
                  'name': 'Lotion',
                  'image': 'assets/lotion.png',
                  'price': 15.99,
                },
                {
                  'name': 'Sanitizer',
                  'image': 'assets/sanitizer.png',
                  'price': 8.49,
                },
                {
                  'name': 'Vitamin C',
                  'image': 'assets/vitamin_c.png',
                  'price': 12.99,
                },
                {
                  'name': 'Multivitamin',
                  'image': 'assets/multivitamin.png',
                  'price': 18.99,
                },
                {
                  'name': 'Pain Relief',
                  'image': 'assets/ibuprofen.png',
                  'price': 7.99,
                },
                {
                  'name': 'Antacid',
                  'image': 'assets/antacid.png',
                  'price': 6.99,
                },
              ];

              final item = sampleItems[index];
              return _buildCategoryCard(
                item['name'],
                item['image'],
                item['price'],
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildProductsScreen() {
    List<Map<String, dynamic>> filteredProducts = [];

    if (_searchQuery.isEmpty) {
      filteredProducts = List.from(_products);
    } else {
      for (var category in _products) {
        var filteredItems = category['items']
            .where(
              (item) => item['name'].toString().toLowerCase().contains(
                _searchQuery.toLowerCase(),
              ),
            )
            .toList();

        if (filteredItems.isNotEmpty) {
          filteredProducts.add({
            'category': category['category'],
            'items': filteredItems,
          });
        }
      }
    }

    return Column(
      children: [
        _buildSearchBar(),
        Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: filteredProducts.length,
            itemBuilder: (context, index) {
              final category = filteredProducts[index];
              return Card(
                margin: const EdgeInsets.only(bottom: 16),
                elevation: 2,
                child: ExpansionTile(
                  title: Text(
                    category['category'],
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  children: [
                    ...category['items'].map<Widget>((item) {
                      return ListTile(
                        leading: Image.asset(
                          item['image'],
                          width: 50,
                          height: 50,
                        ),
                        title: Text(item['name']),
                        subtitle: Text('\$${item['price']}'),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              icon: const Icon(Icons.remove_circle_outline),
                              onPressed: () {
                                final existingIndex = _cartItems.indexWhere(
                                  (cartItem) =>
                                      cartItem['name'] == item['name'],
                                );
                                if (existingIndex >= 0 &&
                                    _cartItems[existingIndex]['quantity'] > 0) {
                                  setState(() {
                                    _cartItems[existingIndex]['quantity'] -= 1;
                                    if (_cartItems[existingIndex]['quantity'] ==
                                        0) {
                                      _cartItems.removeAt(existingIndex);
                                    }
                                    _updateCartCount();
                                  });
                                }
                              },
                            ),
                            IconButton(
                              icon: const Icon(
                                Icons.add_circle_outline,
                                color: Colors.green,
                              ),
                              onPressed: () => _addToCart(
                                item['name'],
                                item['image'],
                                item['price'],
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildAccountScreen() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/profile.jpg'),
          ),
          const SizedBox(height: 20),
          const Text(
            'Kurth Pogi Manalo',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const Text(
            'kurthjhoemarkm@gmail.com',
            style: TextStyle(color: Colors.grey),
          ),
          const SizedBox(height: 30),
          Card(
            child: Column(
              children: [
                ListTile(
                  leading: const Icon(Icons.history, color: Colors.blue),
                  title: const Text('Order History'),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {},
                ),
                const Divider(height: 1),
                ListTile(
                  leading: const Icon(Icons.settings, color: Colors.grey),
                  title: const Text('Settings'),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {},
                ),
                const Divider(height: 1),
                ListTile(
                  leading: const Icon(Icons.help_outline, color: Colors.orange),
                  title: const Text('Help & Support'),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {},
                ),
                const Divider(height: 1),
                ListTile(
                  leading: const Icon(Icons.logout, color: Colors.red),
                  title: const Text('Logout'),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginPage(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Text('App Version 1.0.0', style: TextStyle(color: Colors.grey)),
        ],
      ),
    );
  }

  Widget _buildDashboardScreen() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Sales Overview',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _salesData.length,
              itemBuilder: (context, index) {
                final data = _salesData[index];
                return Container(
                  width: 60,
                  margin: const EdgeInsets.only(right: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('\$${data['sales']}'),
                      const SizedBox(height: 5),
                      Container(
                        height: data['sales'] / 2,
                        width: 30,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(data['day']),
                    ],
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Top Selling Products',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 120,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _topProducts.length,
              itemBuilder: (context, index) {
                final product = _topProducts[index];
                return Container(
                  width: 100,
                  margin: const EdgeInsets.only(right: 10),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(product['image'], height: 40, width: 40),
                          const SizedBox(height: 5),
                          Text(
                            product['name'],
                            textAlign: TextAlign.center,
                            style: const TextStyle(fontSize: 12),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 5),
                          Text(
                            '${product['sales']} sold',
                            style: const TextStyle(
                              fontSize: 11,
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
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
          const SizedBox(height: 20),
          const Text(
            'Inventory Status',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          ..._inventoryItems.map((item) {
            return Card(
              margin: const EdgeInsets.only(bottom: 10),
              child: ListTile(
                title: Text(item['name']),
                subtitle: LinearProgressIndicator(
                  value: item['stock'] / (item['threshold'] * 2),
                  backgroundColor: Colors.grey[200],
                  color: item['stock'] > item['threshold']
                      ? Colors.green
                      : Colors.red,
                ),
                trailing: Text('${item['stock']} in stock'),
              ),
            );
          }),
          const SizedBox(height: 20),
          GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            childAspectRatio: 1.5,
            children: [
              ..._dashboardItems.map((item) {
                return Card(
                  elevation: 3,
                  color: Color.lerp(item['color'], Colors.white, 0.9),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(item['icon'], size: 30, color: item['color']),
                        const SizedBox(height: 8),
                        Text(
                          item['title'],
                          style: const TextStyle(fontSize: 14),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          item['value'],
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: item['color'],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
            ],
          ),
          const SizedBox(height: 20),
          const Text(
            'Recent Orders',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                children: [
                  _buildRecentOrderItem('ORD-001', 'Completed', '\$45.99'),
                  const Divider(),
                  _buildRecentOrderItem('ORD-002', 'Processing', '\$32.50'),
                  const Divider(),
                  _buildRecentOrderItem('ORD-003', 'Completed', '\$28.75'),
                  const Divider(),
                  _buildRecentOrderItem('ORD-004', 'Shipped', '\$67.20'),
                  const Divider(),
                  _buildRecentOrderItem('ORD-005', 'Pending', '\$19.99'),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _selectedIndex = 1;
                _pageController.jumpToPage(1);
              });
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              minimumSize: const Size(double.infinity, 50),
            ),
            child: const Text(
              'View All Products',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRecentOrderItem(String orderId, String status, String amount) {
    Color statusColor = Colors.grey;
    if (status == 'Completed') {
      statusColor = Colors.green;
    } else if (status == 'Processing') {
      statusColor = Colors.blue;
    } else if (status == 'Shipped') {
      statusColor = Colors.orange;
    } else if (status == 'Pending') {
      statusColor = Colors.red;
    }

    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: Colors.green.withOpacity(0.2),
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Icon(Icons.shopping_bag, color: Colors.green),
      ),
      title: Text(orderId, style: const TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(status, style: TextStyle(color: statusColor)),
      trailing: Text(
        amount,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildSearchBar() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 3,
              offset: const Offset(0, 1),
            ),
          ],
        ),
        child: TextField(
          controller: _searchController,
          onChanged: (value) {
            setState(() {
              _searchQuery = value;
            });
          },
          decoration: InputDecoration(
            hintText: 'Search medicines and supplies...',
            prefixIcon: const Icon(Icons.search, color: Colors.grey),
            border: InputBorder.none,
            suffixIcon: _searchQuery.isNotEmpty
                ? IconButton(
                    icon: const Icon(Icons.clear, color: Colors.grey),
                    onPressed: () {
                      setState(() {
                        _searchController.clear();
                        _searchQuery = '';
                      });
                    },
                  )
                : null,
            contentPadding: const EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 20,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCarouselSection() {
    return Container(
      height: 300,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/bg3.jpg'),
          fit: BoxFit.cover,
          opacity: 0.5,
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: CarouselSlider(
              items: ['assets/imgdoc.png', 'assets/imgdoc1.png'].map((img) {
                return Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(img),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                );
              }).toList(),
              options: CarouselOptions(
                height: 120.0,
                enlargeCenterPage: true,
                autoPlay: true,
                viewportFraction: 0.8,
              ),
            ),
          ),
          const Text(
            'Upload Your Prescription',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Please upload your med supply and prescription\nso we can assist your purchase',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              color: Colors.amber,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          TextButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(Colors.greenAccent),
              padding: WidgetStateProperty.all(
                const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              ),
              shape: WidgetStateProperty.all(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              ),
            ),
            child: const Text(
              'Upload Medical and Prescription',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryCard(String name, String imagePath, double price) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 4,
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () => _addToCart(name, imagePath, price),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(imagePath, height: 60, width: 60),
              const SizedBox(height: 10),
              Text(
                name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                '\$$price',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text(
          'Blessing Pharma and Medical Supplies',
          style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        actions: [
          Stack(
            children: [
              IconButton(
                onPressed: _showCheckoutDialog,
                icon: const Icon(Icons.shopping_cart, color: Colors.black),
              ),
              if (_cartItemCount > 0)
                Positioned(
                  right: 8,
                  top: 8,
                  child: Container(
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    constraints: const BoxConstraints(
                      minWidth: 16,
                      minHeight: 16,
                    ),
                    child: Text(
                      '$_cartItemCount',
                      style: const TextStyle(color: Colors.white, fontSize: 10),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
            ],
          ),
          IconButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Scaffold(
                  appBar: AppBar(title: const Text('Dashboard')),
                  body: _buildDashboardScreen(),
                ),
              ),
            ),
            icon: const Icon(Icons.dashboard, color: Colors.black),
          ),
        ],
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) => setState(() => _selectedIndex = index),
        children: [
          _buildHomeScreen(),
          _buildProductsScreen(),
          _buildAccountScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.medical_services),
            label: 'Products',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
        ],
      ),
    );
  }
}
