import 'package:favourite_maker/favourite_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  FavouriteController favouriteController = Get.put(FavouriteController());
  // List<String> fruitList = ['apple', 'banana', 'orange', 'grapes'];
  // List<String> tempList = [];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favourite App"),
      ),
      body: ListView.builder(
          itemCount: favouriteController.fruitList.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                onTap: () {
                  if (favouriteController.tempList.contains(favouriteController.fruitList[index].toString())) {
                   favouriteController.removeFromFavourite(favouriteController.fruitList[index].toString());
                  } else {
                   favouriteController.addToFavourite(favouriteController.fruitList[index].toString());
                  }

              
                },
                title: Text(favouriteController.fruitList[index].toString()),
                trailing: Obx(() => Icon(
                  Icons.favorite,
                  color:favouriteController.tempList.contains(favouriteController.fruitList[index].toString())
                      ? Colors.red
                      : Colors.white,
                ),)
              ),
            );
          }),
    );
  }
}
