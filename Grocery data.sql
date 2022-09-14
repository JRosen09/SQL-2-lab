CREATE TABLE users (
  user_id integer PRIMARY KEY,
  email varchar(30),
  password varchar(30)
);

CREATE TABLE verification(
  verified_id integer PRIMARY KEY,
  user_id integer REFERENCES users(user_id)
  );
  CREATE TABLE recipes(
    recipe_id integer PRIMARY KEY,
    user_id integer REFERENCES users(user_id),
    private boolean
    );
    CREATE TABLE ingredients(
      ingredient_id integer PRIMARY KEY,
      user_id integer REFERENCES users(user_id)
      );
        alter table recipes
        ADD info text;

      CREATE TABLE recipe_ingredients(
        ri_id integer PRIMARY KEY,
        recipe_id integer REFERENCES recipes(recipe_id),
        ingredient_id integer REFERENCES ingredients(ingredient_id)
        );
        CREATE TABLE grocerylist(
          grocerylist_id integer PRIMARY KEY,
          user_id integer REFERENCES users(user_id)
          );
          CREATE TABLE grovery_ingredients(
            grocery_ing_id integer PRIMARY KEY,
            grocerylist_id integer REFERENCES grocerylist(grocerylist_id),
            ingredient_id integer REFERENCES ingredients(ingredient_id)
            );