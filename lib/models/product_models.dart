// class Restaurents {
//   final String id;
//   final String rest;
//   final List<TableMenu> tableMenu;
//   Restaurents.fromJson(Map<String, dynamic> json)
//       : id = json['table_id'],
//         rest = json['table_name'],
//         tableMenu =
//             json['table_menu_list'].map((json) => TableMenu.jsonFrom(json));
// }

// class TableMenu {
//   final CategoryDishes categoryDishes;
//   final String catImage;

//   TableMenu.jsonFrom(Map<String, dynamic> json)
//       : categoryDishes = CategoryDishes.fromJson(json['category_dishes']),
//         catImage = json['menu_category_image'];
// }

// class CategoryDishes {
//   String dishid;
//   String dishName;
//   String dishprice;
//   String dishImage;
//   String dishCurrency;
//   String dishCalories;
//   String dishDiscription;

//   CategoryDishes.fromJson(Map<String, dynamic> json)
//       : dishid = json['dish_id'],
//         dishName = json['dish_name'],
//         dishprice = json['dish_price'],
//         dishImage = json['dish_image'],
//         dishCurrency = json['dish_currency'],
//         dishCalories = json['dish_calories'],
//         dishDiscription = json['dish_description'];
// }
