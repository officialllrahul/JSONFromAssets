import 'package:demotask/provider.dart';
import 'package:flutter/material.dart';
import 'ProductDataModel.dart';

class ProductListPage extends StatefulWidget {
  @override
  _ProductListPageState createState() => _ProductListPageState();
}

class _ProductListPageState extends State<ProductListPage> {
  late Future<ProductsModel> _productsModel;
  late String _selectedCategory;

  @override
  void initState() {
    super.initState();
    _selectedCategory = '';
    _productsModel = ProducsJsonModel().readJsonData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product List'),
      ),
      body: FutureBuilder<ProductsModel>(
        future: _productsModel,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final List<Datum> filteredCategories = _selectedCategory.isEmpty
                ? snapshot.data!.data!
                : snapshot.data!.data!
                .where((category) => category.name == _selectedCategory)
                .toList();
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                SizedBox(
                  height: 50,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: snapshot.data!.data!.length + 1,
                    itemBuilder: (context, index) {
                      if (index == 0) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: OutlinedButton(
                            onPressed: () {
                              setState(() {
                                _selectedCategory = '';
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: _selectedCategory.isEmpty
                                  ? Colors.blue // Change color for selected category
                                  : Colors.grey,
                            ),
                            child: const Text('All products',style: TextStyle(color: Colors.white),),
                          ),
                        );
                      }
                      final category = snapshot.data!.data![index - 1];
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _selectedCategory = category.name ?? '';
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: _selectedCategory == category.name
                                ? Colors.blue // Change color for selected category
                                : Colors.grey,
                          ),
                          child: Text(category.name ?? ''),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 10),
                Expanded(
                  child: ListView.builder(
                    itemCount: filteredCategories.length,
                    itemBuilder: (context, index) {
                      final category = filteredCategories[index];
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              category.name ?? '',
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          GridView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 8,
                              mainAxisSpacing: 8,
                            ),
                            itemCount: category.books!.length,
                            itemBuilder: (context, index) {
                              final product = category.books![index];
                              return Card(
                                child: ListTile(
                                  title: Text(product.name ?? ''),
                                  subtitle: Text(product.description ?? ''),
                                  // Add more details here as needed
                                ),
                              );
                            },
                          ),
                          const SizedBox(height: 10),
                        ],
                      );
                    },
                  ),
                ),
              ],
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Error: ${snapshot.error}'),
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
