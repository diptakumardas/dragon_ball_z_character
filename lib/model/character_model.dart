class CharacterModel {
  List<Items>? items;
  Meta? meta;
  Links? links;

  CharacterModel({this.items, this.meta, this.links});

  CharacterModel.fromJson(Map<String, dynamic> json) {
    if (json['items'] != null) {
      items = <Items>[];
      json['items'].forEach((v) {
        items!.add(new Items.fromJson(v));
      });
    }
    meta = json['meta'] != null ? new Meta.fromJson(json['meta']) : null;
    links = json['links'] != null ? new Links.fromJson(json['links']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.items != null) {
      data['items'] = this.items!.map((v) => v.toJson()).toList();
    }
    if (this.meta != null) {
      data['meta'] = this.meta!.toJson();
    }
    if (this.links != null) {
      data['links'] = this.links!.toJson();
    }
    return data;
  }
}

class Items {
  int? id;
  String? name;
  String? ki;
  String? maxKi;
  String? race;
  String? gender;
  String? description;
  String? image;
  String? affiliation;
  Null? deletedAt;

  Items(
      {this.id,
        this.name,
        this.ki,
        this.maxKi,
        this.race,
        this.gender,
        this.description,
        this.image,
        this.affiliation,
        this.deletedAt});

  Items.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    ki = json['ki'];
    maxKi = json['maxKi'];
    race = json['race'];
    gender = json['gender'];
    description = json['description'];
    image = json['image'];
    affiliation = json['affiliation'];
    deletedAt = json['deletedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['ki'] = this.ki;
    data['maxKi'] = this.maxKi;
    data['race'] = this.race;
    data['gender'] = this.gender;
    data['description'] = this.description;
    data['image'] = this.image;
    data['affiliation'] = this.affiliation;
    data['deletedAt'] = this.deletedAt;
    return data;
  }
}

class Meta {
  int? totalItems;
  int? itemCount;
  int? itemsPerPage;
  int? totalPages;
  int? currentPage;

  Meta(
      {this.totalItems,
        this.itemCount,
        this.itemsPerPage,
        this.totalPages,
        this.currentPage});

  Meta.fromJson(Map<String, dynamic> json) {
    totalItems = json['totalItems'];
    itemCount = json['itemCount'];
    itemsPerPage = json['itemsPerPage'];
    totalPages = json['totalPages'];
    currentPage = json['currentPage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['totalItems'] = this.totalItems;
    data['itemCount'] = this.itemCount;
    data['itemsPerPage'] = this.itemsPerPage;
    data['totalPages'] = this.totalPages;
    data['currentPage'] = this.currentPage;
    return data;
  }
}

class Links {
  String? first;
  String? previous;
  String? next;
  String? last;

  Links({this.first, this.previous, this.next, this.last});

  Links.fromJson(Map<String, dynamic> json) {
    first = json['first'];
    previous = json['previous'];
    next = json['next'];
    last = json['last'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['first'] = this.first;
    data['previous'] = this.previous;
    data['next'] = this.next;
    data['last'] = this.last;
    return data;
  }
}
