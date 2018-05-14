users = User.create([{userName: 'algis', name: 'Algirdas', description: 'Virėjas, baigęs virėjų mokyklą Kaune',
                         email: 'algis@virejas.lt', password: 'algis123123'},
		     {userName: 'jonas', name: 'Jonas', description: 'Padavėjas, baigęs virėjų mokyklą Marijampolėje',
                         email: 'jonas@geruta.lt', password: 'jonas123123'},
		     {userName: 'ina', name: 'Ineta', description: 'Padavėja, baigusi virėjų mokyklą Marijampolėje',
                         email: 'ina@geruta.lt', password: 'ina123123'},
		     {userName: 'gabija', name: 'Gabija', description: 'Vairuotoja, studijuoja Klaipėdoje',
                         email: 'gabija@link.lt', password: 'jonas'},
		     {userName: 'henrikas', name: 'Henrikas', description: 'Orlaivio pilotas, baigė VGTU',
                         email: 'henrikas@sakalas.lt', password: 'henrikas'}])

recipes = Recipe.create([{user_id: users.first, name: 'Blyneliai',           description: 'Blyneliai su bananais'},
			 {user_id: users.first, name: 'Aštri sriuba',        description: 'Aštri pipirų sriuba'},
                         {user_id: users.find(3), name: 'Sniegelis',           description: 'Virtas desertas'},
			 {user_id: users.last, name: 'Bananų padažas',      description: 'Saldus padažas prie blynų'},
                         {user_id: users.find(2), name: 'Lauro lapų arbata',   description: 'Arbata - eksperimentas'},
			 {user_id: users.last, name: 'Konservuoti bananai', description: 'Konservuoti bananai smaližiams'}])

categories = Category.create([{name: 'sriubos',    description: 'skaniausios sriubos'},
			      {name: 'padažai',    description: 'gardžiausi padažai'},
                              {name: 'desertai',   description: 'dangiškieji desertai'},
			      {name: 'kepiniai',   description: 'kvapnieji kepiniai'},
                              {name: 'gėrimai',    description: 'gaivinantys gėrimai'},
			      {name: 'konservai',  description: 'ilgai išliekantys maistingi konservai'}])

measurements = Measurement.create([{name: 'kg',       description: 'kilogramai'},
				   {name: 'g', description: 'gramai'},
                                   {name: 'l',        description: 'litrai'},
				   {name: 'valg. š.', description: 'šaukštas'},
                                   {name: 'arb. š.',  description: 'arbatinis šaukštelis'},
				   {name: 'laš.',     description: 'lašas'},
				   {name: 'ml',       description: 'mililitrai'},
				   {name: 'vnt.',     description: 'vienetai'},
				   {name: 'žiup.',    description: 'žiupsneliai'}])

ingredients = Ingredient.create([{name: 'miltai',        description: 'pilno grūdo miltai'},
				 {name: 'cukrus',      description: 'cukranendrių rudasis cukrus'},
                                 {name: 'lauro lapai', description: 'lauro lapai iš Graikijos'},
				 {name: 'kiaušiniai',  description: 'naminių vištų kiaušiniai'},
                                 {name: 'sviestas',    description: 'naminis saldžios grietinėlės sviestas'},
				 {name: 'pipirai',     description: 'ekologiški pipirai'},
				 {name: 'bananai',     description: 'ekologiški bananai iš Ekvadoro'},
				 {name: 'vanduo',      description: 'švarus vanduo'},
				 {name: 'druska',      description: 'rupi druska'}])

ingredient_measurement_recipes = IngredientMeasurementRecipe.create([
				 {ingredient_id: ingredients.find(1), measurement_id: measurements.find(1), recipe_id: recipes.find(1), quantity: 0.5},
				 {ingredient_id: ingredients.find(1), measurement_id: measurements.find(2), recipe_id: recipes.find(3), quantity: 300},
			   {ingredient_id: ingredients.find(1), measurement_id: measurements.find(4)},
			   {ingredient_id: ingredients.find(1), measurement_id: measurements.find(5)},
			   {ingredient_id: ingredients.find(2), measurement_id: measurements.find(1)},
			   {ingredient_id: ingredients.find(2), measurement_id: measurements.find(2), recipe_id: recipes.find(4), quantity: 200},
			   {ingredient_id: ingredients.find(2), measurement_id: measurements.find(4)},
			 	 {ingredient_id: ingredients.find(2), measurement_id: measurements.find(5)},
			 	 {ingredient_id: ingredients.find(3), measurement_id: measurements.find(8), recipe_id: recipes.find(2), quantity: 5},
			 	 {ingredient_id: ingredients.find(4), measurement_id: measurements.find(8), recipe_id: recipes.find(3), quantity: 6},
			 	 {ingredient_id: ingredients.find(5), measurement_id: measurements.find(1)},
			 	 {ingredient_id: ingredients.find(5), measurement_id: measurements.find(2), recipe_id: recipes.find(3), quantity: 100},
			 	 {ingredient_id: ingredients.find(6), measurement_id: measurements.find(2), recipe_id: recipes.find(2), quantity: 2},
			 	 {ingredient_id: ingredients.find(6), measurement_id: measurements.find(4)},
			 	 {ingredient_id: ingredients.find(6), measurement_id: measurements.find(8)},
			 	 {ingredient_id: ingredients.find(6), measurement_id: measurements.find(9)},
			 	 {ingredient_id: ingredients.find(7), measurement_id: measurements.find(1)},
			 	 {ingredient_id: ingredients.find(7), measurement_id: measurements.find(2)},
			 	 {ingredient_id: ingredients.find(7), measurement_id: measurements.find(8), recipe_id: recipes.find(1), quantity: 10},
			 	 {ingredient_id: ingredients.find(7), measurement_id: measurements.find(8), recipe_id: recipes.find(4), quantity: 50},
			 	 {ingredient_id: ingredients.find(8), measurement_id: measurements.find(3), recipe_id: recipes.find(2), quantity: 3},
			 	 {ingredient_id: ingredients.find(8), measurement_id: measurements.find(7), recipe_id: recipes.find(1), quantity: 250},
			 	 {ingredient_id: ingredients.find(9), measurement_id: measurements.find(2)},
			 	 {ingredient_id: ingredients.find(9), measurement_id: measurements.find(9), recipe_id: recipes.find(1), quantity: 1},
			 	 {ingredient_id: ingredients.find(9), measurement_id: measurements.find(9), recipe_id: recipes.find(2), quantity: 3}])	

category_recipes = CategoryRecipe.create([{category_id: categories.find(3), recipe_id: recipes.find(1)},
					    {category_id: categories.find(1), recipe_id: recipes.find(2)},
					    {category_id: categories.find(3), recipe_id: recipes.find(3)},
					    {category_id: categories.find(2), recipe_id: recipes.find(4)},
					    {category_id: categories.find(5), recipe_id: recipes.find(5)},
					    {category_id: categories.find(6), recipe_id: recipes.find(6)}])
