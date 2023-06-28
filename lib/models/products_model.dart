// To parse this JSON data, do
//
//     final productsModel = productsModelFromJson(jsonString);

import 'dart:convert';

ProductsModel productsModelFromJson(String str) => ProductsModel.fromJson(json.decode(str));

String productsModelToJson(ProductsModel data) => json.encode(data.toJson());

class ProductsModel {
  int? status;
  String? message;
  Products? products;

  ProductsModel({
    this.status,
    this.message,
    this.products,
  });

  factory ProductsModel.fromJson(Map<String, dynamic> json) => ProductsModel(
    status: json["status"],
    message: json["message"],
    products: json["products"] == null ? null : Products.fromJson(json["products"]),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "message": message,
    "products": products?.toJson(),
  };
}

class Products {
  int? currentPage;
  List<ProductList>? data;
  String? firstPageUrl;
  int? from;
  int? lastPage;
  String? lastPageUrl;
  List<Link>? links;
  String? nextPageUrl;
  String? path;
  int? perPage;
  dynamic prevPageUrl;
  int? to;
  int? total;

  Products({
    this.currentPage,
    this.data,
    this.firstPageUrl,
    this.from,
    this.lastPage,
    this.lastPageUrl,
    this.links,
    this.nextPageUrl,
    this.path,
    this.perPage,
    this.prevPageUrl,
    this.to,
    this.total,
  });

  factory Products.fromJson(Map<String, dynamic> json) => Products(
    currentPage: json["current_page"],
    data: json["data"] == null ? [] : List<ProductList>.from(json["data"]!.map((x) => ProductList.fromJson(x))),
    firstPageUrl: json["first_page_url"],
    from: json["from"],
    lastPage: json["last_page"],
    lastPageUrl: json["last_page_url"],
    links: json["links"] == null ? [] : List<Link>.from(json["links"]!.map((x) => Link.fromJson(x))),
    nextPageUrl: json["next_page_url"],
    path: json["path"],
    perPage: json["per_page"],
    prevPageUrl: json["prev_page_url"],
    to: json["to"],
    total: json["total"],
  );

  Map<String, dynamic> toJson() => {
    "current_page": currentPage,
    "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
    "first_page_url": firstPageUrl,
    "from": from,
    "last_page": lastPage,
    "last_page_url": lastPageUrl,
    "links": links == null ? [] : List<dynamic>.from(links!.map((x) => x.toJson())),
    "next_page_url": nextPageUrl,
    "path": path,
    "per_page": perPage,
    "prev_page_url": prevPageUrl,
    "to": to,
    "total": total,
  };
}

class ProductList {
  int? id;
  int? storeId;
  dynamic subStoreId;
  String? storeItemId;
  String? name;
  dynamic nameLanguage;
  dynamic kitchenLabel;
  int? categoryId;
  int? subcategoryId;
  dynamic brandId;
  dynamic productCode;
  String? coverImage;
  String? videoUrl;
  dynamic tags;
  dynamic shortDescription;
  dynamic shortDescriptionLanguage;
  String? description;
  dynamic descriptionLanguage;
  dynamic price;
  int? wp1;
  double? wp2;
  double? offerPrice;
  String? offerLabel;
  dynamic offerLabelLanguage;
  dynamic priceNote;
  int? unitId;
  int? maxQty;
  int? available;
  int? popular;
  bool? looseAvailable;
  dynamic barcode;
  int? sequence;
  int? deliveryCharge;
  dynamic deliveryChargeType;
  int? inventoryStock;
  int? tax;
  int? hidePrice;
  int? considerPrice;
  int? isService;
  Settings? settings;
  int? isCombo;
  int? hasComplementary;
  int? maxComplementaryQty;
  String? cardStyle;
  int? active;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic deletedAt;
  dynamic sectionId;
  dynamic productRatingsAvgRating;
  dynamic brand;
  List<Addon>? addons;
  List<ProductOption>? productOptions;
  List<ProductImage>? productImages;
  List<Category>? categories;
  Unit? unit;
  double? taxCalc;
  double? totalPrice;
  double? priceTaxed;
  List<int>? cates;

