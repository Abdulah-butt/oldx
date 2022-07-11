class DetailClass {
  String _product_name;
  String _product_category;
  String _product_detail;
  String _product_price;
  String _product_img_url;
  String _product_owner_no;
  String _product_owner_place;

  DetailClass(
      this._product_name,
      this._product_category,
      this._product_detail,
      this._product_price,
      this._product_img_url,
      this._product_owner_no,
      this._product_owner_place);


  static List<DetailClass> detail_obj=[];
  static int currentIndex=0;

  String get product_owner_place => _product_owner_place;

  set product_owner_place(String value) {
    _product_owner_place = value;
  }

  String get product_owner_no => _product_owner_no;

  set product_owner_no(String value) {
    _product_owner_no = value;
  }

  String get product_img_url => _product_img_url;

  set product_img_url(String value) {
    _product_img_url = value;
  }

  String get product_price => _product_price;

  set product_price(String value) {
    _product_price = value;
  }

  String get product_detail => _product_detail;

  set product_detail(String value) {
    _product_detail = value;
  }

  String get product_category => _product_category;

  set product_category(String value) {
    _product_category = value;
  }

  String get product_name => _product_name;

  set product_name(String value) {
    _product_name = value;
  }
}
