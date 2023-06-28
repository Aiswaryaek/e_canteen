// To parse this JSON data, do
//
//     final addCartModel = addCartModelFromJson(jsonString);

import 'dart:convert';

AddCartModel addCartModelFromJson(String str) => AddCartModel.fromJson(json.decode(str));

String addCartModelToJson(AddCartModel data) => json.encode(data.toJson());

class AddCartModel {
  int? status;
  String? message;
  Order? order;

  AddCartModel({
    this.status,
    this.message,
    this.order,
  });

  factory AddCartModel.fromJson(Map<String, dynamic> json) => AddCartModel(
    status: json["status"],
    message: json["message"],
    order: json["order"] == null ? null : Order.fromJson(json["order"]),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "message": message,
    "order": order?.toJson(),
  };
}

class Order {
  int? id;
  int? storeId;
  dynamic subStoreId;
  dynamic userId;
  int? storeCustomerId;
  dynamic storeTableId;
  dynamic waiterId;
  dynamic denzoUserId;
  int? orderNo;
  dynamic name;
  dynamic contactNumber;
  dynamic deliveryAddress;
  dynamic streetNo;
  dynamic country;
  dynamic city;
  dynamic gpsLocation;
  dynamic distanceFromStore;
  String? orderType;
  dynamic orderNote;
  dynamic confirmedAt;
  dynamic dispatchedAt;
  int? priceVerified;
  int? subtotal;
  int? deliveryCharge;
  dynamic deliveryTrackingId;
  dynamic paymentRefId;
  dynamic paymentStatus;
  int? receivedAmount;
  int? taxAmount;
  int? discountPercent;
  int? discount;
  int? grandTotal;
  int? balanceAmount;
  int? isOnline;
  int? isOutdoor;
  String? paymentMode;
  String? offlinePaymentOption;
  dynamic vehicleNo;
  dynamic couponId;
  int? couponDiscount;
  dynamic loyaltyCardId;
  int? loyaltyCardDiscount;
  dynamic deliveryDateTime;
  dynamic deliveryAreaId;
  dynamic createdBy;
  dynamic salesAgentId;
  dynamic multiCustomers;
  dynamic multiPayments;
  String? status;
  dynamic cancelType;
  dynamic cancelReason;
  dynamic editedAt;
  dynamic cancelledBy;
  dynamic editedBy;
  dynamic dayEndId;
  dynamic tokenNo;
  int? noOfPeople;
  int? orderItemsCount;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic deliveryBy;
  List<OrderItem>? orderItems;
  List<dynamic>? extraOrderItems;

  Order({
    this.id,
    this.storeId,
    this.subStoreId,
    this.userId,
    this.storeCustomerId,
    this.storeTableId,
    this.waiterId,
    this.denzoUserId,
    this.orderNo,
    this.name,
    this.contactNumber,
    this.deliveryAddress,
    this.streetNo,
    this.country,
    this.city,
    this.gpsLocation,
    this.distanceFromStore,
    this.orderType,
    this.orderNote,
    this.confirmedAt,
    this.dispatchedAt,
    this.priceVerified,
    this.subtotal,
    this.deliveryCharge,
    this.deliveryTrackingId,
    this.paymentRefId,
    this.paymentStatus,
    this.receivedAmount,
    this.taxAmount,
    this.discountPercent,
    this.discount,
    this.grandTotal,
    this.balanceAmount,
    this.isOnline,
    this.isOutdoor,
    this.paymentMode,
    this.offlinePaymentOption,
    this.vehicleNo,
    this.couponId,
    this.couponDiscount,
    this.loyaltyCardId,
    this.loyaltyCardDiscount,
    this.deliveryDateTime,
    this.deliveryAreaId,
    this.createdBy,
    this.salesAgentId,
    this.multiCustomers,
    this.multiPayments,
    this.status,
    this.cancelType,
    this.cancelReason,
    this.editedAt,
    this.cancelledBy,
    this.editedBy,
    this.dayEndId,
    this.tokenNo,
    this.noOfPeople,
    this.orderItemsCount,
    this.createdAt,
    this.updatedAt,
    this.deliveryBy,
    this.orderItems,
    this.extraOrderItems,
  });

