class Item {
  final String title;
  final String description;
  final String price;
  final String time;
  final String picture;
  final int category;
  final num ranking;

  Item({this.category,this.description,this.picture,this.price,this.time,this.title,this.ranking});

  factory Item.fromJSON(Map<dynamic,dynamic> parsedJson){
    return Item(
      title: parsedJson['title'],
      description: parsedJson['description'],
      price: parsedJson['price'],
      time: parsedJson['time'].toString(),
      picture: parsedJson['picture'],
      category: parsedJson['category'],
      ranking: parsedJson['ranking']
    );
  }

  Map<String, dynamic> toJson() =>
    {
      'title': title,
      'description': description,
      'price':price,
      'picture':picture,
      'time':time,
      'category':category,
      'ranking':ranking
      };

}
