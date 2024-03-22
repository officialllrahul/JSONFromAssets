import 'dart:convert';

ProductsModel productsModelFromJson(String str) => ProductsModel.fromJson(json.decode(str));

String productsModelToJson(ProductsModel data) => json.encode(data.toJson());

class ProductsModel {
  bool? status;
  List<Datum>? data;
  String? message;

  ProductsModel({
    this.status,
    this.data,
    this.message,
  });

  factory ProductsModel.fromJson(Map<String, dynamic> json) => ProductsModel(
    status: json["status"],
    data: json["data"] == null ? [] : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
    "message": message,
  };
}

class Book {
  DateTime? createdDate;
  int? bookId;
  int? quantity;
  int? sku;
  bool? outOfStock;
  String? avatarPath;
  String? avatarName;
  String? arabicName;
  String? arabicDescription;
  dynamic audioPdfPath;
  int? type;
  String? serialNumber;
  String? price;
  String? currency;
  String? name;
  String? description;
  String? discount;
  String? author;
  bool? isApproved;
  bool? todayDeal;
  dynamic color;
  dynamic size;
  int? storeId;
  int? subCategoryId;
  int? countryId;
  int? averageRating;
  int? totalNoOfRating;
  Store? store;
  List<Datum>? categories;
  List<Poster>? posters;
  List<BookColorSize>? bookColorSizes;
  bool? isWishlist;

  Book({
    this.createdDate,
    this.bookId,
    this.quantity,
    this.sku,
    this.outOfStock,
    this.avatarPath,
    this.avatarName,
    this.arabicName,
    this.arabicDescription,
    this.audioPdfPath,
    this.type,
    this.serialNumber,
    this.price,
    this.currency,
    this.name,
    this.description,
    this.discount,
    this.author,
    this.isApproved,
    this.todayDeal,
    this.color,
    this.size,
    this.storeId,
    this.subCategoryId,
    this.countryId,
    this.averageRating,
    this.totalNoOfRating,
    this.store,
    this.categories,
    this.posters,
    this.bookColorSizes,
    this.isWishlist,
  });

  factory Book.fromJson(Map<String, dynamic> json) => Book(
    createdDate: json["createdDate"] == null ? null : DateTime.parse(json["createdDate"]),
    bookId: json["bookId"],
    quantity: json["quantity"],
    sku: json["sku"],
    outOfStock: json["outOfStock"],
    avatarPath: json["avatarPath"],
    avatarName: json["avatarName"],
    arabicName: json["arabicName"],
    arabicDescription: json["arabicDescription"],
    audioPdfPath: json["audioPdfPath"],
    type: json["type"],
    serialNumber: json["serialNumber"],
    price: json["price"],
    currency: json["currency"],
    name: json["name"],
    description: json["description"],
    discount: json["discount"],
    author: json["author"],
    isApproved: json["isApproved"],
    todayDeal: json["todayDeal"],
    color: json["color"],
    size: json["size"],
    storeId: json["storeId"],
    subCategoryId: json["subCategoryId"],
    countryId: json["countryId"],
    averageRating: json["averageRating"],
    totalNoOfRating: json["totalNoOfRating"],
    store: json["store"] == null ? null : Store.fromJson(json["store"]),
    categories: json["categories"] == null ? [] : List<Datum>.from(json["categories"]!.map((x) => Datum.fromJson(x))),
    posters: json["posters"] == null ? [] : List<Poster>.from(json["posters"]!.map((x) => Poster.fromJson(x))),
    bookColorSizes: json["bookColorSizes"] == null ? [] : List<BookColorSize>.from(json["bookColorSizes"]!.map((x) => BookColorSize.fromJson(x))),
    isWishlist: json["isWishlist"],
  );