  factory Order.fromJson(Map<String, dynamic> json) => Order(
    id: json["id"],
    storeId: json["store_id"],
    subStoreId: json["sub_store_id"],
    userId: json["user_id"],
    storeCustomerId: json["store_customer_id"],
    storeTableId: json["store_table_id"],
    waiterId: json["waiter_id"],
    denzoUserId: json["denzo_user_id"],
    orderNo: json["order_no"],
    name: json["name"],
    contactNumber: json["contact_number"],
    deliveryAddress: json["delivery_address"],
    streetNo: json["street_no"],
    country: json["country"],
    city: json["city"],
    gpsLocation: json["gps_location"],
    distanceFromStore: json["distance_from_store"],
    orderType: json["order_type"],
    orderNote: json["order_note"],
    confirmedAt: json["confirmed_at"],
    dispatchedAt: json["dispatched_at"],
    priceVerified: json["price_verified"],
    subtotal: json["subtotal"],
    deliveryCharge: json["delivery_charge"],
    deliveryTrackingId: json["delivery_tracking_id"],
    paymentRefId: json["payment_ref_id"],
    paymentStatus: json["payment_status"],
    receivedAmount: json["received_amount"],
    taxAmount: json["tax_amount"],
    discountPercent: json["discount_percent"],
    discount: json["discount"],
    grandTotal: json["grand_total"],
    balanceAmount: json["balance_amount"],
    isOnline: json["is_online"],
    isOutdoor: json["is_outdoor"],
    paymentMode: json["payment_mode"],
    offlinePaymentOption: json["offline_payment_option"],
    vehicleNo: json["vehicle_no"],
    couponId: json["coupon_id"],
    couponDiscount: json["coupon_discount"],
    loyaltyCardId: json["loyalty_card_id"],
    loyaltyCardDiscount: json["loyalty_card_discount"],
    deliveryDateTime: json["delivery_date_time"],
    deliveryAreaId: json["delivery_area_id"],
    createdBy: json["created_by"],
    salesAgentId: json["sales_agent_id"],
    multiCustomers: json["multi_customers"],
    multiPayments: json["multi_payments"],
    status: json["status"],
    cancelType: json["cancel_type"],
    cancelReason: json["cancel_reason"],
    editedAt: json["edited_at"],
    cancelledBy: json["cancelled_by"],
    editedBy: json["edited_by"],
    dayEndId: json["day_end_id"],
    tokenNo: json["token_no"],
    noOfPeople: json["no_of_people"],
    orderItemsCount: json["order_items_count"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    deliveryBy: json["delivery_by"],
    orderItems: json["order_items"] == null ? [] : List<OrderItem>.from(json["order_items"]!.map((x) => OrderItem.fromJson(x))),
    extraOrderItems: json["extra_order_items"] == null ? [] : List<dynamic>.from(json["extra_order_items"]!.map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "store_id": storeId,
    "sub_store_id": subStoreId,
    "user_id": userId,
    "store_customer_id": storeCustomerId,
    "store_table_id": storeTableId,
    "waiter_id": waiterId,
    "denzo_user_id": denzoUserId,
    "order_no": orderNo,
    "name": name,
    "contact_number": contactNumber,
    "delivery_address": deliveryAddress,
    "street_no": streetNo,
    "country": country,
    "city": city,
    "gps_location": gpsLocation,
    "distance_from_store": distanceFromStore,
    "order_type": orderType,
    "order_note": orderNote,
    "confirmed_at": confirmedAt,
    "dispatched_at": dispatchedAt,
    "price_verified": priceVerified,
    "subtotal": subtotal,
    "delivery_charge": deliveryCharge,
    "delivery_tracking_id": deliveryTrackingId,
    "payment_ref_id": paymentRefId,
    "payment_status": paymentStatus,
    "received_amount": receivedAmount,
    "tax_amount": taxAmount,
    "discount_percent": discountPercent,
    "discount": discount,
    "grand_total": grandTotal,
    "balance_amount": balanceAmount,
    "is_online": isOnline,
    "is_outdoor": isOutdoor,
    "payment_mode": paymentMode,
    "offline_payment_option": offlinePaymentOption,
    "vehicle_no": vehicleNo,
    "coupon_id": couponId,
    "coupon_discount": couponDiscount,
    "loyalty_card_id": loyaltyCardId,
    "loyalty_card_discount": loyaltyCardDiscount,
    "delivery_date_time": deliveryDateTime,
    "delivery_area_id": deliveryAreaId,
    "created_by": createdBy,
    "sales_agent_id": salesAgentId,
    "multi_customers": multiCustomers,
    "multi_payments": multiPayments,
    "status": status,
    "cancel_type": cancelType,
    "cancel_reason": cancelReason,
    "edited_at": editedAt,
    "cancelled_by": cancelledBy,
    "edited_by": editedBy,
    "day_end_id": dayEndId,
    "token_no": tokenNo,
    "no_of_people": noOfPeople,
    "order_items_count": orderItemsCount,
    "created_at": createdAt?.toIso8601String(),
    "updated_at": updatedAt?.toIso8601String(),
    "delivery_by": deliveryBy,
    "order_items": orderItems == null ? [] : List<dynamic>.from(orderItems!.map((x) => x.toJson())),
    "extra_order_items": extraOrderItems == null ? [] : List<dynamic>.from(extraOrderItems!.map((x) => x)),
  };
}

class OrderItem {
  int? id;
  int? orderId;
  int? productId;
  dynamic productOptionId;
  List<dynamic>? addons;
  List<dynamic>? option;
  double? unitPrice;
  int? quantity;
  double? price;
  double? tax;
  int? discount;
  int? couponDiscount;
  int? loyaltyCardDiscount;
  double? totalPrice;
  List<dynamic>? notes;
  dynamic type;
  int? status;
  int? kotPrintedQty;
  int? isCustom;
  dynamic cancelType;
  dynamic cancelReason;
  dynamic cancelledQuantities;
  dynamic complementaryParent;
  DateTime? createdAt;
  DateTime? updatedAt;
  Product? product;
  List<dynamic>? complementaries;

  OrderItem({
    this.id,
    this.orderId,
    this.productId,
    this.productOptionId,
    this.addons,
    this.option,
    this.unitPrice,
    this.quantity,
    this.price,
    this.tax,
    this.discount,
    this.couponDiscount,
    this.loyaltyCardDiscount,
    this.totalPrice,
    this.notes,
    this.type,
    this.status,
    this.kotPrintedQty,
    this.isCustom,
    this.cancelType,
    this.cancelReason,
    this.cancelledQuantities,
    this.complementaryParent,
    this.createdAt,
    this.updatedAt,
    this.product,
    this.complementaries,
  });

  factory OrderItem.fromJson(Map<String, dynamic> json) => OrderItem(
    id: json["id"],
    orderId: json["order_id"],
    productId: json["product_id"],
    productOptionId: json["product_option_id"],
    addons: json["addons"] == null ? [] : List<dynamic>.from(json["addons"]!.map((x) => x)),
    option: json["option"] == null ? [] : List<dynamic>.from(json["option"]!.map((x) => x)),
    unitPrice: json["unit_price"]?.toDouble(),
    quantity: json["quantity"],
    price: json["price"]?.toDouble(),
    tax: json["tax"]?.toDouble(),
    discount: json["discount"],
    couponDiscount: json["coupon_discount"],
    loyaltyCardDiscount: json["loyalty_card_discount"],
    totalPrice: json["total_price"]?.toDouble(),
    notes: json["notes"] == null ? [] : List<dynamic>.from(json["notes"]!.map((x) => x)),
    type: json["type"],
    status: json["status"],
    kotPrintedQty: json["kot_printed_qty"],
    isCustom: json["is_custom"],
    cancelType: json["cancel_type"],
    cancelReason: json["cancel_reason"],
    cancelledQuantities: json["cancelled_quantities"],
    complementaryParent: json["complementary_parent"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    product: json["product"] == null ? null : Product.fromJson(json["product"]),
    complementaries: json["complementaries"] == null ? [] : List<dynamic>.from(json["complementaries"]!.map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "order_id": orderId,
    "product_id": productId,
    "product_option_id": productOptionId,
    "addons": addons == null ? [] : List<dynamic>.from(addons!.map((x) => x)),
    "option": option == null ? [] : List<dynamic>.from(option!.map((x) => x)),
    "unit_price": unitPrice,
    "quantity": quantity,
    "price": price,
    "tax": tax,
    "discount": discount,
    "coupon_discount": couponDiscount,
    "loyalty_card_discount": loyaltyCardDiscount,
    "total_price": totalPrice,
    "notes": notes == null ? [] : List<dynamic>.from(notes!.map((x) => x)),
    "type": type,
    "status": status,
    "kot_printed_qty": kotPrintedQty,
    "is_custom": isCustom,
    "cancel_type": cancelType,
    "cancel_reason": cancelReason,
    "cancelled_quantities": cancelledQuantities,
    "complementary_parent": complementaryParent,
    "created_at": createdAt?.toIso8601String(),
    "updated_at": updatedAt?.toIso8601String(),
    "product": product?.toJson(),
    "complementaries": complementaries == null ? [] : List<dynamic>.from(complementaries!.map((x) => x)),
  };
}

class Product {
  int? id;
  int? storeId;
  dynamic subStoreId;
  String? storeItemId;
  String? name;
  Language? nameLanguage;
  dynamic kitchenLabel;
  int? categoryId;
  dynamic subcategoryId;
  dynamic brandId;
  dynamic productCode;
  String? coverImage;
  String? videoUrl;
  dynamic tags;
  dynamic shortDescription;
  Language? shortDescriptionLanguage;
  dynamic description;
  Language? descriptionLanguage;
  double? price;
  dynamic wp1;
  dynamic wp2;
  double? offerPrice;
  dynamic offerLabel;
  Language? offerLabelLanguage;
  dynamic priceNote;
  int? unitId;
  int? maxQty;
  int? available;
  int? popular;
  bool? looseAvailable;
  dynamic barcode;
  int? sequence;
  dynamic deliveryCharge;
  dynamic deliveryChargeType;
  int? inventoryStock;
  int? tax;
  int? hidePrice;
  int? considerPrice;
  int? isService;
  Settings? settings;
  List<dynamic>? filterProperties;
  int? isCombo;
  int? hasComplementary;
  int? maxComplementaryQty;
  List<dynamic>? variant;
  List<dynamic>? availableVariants;
  String? cardStyle;
  int? active;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic deletedAt;
  dynamic sectionId;
  List<dynamic>? comboProducts;
  List<Addon>? addons;
  List<ProductOption>? productOptions;
  double? taxCalc;
  double? totalPrice;
  double? priceTaxed;
  List<int>? cates;

  Product({
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
    this.filterProperties,
    this.isCombo,
    this.hasComplementary,
    this.maxComplementaryQty,
    this.variant,
    this.availableVariants,
    this.cardStyle,
    this.active,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.sectionId,
    this.comboProducts,
    this.addons,
    this.productOptions,
    this.taxCalc,
    this.totalPrice,
    this.priceTaxed,
    this.cates,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
    id: json["id"],
    storeId: json["store_id"],
    subStoreId: json["sub_store_id"],
    storeItemId: json["store_item_id"],
    name: json["name"],
    nameLanguage: json["name_language"] == null ? null : Language.fromJson(json["name_language"]),
    kitchenLabel: json["kitchen_label"],
    categoryId: json["category_id"],
    subcategoryId: json["subcategory_id"],
    brandId: json["brand_id"],
    productCode: json["product_code"],
    coverImage: json["cover_image"],
    videoUrl: json["video_url"],
    tags: json["tags"],
    shortDescription: json["short_description"],
    shortDescriptionLanguage: json["short_description_language"] == null ? null : Language.fromJson(json["short_description_language"]),
    description: json["description"],
    descriptionLanguage: json["description_language"] == null ? null : Language.fromJson(json["description_language"]),
    price: json["price"]?.toDouble(),
    wp1: json["wp_1"],
    wp2: json["wp_2"],
    offerPrice: json["offer_price"]?.toDouble(),
    offerLabel: json["offer_label"],
    offerLabelLanguage: json["offer_label_language"] == null ? null : Language.fromJson(json["offer_label_language"]),
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
    filterProperties: json["filter_properties"] == null ? [] : List<dynamic>.from(json["filter_properties"]!.map((x) => x)),
    isCombo: json["is_combo"],
    hasComplementary: json["has_complementary"],
    maxComplementaryQty: json["max_complementary_qty"],
    variant: json["variant"] == null ? [] : List<dynamic>.from(json["variant"]!.map((x) => x)),
    availableVariants: json["available_variants"] == null ? [] : List<dynamic>.from(json["available_variants"]!.map((x) => x)),
    cardStyle: json["card_style"],
    active: json["active"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    deletedAt: json["deleted_at"],
    sectionId: json["section_id"],
    comboProducts: json["combo_products"] == null ? [] : List<dynamic>.from(json["combo_products"]!.map((x) => x)),
    addons: json["addons"] == null ? [] : List<Addon>.from(json["addons"]!.map((x) => Addon.fromJson(x))),
    productOptions: json["product_options"] == null ? [] : List<ProductOption>.from(json["product_options"]!.map((x) => ProductOption.fromJson(x))),
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
    "name_language": nameLanguage?.toJson(),
    "kitchen_label": kitchenLabel,
    "category_id": categoryId,
    "subcategory_id": subcategoryId,
    "brand_id": brandId,
    "product_code": productCode,
    "cover_image": coverImage,
    "video_url": videoUrl,
    "tags": tags,
    "short_description": shortDescription,
    "short_description_language": shortDescriptionLanguage?.toJson(),
    "description": description,
    "description_language": descriptionLanguage?.toJson(),
    "price": price,
    "wp_1": wp1,
    "wp_2": wp2,
    "offer_price": offerPrice,
    "offer_label": offerLabel,
    "offer_label_language": offerLabelLanguage?.toJson(),
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
    "filter_properties": filterProperties == null ? [] : List<dynamic>.from(filterProperties!.map((x) => x)),
    "is_combo": isCombo,
    "has_complementary": hasComplementary,
    "max_complementary_qty": maxComplementaryQty,
    "variant": variant == null ? [] : List<dynamic>.from(variant!.map((x) => x)),
    "available_variants": availableVariants == null ? [] : List<dynamic>.from(availableVariants!.map((x) => x)),
    "card_style": cardStyle,
    "active": active,
    "created_at": createdAt?.toIso8601String(),
    "updated_at": updatedAt?.toIso8601String(),
    "deleted_at": deletedAt,
    "section_id": sectionId,
    "combo_products": comboProducts == null ? [] : List<dynamic>.from(comboProducts!.map((x) => x)),
    "addons": addons == null ? [] : List<dynamic>.from(addons!.map((x) => x.toJson())),
    "product_options": productOptions == null ? [] : List<dynamic>.from(productOptions!.map((x) => x.toJson())),
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
  Language? nameLanguage;
  double? price;
  dynamic quantityType;
  int? active;
  DateTime? createdAt;
  DateTime? updatedAt;
  Pivot? pivot;
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
    nameLanguage: json["name_language"] == null ? null : Language.fromJson(json["name_language"]),
    price: json["price"]?.toDouble(),
    quantityType: json["quantity_type"],
    active: json["active"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    pivot: json["pivot"] == null ? null : Pivot.fromJson(json["pivot"]),
    taxCalc: json["tax_calc"]?.toDouble(),
    totalPrice: json["total_price"]?.toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "store_id": storeId,
    "name": name,
    "name_language": nameLanguage?.toJson(),
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

class Language {
  String? ml;

  Language({
    this.ml,
  });

  factory Language.fromJson(Map<String, dynamic> json) => Language(
    ml: json["Ml"],
  );

  Map<String, dynamic> toJson() => {
    "Ml": ml,
  };
}

class Pivot {
  int? productId;
  int? addonId;
  double? price;
  int? selectedDefault;
  DateTime? createdAt;
  DateTime? updatedAt;

  Pivot({
    this.productId,
    this.addonId,
    this.price,
    this.selectedDefault,
    this.createdAt,
    this.updatedAt,
  });

  factory Pivot.fromJson(Map<String, dynamic> json) => Pivot(
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


class ProductOption {
  int? id;
  int? productId;
  String? name;
  Language? nameLanguage;
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
    nameLanguage: json["name_language"] == null ? null : Language.fromJson(json["name_language"]),
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

class Cart {
  dynamic id;
  dynamic qty;

  Cart({this.id, this.qty});
  Cart.fromMap(Map map)        // This Function helps to convert our Map into our User Object
      : this.id = map["id"],
        this.qty = map["qty"];

  Map toMap() {               // This Function helps to convert our User Object into a Map.
    return {
      "id": this.id,
      "qty": this.qty,
    };
  }
}
