class BookModel {
  String? message;
  Data? data;

  BookModel({this.message, this.data});

  BookModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  List<Docs>? docs;
  int? nextPage;
  int? totalCount;
  int? totalPages;

  Data({this.docs, this.nextPage, this.totalCount, this.totalPages});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['docs'] != null) {
      docs = <Docs>[];
      json['docs'].forEach((v) {
        docs!.add(new Docs.fromJson(v));
      });
    }
    nextPage = json['nextPage'];
    totalCount = json['totalCount'];
    totalPages = json['totalPages'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.docs != null) {
      data['docs'] = this.docs!.map((v) => v.toJson()).toList();
    }
    data['nextPage'] = this.nextPage;
    data['totalCount'] = this.totalCount;
    data['totalPages'] = this.totalPages;
    return data;
  }
}

class Docs {
  String? sId;
  String? isbn;
  String? name;
  PublisherId? publisherId;
  String? publishedYear;
  String? edition;
  Price? price;
  LanguageId? languageId;
  int? totalSold;
  int? totalRented;
  String? coverImage;
  bool? isFeatured;
  int? averageRating;
  int? noOfRating;
  String? description;
  String? createdAt;
  String? updatedAt;
  List<Categories>? categories;
  List<Authors>? authors;

  Docs(
      {this.sId,
      this.isbn,
      this.name,
      this.publisherId,
      this.publishedYear,
      this.edition,
      this.price,
      this.languageId,
      this.totalSold,
      this.totalRented,
      this.coverImage,
      this.isFeatured,
      this.averageRating,
      this.noOfRating,
      this.description,
      this.createdAt,
      this.updatedAt,
      this.categories,
      this.authors});

  Docs.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    isbn = json['isbn'];
    name = json['name'];
    publisherId = json['publisherId'] != null
        ? new PublisherId.fromJson(json['publisherId'])
        : null;
    publishedYear = json['publishedYear'];
    edition = json['edition'];
    price = json['price'] != null ? new Price.fromJson(json['price']) : null;
    languageId = json['languageId'] != null
        ? new LanguageId.fromJson(json['languageId'])
        : null;
    totalSold = json['totalSold'];
    totalRented = json['totalRented'];
    coverImage = json['coverImage'];
    isFeatured = json['isFeatured'];
    averageRating = json['averageRating'];
    noOfRating = json['noOfRating'];
    description = json['description'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    if (json['categories'] != null) {
      categories = <Categories>[];
      json['categories'].forEach((v) {
        categories!.add(new Categories.fromJson(v));
      });
    }
    if (json['authors'] != null) {
      authors = <Authors>[];
      json['authors'].forEach((v) {
        authors!.add(Authors.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['isbn'] = this.isbn;
    data['name'] = this.name;
    if (this.publisherId != null) {
      data['publisherId'] = this.publisherId!.toJson();
    }
    data['publishedYear'] = this.publishedYear;
    data['edition'] = this.edition;
    if (this.price != null) {
      data['price'] = this.price!.toJson();
    }
    if (this.languageId != null) {
      data['languageId'] = this.languageId!.toJson();
    }
    data['totalSold'] = this.totalSold;
    data['totalRented'] = this.totalRented;
    data['coverImage'] = this.coverImage;
    data['isFeatured'] = this.isFeatured;
    data['averageRating'] = this.averageRating;
    data['noOfRating'] = this.noOfRating;
    data['description'] = this.description;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    if (this.categories != null) {
      data['categories'] = this.categories!.map((v) => v.toJson()).toList();
    }
    if (this.authors != null) {
      data['authors'] = this.authors!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class PublisherId {
  String? sId;
  String? name;
  int? iV;
  String? address;
  String? contact;
  String? description;
  String? email;

  PublisherId(
      {this.sId,
      this.name,
      this.iV,
      this.address,
      this.contact,
      this.description,
      this.email});

  PublisherId.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    iV = json['__v'];
    address = json['address'];
    contact = json['contact'];
    description = json['description'];
    email = json['email'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['name'] = this.name;
    data['__v'] = this.iV;
    data['address'] = this.address;
    data['contact'] = this.contact;
    data['description'] = this.description;
    data['email'] = this.email;
    return data;
  }
}

class Price {
  int? hardCoverPrice;
  int? softCoverPrice;

  Price({this.hardCoverPrice, this.softCoverPrice});

  Price.fromJson(Map<String, dynamic> json) {
    hardCoverPrice = json['hardCoverPrice'];
    softCoverPrice = json['softCoverPrice'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['hardCoverPrice'] = this.hardCoverPrice;
    data['softCoverPrice'] = this.softCoverPrice;
    return data;
  }
}

class LanguageId {
  String? sId;
  String? name;
  String? createdAt;
  String? updatedAt;
  int? iV;

  LanguageId({this.sId, this.name, this.createdAt, this.updatedAt, this.iV});

  LanguageId.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['name'] = this.name;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    return data;
  }
}

class Categories {
  String? name;
  String? sId;

  Categories({this.name, this.sId});

  Categories.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    sId = json['_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['_id'] = this.sId;
    return data;
  }
}

class Authors {
  String? name;
  String? id;

  Authors({this.name, this.id});

  Authors.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    id = json["_id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['_id'] = this.id;
    return data;
  }
}
