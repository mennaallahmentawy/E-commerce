class CategoryModel {
  final String id, image, name;

  CategoryModel({
    required this.id,
    required this.image,
    required this.name,
  });
}
class AppConst {
  static List<CategoryModel> categoriesList = [
    CategoryModel(
      id: "Men",
      image: "asset/image/men.jpg",
      name: "Men",
    ),
    CategoryModel(
      id: "Women",
      image: "asset/image/woman.jpg",
      name: "Women",
    ),
    CategoryModel(
      id: "Kids",
      image: "asset/image/kids.jpg",
      name: "Kids",
    ),
    CategoryModel(
      id: "Shirts",
      image: "asset/image/shirt.jpg",
      name: "Shirts",
    ),
    CategoryModel(
      id: "Watch",
      image: "asset/image/watch.jpg",
      name: "Watch",
    ),
    CategoryModel(
      id: "Shoes",
      image: "asset/image/shoes.jpg",
      name: "Shoes",
    ),
    CategoryModel(
      id: "Belts",
      image: "asset/image/belt.jpg",
      name: "Belts",
    ),
    CategoryModel(
      id: "More",
      image: "asset/image/more.jpg",
      name: "More",
    ),

  ];
}