  Map<String, dynamic> toJson() => {
    "createdDate": createdDate?.toIso8601String(),
    "bookId": bookId,
    "quantity": quantity,
    "sku": sku,
    "outOfStock": outOfStock,
    "avatarPath": avatarPath,
    "avatarName": avatarName,
    "arabicName": arabicName,
    "arabicDescription": arabicDescription,
    "audioPdfPath": audioPdfPath,
    "type": type,
    "serialNumber": serialNumber,
    "price": price,
    "currency": currency,
    "name": name,
    "description": description,
    "discount": discount,
    "author": author,
    "isApproved": isApproved,
    "todayDeal": todayDeal,
    "color": color,
    "size": size,
    "storeId": storeId,
    "subCategoryId": subCategoryId,
    "countryId": countryId,
    "averageRating": averageRating,
    "totalNoOfRating": totalNoOfRating,
    "store": store?.toJson(),
    "categories": categories == null ? [] : List<dynamic>.from(categories!.map((x) => x.toJson())),
    "posters": posters == null ? [] : List<dynamic>.from(posters!.map((x) => x.toJson())),
    "bookColorSizes": bookColorSizes == null ? [] : List<dynamic>.from(bookColorSizes!.map((x) => x.toJson())),
    "isWishlist": isWishlist,
  };
}

class Datum {
  DateTime? createdDate;
  int? subCategoryId;
  String? name;
  String? arabicName;
  String? avatarPath;
  bool? isActive;
  String? description;
  int? countryId;
  int? categoryId;
  List<Book>? books;
  String? avatarName;
  String? type;

  Datum({
    this.createdDate,
    this.subCategoryId,
    this.name,
    this.arabicName,
    this.avatarPath,
    this.isActive,
    this.description,
    this.countryId,
    this.categoryId,
    this.books,
    this.avatarName,
    this.type,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    createdDate: json["createdDate"] == null ? null : DateTime.parse(json["createdDate"]),
    subCategoryId: json["subCategoryId"],
    name: json["name"],
    arabicName: json["arabicName"],
    avatarPath: json["avatarPath"],
    isActive: json["isActive"],
    description: json["description"],
    countryId: json["countryId"],
    categoryId: json["categoryId"],
    books: json["books"] == null ? [] : List<Book>.from(json["books"]!.map((x) => Book.fromJson(x))),
    avatarName: json["avatarName"],
    type: json["type"],
  );

  Map<String, dynamic> toJson() => {
    "createdDate": createdDate?.toIso8601String(),
    "subCategoryId": subCategoryId,
    "name": name,
    "arabicName": arabicName,
    "avatarPath": avatarPath,
    "isActive": isActive,
    "description": description,
    "countryId": countryId,
    "categoryId": categoryId,
    "books": books == null ? [] : List<dynamic>.from(books!.map((x) => x.toJson())),
    "avatarName": avatarName,
    "type": type,
  };
}

class BookColorSize {
  DateTime? createdDate;
  int? bookColorSizeId;
  String? color;
  String? size;
  int? quantity;
  int? stock;
  String? price;
  String? serialNumber;
  int? bookId;
  bool? outOfStock;
  List<dynamic>? colorSizePosters;

  BookColorSize({
    this.createdDate,
    this.bookColorSizeId,
    this.color,
    this.size,
    this.quantity,
    this.stock,
    this.price,
    this.serialNumber,
    this.bookId,
    this.outOfStock,
    this.colorSizePosters,
  });

  factory BookColorSize.fromJson(Map<String, dynamic> json) => BookColorSize(
    createdDate: json["createdDate"] == null ? null : DateTime.parse(json["createdDate"]),
    bookColorSizeId: json["bookColorSizeId"],
    color: json["color"],
    size: json["size"],
    quantity: json["quantity"],
    stock: json["stock"],
    price: json["price"],
    serialNumber: json["serialNumber"],
    bookId: json["bookId"],
    outOfStock: json["outOfStock"],
    colorSizePosters: json["colorSizePosters"] == null ? [] : List<dynamic>.from(json["colorSizePosters"]!.map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "createdDate": createdDate?.toIso8601String(),
    "bookColorSizeId": bookColorSizeId,
    "color": color,
    "size": size,
    "quantity": quantity,
    "stock": stock,
    "price": price,
    "serialNumber": serialNumber,
    "bookId": bookId,
    "outOfStock": outOfStock,
    "colorSizePosters": colorSizePosters == null ? [] : List<dynamic>.from(colorSizePosters!.map((x) => x)),
  };
}


class Poster {
  DateTime? createdDate;
  int? posterId;
  String? avatarPath;
  dynamic avatarName;
  dynamic type;
  String? title;
  int? bookId;
  dynamic bookColorSizeId;
  dynamic classProductId;

  Poster({
    this.createdDate,
    this.posterId,
    this.avatarPath,
    this.avatarName,
    this.type,
    this.title,
    this.bookId,
    this.bookColorSizeId,
    this.classProductId,
  });

