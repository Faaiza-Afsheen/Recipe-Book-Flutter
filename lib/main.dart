
void main() {
  // Variables and data types
  String recipeName = "Vegetable Biryani";
  int cookingTime = 30;
  double rating = 4.5;
  bool isVegetarian = true;

  print("Recipe Name: $recipeName");
  print("Cooking Time: $cookingTime minutes");
  print("Rating: $rating");
  print("Vegetarian: $isVegetarian");

  // Conditional statement
  if (cookingTime <= 30) {
    print("Quick Recipe");
  } else {
    print("Time-consuming Recipe");
  }

  // List and loop
  print("\nRecipe Ingredients:");

  List<String> ingredients = [
    "Rice",
    "Vegetables",
    "Spices",
    "Oil"
  ];

  for (String ingredient in ingredients) {
    print(ingredient);
  }

  // Function
  displayMessage();
}

void displayMessage() {
  print("\nWelcome to Dart Programming!");
}
