class CatalogModel {
  static final items = [
    Item(1, "Macbook 2010", "Came to market in 2010, with 256 ssd", 1000,
        "#33505a", "https://reactnative.dev/img/tiny_logo.png")
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(this.id, this.name, this.desc, this.price, this.color, this.image);
}
