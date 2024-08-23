
import 'package:untitled/app_consts.dart';
class User {
  int id;
  String? image;
  String name;
  String address;
  int followers;
  int following;
  List<String>? shots;
  List<String>? collections;

  User(
      {required this.id,
        this.image,
        required this.name,
        this.address = "",
        this.followers = 0,
        this.following = 0,
        this.shots,
        this.collections
      });
}
User usersDB(){
  List<User> users = [
    User(
      id: 1,
      image: 'https://example.com/image1.jpg',
      name: 'Alice Johnson',
      address: '123 Elm Street, Springfield',
      followers: 120,
      following: 80,
    ),
    User(
      id: 2,
      image: '${assetsImagesPath}profile.png',
      name: 'Bruno Pham',
      address: 'Da Nang Vietnam',
      followers: 230,
      following: 150,
      shots:  ["${assetsImagesPath}tree_leaves","${assetsImagesPath}girl.png","${assetsImagesPath}tree_leaves","${assetsImagesPath}girl.png"],
      collections:  ["${assetsImagesPath}ic_back_container.png"]
    ),
    User(
      id: 3,
      image: 'https://example.com/image3.jpg',
      name: 'Charlie Brown',
      address: '789 Pine Road, Gotham',
      followers: 340,
      following: 220,
    ),
    User(
      id: 4,
      image: null, // No image provided
      name: 'David Lee',
      address: '321 Maple Lane, Star City',
      followers: 450,
      following: 300,
    ),
    User(
      id: 5,
      image: 'https://example.com/image5.jpg',
      name: 'Eva Green',
      address: '654 Birch Boulevard, Central City',
      followers: 560,
      following: 400,
      collections:  ["${assetsImagesPath}ic_back_container.png"]
    ),
  ];

  /*for (var user in users) {
    print('${user.name} (${user.name.initials})');
    print('Address: ${user.address}');
    print('Followers: ${user.followers}');
    print('Following: ${user.following}\n');
  }*/
  return users[1];
}


extension StringsExt on String {
  String get initials {
    // Split the string by spaces
    List<String> words = trim().split(' ');

    // Check if there are any words in the list
    if (words.isEmpty) return '';

    // Take the first letter of each word and capitalize it
    String initials = words.map((word) => word[0].toUpperCase()).join('.');

    // Return initials with dots
    return initials;
  }
}