  ProductList({
    this.id,
    this.storeId,
    this.subStoreId,
    this.storeItemId,
    this.name,
    this.nameLanguage,
    this.kitchenLabel,
    this.categoryId,
    this.subcategoryId,
    this.brandId,
    this.productCode,
    this.coverImage,
    this.videoUrl,
    this.tags,
    this.shortDescription,
    this.shortDescriptionLanguage,
    this.description,
    this.descriptionLanguage,
    this.price,
    this.wp1,
    this.wp2,
    this.offerPrice,
    this.offerLabel,
    this.offerLabelLanguage,
    this.priceNote,
    this.unitId,
    this.maxQty,
    this.available,
    this.popular,
    this.looseAvailable,
    this.barcode,
    this.sequence,
    this.deliveryCharge,
    this.deliveryChargeType,
    this.inventoryStock,
    this.tax,
    this.hidePrice,
    this.considerPrice,
    this.isService,
    this.settings,
    this.isCombo,
    this.hasComplementary,
    this.maxComplementaryQty,
    this.cardStyle,
    this.active,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.sectionId,
    this.productRatingsAvgRating,
    this.brand,
    this.addons,
    this.productOptions,
    this.productImages,
    this.categories,
    this.unit,
    this.taxCalc,
    this.totalPrice,
    this.priceTaxed,
    this.cates,
  });

