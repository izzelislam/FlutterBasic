class Space {
  int id;
  int rating; 
  int price;
  String name;
  String imageUrl;
  String city;
  String country;
  String address;
  String phone;
  String mapUrl;
  List  photos;
  int numberOfKitchens;
  int numberOfBedrooms;
  int numberOfCupBoards;

 
  Space({
    this.id= 0,
    this.rating= 0, 
    this.name= '', 
    this.imageUrl= '', 
    this.price = 0, 
    this.city= '', 
    this.country= '',
    this.address= '',
    this.phone= '',
    this.mapUrl= '',
    this.photos= const[],
    this.numberOfKitchens= 0,
    this.numberOfBedrooms= 0,
    this.numberOfCupBoards= 0,
  });

  // Space.fromJson(json){
  //   id    = json['id'];
  //   name  = json['name'];
  //   city  = json['city'];
  //   country= json['country'];
  //   imageUrl= json['image_url'];
  //   price= json['price'];
  //   rating = json['rating'];

  // }
}