  factory Poster.fromJson(Map<String, dynamic> json) => Poster(
    createdDate: json["createdDate"] == null ? null : DateTime.parse(json["createdDate"]),
    posterId: json["posterId"],
    avatarPath: json["avatarPath"],
    avatarName: json["avatarName"],
    type: json["type"],
    title: json["title"],
    bookId: json["bookId"],
    bookColorSizeId: json["bookColorSizeId"],
    classProductId: json["classProductId"],
  );

  Map<String, dynamic> toJson() => {
    "createdDate": createdDate?.toIso8601String(),
    "posterId": posterId,
    "avatarPath": avatarPath,
    "avatarName": avatarName,
    "type": type,
    "title": title,
    "bookId": bookId,
    "bookColorSizeId": bookColorSizeId,
    "classProductId": classProductId,
  };
}

class Store {
  DateTime? createdDate;
  int? storeId;
  String? avatarPath;
  String? avatarName;
  String? name;
  String? arabicName;
  String? description;
  String? arabicDescription;
  bool? isPremium;
  bool? isActive;
  String? email;
  String? phone;
  String? phoneCode;
  String? currency;
  String? language;
  int? addedById;
  int? totalBooks;
  String? normalDelivery;
  String? expressDelivery;
  String? registrationToken;
  int? addressId;
  DateTime? lastLogged;
  int? supplierId;
  int? supplierCode;
  String? showPassword;
  List<int>? bookPermissions;

  Store({
    this.createdDate,
    this.storeId,
    this.avatarPath,
    this.avatarName,
    this.name,
    this.arabicName,
    this.description,
    this.arabicDescription,
    this.isPremium,
    this.isActive,
    this.email,
    this.phone,
    this.phoneCode,
    this.currency,
    this.language,
    this.addedById,
    this.totalBooks,
    this.normalDelivery,
    this.expressDelivery,
    this.registrationToken,
    this.addressId,
    this.lastLogged,
    this.supplierId,
    this.supplierCode,
    this.showPassword,
    this.bookPermissions,
  });

  factory Store.fromJson(Map<String, dynamic> json) => Store(
    createdDate: json["createdDate"] == null ? null : DateTime.parse(json["createdDate"]),
    storeId: json["storeId"],
    avatarPath: json["avatarPath"],
    avatarName: json["avatarName"],
    name: json["name"],
    arabicName: json["arabicName"],
    description:  json["description"],
    arabicDescription: json["arabicDescription"],
    isPremium: json["isPremium"],
    isActive: json["isActive"],
    email: json["email"],
    phone: json["phone"],
    phoneCode: json["phone_code"],
    currency: json["currency"],
    language: json["language"],
    addedById: json["addedById"],
    totalBooks: json["totalBooks"],
    normalDelivery: json["normalDelivery"],
    expressDelivery: json["expressDelivery"],
    registrationToken: json["registrationToken"],
    addressId: json["addressId"],
    lastLogged: json["lastLogged"] == null ? null : DateTime.parse(json["lastLogged"]),
    supplierId: json["supplierId"],
    supplierCode: json["supplierCode"],
    showPassword: json["showPassword"],
    bookPermissions: json["bookPermissions"] == null ? [] : List<int>.from(json["bookPermissions"]!.map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "createdDate": createdDate?.toIso8601String(),
    "storeId": storeId,
    "avatarPath": avatarPath,
    "avatarName": avatarName,
    "name": name,
    "arabicName": arabicName,
    "description": description,
    "arabicDescription": arabicDescription,
    "isPremium": isPremium,
    "isActive": isActive,
    "email": email,
    "phone": phone,
    "phone_code": phoneCode,
    "currency": currency,
    "language": language,
    "addedById": addedById,
    "totalBooks": totalBooks,
    "normalDelivery": normalDelivery,
    "expressDelivery": expressDelivery,
    "registrationToken": registrationToken,
    "addressId": addressId,
    "lastLogged": lastLogged?.toIso8601String(),
    "supplierId": supplierId,
    "supplierCode": supplierCode,
    "showPassword": showPassword,
    "bookPermissions": bookPermissions == null ? [] : List<dynamic>.from(bookPermissions!.map((x) => x)),
  };
}