  factory ProductList.fromJson(Map<String, dynamic> json) => ProductList(
    id: json["id"],
    storeId: json["store_id"],
    subStoreId: json["sub_store_id"],
    storeItemId: json["store_item_id"],
    name: json["name"],
    nameLanguage: json["name_language"],
    kitchenLabel: json["kitchen_label"],
    categoryId: json["category_id"],
    subcategoryId: json["subcategory_id"],
    brandId: json["brand_id"],
    productCode: json["product_code"],
    coverImage: json["cover_image"],
    videoUrl: json["video_url"],
    tags: json["tags"],
    shortDescription: json["short_description"],
    shortDescriptionLanguage: json["short_description_language"],
    description: json["description"],
    descriptionLanguage: json["description_language"],
    price: json["price"],
    wp1: json["wp_1"],
    wp2: json["wp_2"]?.toDouble(),
    offerPrice: json["offer_price"]?.toDouble(),
    offerLabel: json["offer_label"],
    offerLabelLanguage: json["offer_label_language"],
    priceNote: json["price_note"],
    unitId: json["unit_id"],
    maxQty: json["max_qty"],
    available: json["available"],
    popular: json["popular"],
    looseAvailable: json["loose_available"],
    barcode: json["barcode"],
    sequence: json["sequence"],
    deliveryCharge: json["delivery_charge"],
    deliveryChargeType: json["delivery_charge_type"],
    inventoryStock: json["inventory_stock"],
    tax: json["tax"],
    hidePrice: json["hide_price"],
    considerPrice: json["consider_price"],
    isService: json["is_service"],
    settings: json["settings"] == null ? null : Settings.fromJson(json["settings"]),
    isCombo: json["is_combo"],
    hasComplementary: json["has_complementary"],
    maxComplementaryQty: json["max_complementary_qty"],
    cardStyle: json["card_style"],
    active: json["active"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    deletedAt: json["deleted_at"],
    sectionId: json["section_id"],
    productRatingsAvgRating: json["product_ratings_avg_rating"],
    brand: json["brand"],
    addons: json["addons"] == null ? [] : List<Addon>.from(json["addons"]!.map((x) => Addon.fromJson(x))),
    productOptions: json["product_options"] == null ? [] : List<ProductOption>.from(json["product_options"]!.map((x) => ProductOption.fromJson(x))),
    productImages: json["product_images"] == null ? [] : List<ProductImage>.from(json["product_images"]!.map((x) => ProductImage.fromJson(x))),
    categories: json["categories"] == null ? [] : List<Category>.from(json["categories"]!.map((x) => Category.fromJson(x))),
    unit: json["unit"] == null ? null : Unit.fromJson(json["unit"]),
    taxCalc: json["tax_calc"]?.toDouble(),
    totalPrice: json["total_price"]?.toDouble(),
    priceTaxed: json["price_taxed"]?.toDouble(),
    cates: json["cates"] == null ? [] : List<int>.from(json["cates"]!.map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "store_id": storeId,
    "sub_store_id": subStoreId,
    "store_item_id": storeItemId,
    "name": name,
    "name_language": nameLanguage,
    "kitchen_label": kitchenLabel,
    "category_id": categoryId,
    "subcategory_id": subcategoryId,
    "brand_id": brandId,
    "product_code": productCode,
    "cover_image": coverImage,
    "video_url": videoUrl,
    "tags": tags,
    "short_description": shortDescription,
    "short_description_language": shortDescriptionLanguage,
    "description": description,
    "description_language": descriptionLanguage,
    "price": price,
    "wp_1": wp1,
    "wp_2": wp2,
    "offer_price": offerPrice,
    "offer_label": offerLabel,
    "offer_label_language": offerLabelLanguage,
    "price_note": priceNote,
    "unit_id": unitId,
    "max_qty": maxQty,
    "available": available,
    "popular": popular,
    "loose_available": looseAvailable,
    "barcode": barcode,
    "sequence": sequence,
    "delivery_charge": deliveryCharge,
    "delivery_charge_type": deliveryChargeType,
    "inventory_stock": inventoryStock,
    "tax": tax,
    "hide_price": hidePrice,
    "consider_price": considerPrice,
    "is_service": isService,
    "settings": settings?.toJson(),
    "is_combo": isCombo,
    "has_complementary": hasComplementary,
    "max_complementary_qty": maxComplementaryQty,
    "card_style": cardStyle,
    "active": active,
    "created_at": createdAt?.toIso8601String(),
    "updated_at": updatedAt?.toIso8601String(),
    "deleted_at": deletedAt,
    "section_id": sectionId,
    "product_ratings_avg_rating": productRatingsAvgRating,
    "brand": brand,
    "addons": addons == null ? [] : List<dynamic>.from(addons!.map((x) => x.toJson())),
    "product_options": productOptions == null ? [] : List<dynamic>.from(productOptions!.map((x) => x.toJson())),
    "product_images": productImages == null ? [] : List<dynamic>.from(productImages!.map((x) => x.toJson())),
    "categories": categories == null ? [] : List<dynamic>.from(categories!.map((x) => x.toJson())),
    "unit": unit?.toJson(),
    "tax_calc": taxCalc,
    "total_price": totalPrice,
    "price_taxed": priceTaxed,
    "cates": cates == null ? [] : List<dynamic>.from(cates!.map((x) => x)),
  };
}

class Addon {
  int? id;
  int? storeId;
  String? name;
  dynamic nameLanguage;
  dynamic price;
  dynamic quantityType;
  int? active;
  DateTime? createdAt;
  DateTime? updatedAt;
  AddonPivot? pivot;
  double? taxCalc;
  double? totalPrice;

  Addon({
    this.id,
    this.storeId,
    this.name,
    this.nameLanguage,
    this.price,
    this.quantityType,
    this.active,
    this.createdAt,
    this.updatedAt,
    this.pivot,
    this.taxCalc,
    this.totalPrice,
  });

  factory Addon.fromJson(Map<String, dynamic> json) => Addon(
    id: json["id"],
    storeId: json["store_id"],
    name: json["name"],
    nameLanguage: json["name_language"],
    price: json["price"],
    quantityType: json["quantity_type"],
    active: json["active"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    pivot: json["pivot"] == null ? null : AddonPivot.fromJson(json["pivot"]),
    taxCalc: json["tax_calc"]?.toDouble(),
    totalPrice: json["total_price"]?.toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "store_id": storeId,
    "name": name,
    "name_language": nameLanguage,
    "price": price,
    "quantity_type": quantityType,
    "active": active,
    "created_at": createdAt?.toIso8601String(),
    "updated_at": updatedAt?.toIso8601String(),
    "pivot": pivot?.toJson(),
    "tax_calc": taxCalc,
    "total_price": totalPrice,
  };
}

class AddonPivot {
  int? productId;
  int? addonId;
  double? price;
  int? selectedDefault;
  DateTime? createdAt;
  DateTime? updatedAt;

  AddonPivot({
    this.productId,
    this.addonId,
    this.price,
    this.selectedDefault,
    this.createdAt,
    this.updatedAt,
  });

  factory AddonPivot.fromJson(Map<String, dynamic> json) => AddonPivot(
    productId: json["product_id"],
    addonId: json["addon_id"],
    price: json["price"]?.toDouble(),
    selectedDefault: json["selected_default"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "product_id": productId,
    "addon_id": addonId,
    "price": price,
    "selected_default": selectedDefault,
    "created_at": createdAt?.toIso8601String(),
    "updated_at": updatedAt?.toIso8601String(),
  };
}


class Category {
  int? id;
  int? storeId;
  dynamic subStoreId;
  int? parentId;
  String? name;
  dynamic nameLanguage;
  String? image;
  int? sequence;
  String? timeFrom;
  String? timeTo;
  List<dynamic>? filterProperties;
  int? level;
  int? active;
  DateTime? createdAt;
  DateTime? updatedAt;
  CategoryPivot? pivot;

  Category({
    this.id,
    this.storeId,
    this.subStoreId,
    this.parentId,
    this.name,
    this.nameLanguage,
    this.image,
    this.sequence,
    this.timeFrom,
    this.timeTo,
    this.filterProperties,
    this.level,
    this.active,
    this.createdAt,
    this.updatedAt,
    this.pivot,
  });

  factory Category.fromJson(Map<String, dynamic> json) => Category(
    id: json["id"],
    storeId: json["store_id"],
    subStoreId: json["sub_store_id"],
    parentId: json["parent_id"],
    name: json["name"],
    nameLanguage: json["name_language"],
    image: json["image"],
    sequence: json["sequence"],
    timeFrom: json["time_from"],
    timeTo: json["time_to"],
    filterProperties: json["filter_properties"] == null ? [] : List<dynamic>.from(json["filter_properties"]!.map((x) => x)),
    level: json["level"],
    active: json["active"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    pivot: json["pivot"] == null ? null : CategoryPivot.fromJson(json["pivot"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "store_id": storeId,
    "sub_store_id": subStoreId,
    "parent_id": parentId,
    "name": name,
    "name_language": nameLanguage,
    "image": image,
    "sequence": sequence,
    "time_from": timeFrom,
    "time_to": timeTo,
    "filter_properties": filterProperties == null ? [] : List<dynamic>.from(filterProperties!.map((x) => x)),
    "level": level,
    "active": active,
    "created_at": createdAt?.toIso8601String(),
    "updated_at": updatedAt?.toIso8601String(),
    "pivot": pivot?.toJson(),
  };
}

class DescriptionLanguageClass {
  String? ml;
  String? ar;

  DescriptionLanguageClass({
    this.ml,
    this.ar,
  });

  factory DescriptionLanguageClass.fromJson(Map<String, dynamic> json) => DescriptionLanguageClass(
    ml: json["Ml"],
    ar: json["Ar"],
  );

  Map<String, dynamic> toJson() => {
    "Ml": ml,
    "Ar": ar,
  };
}

class CategoryPivot {
  int? productId;
  int? categoryId;

  CategoryPivot({
    this.productId,
    this.categoryId,
  });

  factory CategoryPivot.fromJson(Map<String, dynamic> json) => CategoryPivot(
    productId: json["product_id"],
    categoryId: json["category_id"],
  );

  Map<String, dynamic> toJson() => {
    "product_id": productId,
    "category_id": categoryId,
  };
}

class ProductImage {
  int? id;
  int? productId;
  String? image;
  int? sequence;
  DateTime? createdAt;
  DateTime? updatedAt;

  ProductImage({
    this.id,
    this.productId,
    this.image,
    this.sequence,
    this.createdAt,
    this.updatedAt,
  });

  factory ProductImage.fromJson(Map<String, dynamic> json) => ProductImage(
    id: json["id"],
    productId: json["product_id"],
    image: json["image"],
    sequence: json["sequence"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "product_id": productId,
    "image": image,
    "sequence": sequence,
    "created_at": createdAt?.toIso8601String(),
    "updated_at": updatedAt?.toIso8601String(),
  };
}

class ProductOption {
  int? id;
  int? productId;
  String? name;
  DescriptionLanguageClass? nameLanguage;
  double? price;
  int? offerPrice;
  int? wp1;
  int? wp2;
  int? selectedDefault;
  DateTime? createdAt;
  DateTime? updatedAt;
  double? taxCalc;
  double? priceTaxed;
  double? totalPrice;

  ProductOption({
    this.id,
    this.productId,
    this.name,
    this.nameLanguage,
    this.price,
    this.offerPrice,
    this.wp1,
    this.wp2,
    this.selectedDefault,
    this.createdAt,
    this.updatedAt,
    this.taxCalc,
    this.priceTaxed,
    this.totalPrice,
  });

  factory ProductOption.fromJson(Map<String, dynamic> json) => ProductOption(
    id: json["id"],
    productId: json["product_id"],
    name: json["name"],
    nameLanguage: json["name_language"] == null ? null : DescriptionLanguageClass.fromJson(json["name_language"]),
    price: json["price"]?.toDouble(),
    offerPrice: json["offer_price"],
    wp1: json["wp_1"],
    wp2: json["wp_2"],
    selectedDefault: json["selected_default"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    taxCalc: json["tax_calc"]?.toDouble(),
    priceTaxed: json["price_taxed"]?.toDouble(),
    totalPrice: json["total_price"]?.toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "product_id": productId,
    "name": name,
    "name_language": nameLanguage?.toJson(),
    "price": price,
    "offer_price": offerPrice,
    "wp_1": wp1,
    "wp_2": wp2,
    "selected_default": selectedDefault,
    "created_at": createdAt?.toIso8601String(),
    "updated_at": updatedAt?.toIso8601String(),
    "tax_calc": taxCalc,
    "price_taxed": priceTaxed,
    "total_price": totalPrice,
  };
}

class Settings {
  int? bulkQtyAvailable;

  Settings({
    this.bulkQtyAvailable,
  });

  factory Settings.fromJson(Map<String, dynamic> json) => Settings(
    bulkQtyAvailable: json["bulk_qty_available"],
  );

  Map<String, dynamic> toJson() => {
    "bulk_qty_available": bulkQtyAvailable,
  };
}

class Unit {
  int? id;
  int? storeId;
  dynamic name;
  dynamic shortForm;
  ShortFormLanguage? shortFormLanguage;
  dynamic type;
  int? active;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? selectedDefault;

  Unit({
    this.id,
    this.storeId,
    this.name,
    this.shortForm,
    this.shortFormLanguage,
    this.type,
    this.active,
    this.createdAt,
    this.updatedAt,
    this.selectedDefault,
  });

  factory Unit.fromJson(Map<String, dynamic> json) => Unit(
    id: json["id"],
    storeId: json["store_id"],
    name: json["name"],
    shortForm: json["short_form"],
    shortFormLanguage: json["short_form_language"] == null ? null : ShortFormLanguage.fromJson(json["short_form_language"]),
    type: json["type"],
    active: json["active"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    selectedDefault: json["selected_default"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "store_id": storeId,
    "name": name,
    "short_form": shortForm,
    "short_form_language": shortFormLanguage?.toJson(),
    "type": type,
    "active": active,
    "created_at": createdAt?.toIso8601String(),
    "updated_at": updatedAt?.toIso8601String(),
    "selected_default": selectedDefault,
  };
}


class ShortFormLanguage {
  dynamic ar;

  ShortFormLanguage({
    this.ar,
  });

  factory ShortFormLanguage.fromJson(Map<String, dynamic> json) => ShortFormLanguage(
    ar: json["Ar"],
  );

  Map<String, dynamic> toJson() => {
    "Ar": ar,
  };
}



class Link {
  String? url;
  String? label;
  bool? active;

  Link({
    this.url,
    this.label,
    this.active,
  });

  factory Link.fromJson(Map<String, dynamic> json) => Link(
    url: json["url"],
    label: json["label"],
    active: json["active"],
  );

  Map<String, dynamic> toJson() => {
    "url": url,
    "label": label,
    "active": active,
  };
}


