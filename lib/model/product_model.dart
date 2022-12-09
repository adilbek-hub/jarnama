// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class AdvertisingProduct {
  const AdvertisingProduct(
      {this.image,
      required this.title,
      required this.desctription,
      required this.dateTime,
      required this.userName,
      required this.address,
      required this.phoneNumber,
      this.price});
  final List<String>? image;
  final String title;
  final String desctription;
  final String dateTime;
  final String userName;
  final String address;
  final String phoneNumber;
  final String? price;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'image': image,
      'title': title,
      'desctription': desctription,
      'dateTime': dateTime,
      'userName': userName,
      'address': address,
      'phoneNumber': phoneNumber,
      'price': price,
    };
  }

  factory AdvertisingProduct.fromMap(Map<String, dynamic> map) {
    return AdvertisingProduct(
      image: map['image'] != null
          ? List<String>.from((map['image'] as List<String>))
          : null,
      title: map['title'] as String,
      desctription: map['desctription'] as String,
      dateTime: map['dateTime'] as String,
      userName: map['userName'] as String,
      address: map['address'] as String,
      phoneNumber: map['phoneNumber'] as String,
      price: map['price'] != null ? map['price'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory AdvertisingProduct.fromJson(String source) =>
      AdvertisingProduct.fromMap(json.decode(source) as Map<String, dynamic>);
}
