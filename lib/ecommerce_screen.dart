import 'package:flutter/material.dart';
import 'package:profile_app/category_box.dart';

class ECommerceScreen extends StatelessWidget {
  const ECommerceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        leading: Icon(
          Icons.home,
        ),
        title: Center(
          child: Text('Lets go shopping'),
        ),
        actions: [
          Icon(
            Icons.shopping_cart,
          )
        ],
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 20, //hooson zai avah
            ),
            Container(
              child: Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: Container(
                      width: double.infinity,
                      child: Center(
                        child: Text('Recommended'),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(
                      width: double.infinity,
                      child: Center(
                        child: Text('Formal Wear'),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(
                      width: double.infinity,
                      child: Center(
                        child: Text('Casual Wear'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              child: Image.asset('assets/women.jpg'),
            ),
            Row(
              children: [
                Flexible(
                  flex: 1,
                  child: CategoryBox(
                    text: 'Best Sellers',
                    color: Colors.orange,
                  ),
                ),
                Flexible(
                  flex:1,
                  child: CategoryBox(
                    text: 'Daily Deals',
                    color: Colors.blue,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
