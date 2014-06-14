# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#---
# Excerpted from "Agile Web Development with Rails",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/rails4 for more book information.
#---
# encoding: utf-8


Product.delete_all


Product.create(title: 'Chicken',
  #category: 'Beef and Poultry',
  description: 
    %{<p>
        The boniest cut; considered white meat. Made up of three sections, the first of which is sometimes sold separately as a "drumette." Braise, broil, deep-fry, grill, or roast.
      </p>},
  image_url:   'chicken.jpg',    
  price: 3.99)
# . . .


Product.create(title: 'Pork Loin Chops',
  #category: 'Beef and Poultry',
  description: 
    %{<p>
        All-natural and hormone-free. T-bone shape. Very meaty. Braise, broil, grill or sautee.
      </p>},
  image_url:   'pork.jpg',    
  price: 4.99)
# . . .


Product.create(title: 'Bacon',
  #category: 'Beef and Poultry',
  description: 
    %{<p>
        Hardwood smoked. Gluten and casein free. Not preserved. Inspected for wholesomeness by US Department of Agriculture. No antibiotics used. No nitrites or nitrates added.
      </p>},
  image_url:   'bacon.jpg',    
  price: 2.99)
# . . .


Product.create(title: 'Sliced Honey Ham',
  #category: 'Beef and Poultry',
  description: 
    %{<p>
        Ready to bake/roast.
      </p>},
  image_url:   'ham.jpg',    
  price: 2.99)
# . . .


Product.create(title: 'Artichokes',
  #category: 'Vegetables',
  description: 
    %{<p>
        Tightly packed deep green leaves; edible parts are bases of leaves and heart.
      </p>},
  image_url: 'artichoke.jpg',
  price: 2.95)
# . . .


Product.create(title: 'Zucchini Squash',
  #category: 'Vegetables',
  description: 
    %{<p>
        Shiny dark green skin; flesh is white and spongy. Mild flavor. Locally sourced in June and July.
      </p>},
  image_url: 'squash.jpg',
  price: 1.49)
# . . .


Product.create(title: 'Eggplant',
  #category: 'Vegetables',
  description: 
    %{<p>
        Deep purple, glossy skin; creamy, spongy flesh, available in mature and baby varieties; good source of fiber and antioxidants.
      </p>},
  image_url: 'eggplant.jpg',
  price: 1.99)
# . . .


Product.create(title: 'Cauliflower',
  #category: 'Vegetables',
  description: 
    %{<p>
        Excellent source of Vitamin K and fiber. Somewhat sulfurous, bitter taste.
      </p>},
  image_url: 'cauliflower.jpg',
  price: 1.99)
# . . .


Product.create(title: 'Blueberries',
  #category: 'Fruits',
  description: 
    %{<p>
        Blueberries are high in antioxidants, vitamin C and K and are a good source of fiber. Fat- and sodium-free, one cup has only 85 calories!
      </p>},
  image_url: 'blueberries.jpg',
  price: 1.99)


Product.create(title: 'Raspberries',
  #category: 'Fruits',
  description: 
    %{<p>
        The finest berries in the world.
      </p>},
  image_url: 'raspberries.jpg',
  price: 1.99)
# . . .


Product.create(title: 'Blackberries',
  #category: 'Fruits',
  description: 
    %{<p>
        Purple-black color; taste best when dull and more black than purple; flavor varies from tart to sweet.
      </p>},
  image_url: 'blackberries.jpg',
  price: 1.99)


Product.create(title: 'Seedless Watermelon',
  #category: 'Fruits',
  description: 
    %{<p>
       Watermelon makes a refreshing snack or side dish, is low in calories and is loaded with iron, potassium, Vitamins A and C, and lycopene, a healthy antioxidant.
      </p>},
  image_url: 'watermelon.jpg',
  price: 2.99)


Product.create(title: 'Whole Milk',
  #category: 'Dairy',
  description: 
    %{<p>
        Vitamin D added. Ultra-pasteurized. USDA organic. Our farm produced this milk without antibiotics, added hormones, pesticides or cloning.
      </p>},
  image_url: 'milk.jpg',
  price: 2.99)


Product.create(title: 'Eggs',
  #category: 'Dairy',
  description: 
    %{<p>
        Farm-fresh taste. Produced from 12 grade AA large eggs. All natural. Hormone free. Antibiotic free. Kosher. Vegetarian fed.
      </p>},
  image_url: 'eggs.jpg',
  price: 1.99)


Product.create(title: 'Cream Cheese',
  #category: 'Dairy',
  description: 
    %{<p>
        Whipped, Spread Sensible Solution: 40% less saturated fat than butter. 6 g total fat and 20 mg cholesterol per serving.
      </p>},
  image_url: 'creamcheese.jpg',
  price: 1.99)


Product.create(title: 'Coconut Yogurt',
  #category: 'Dairy',
  description: 
    %{<p>
        Dairy free. Soy free. Fruit juice sweetened. Gluten free. No GMO.
      </p>},
  image_url: 'yogurt.jpg',
  price: 1.99)


Product.create(title: 'Water',
  #category: 'Beverages',
  description: 
    %{<p>
        Enhanced with minerals for a pure, fresh taste.
      </p>},
  image_url: 'water.jpg',
  price: 0.99)


Product.create(title: 'Orange Juice',
  #category: 'Beverages',
  description: 
    %{<p>
        Never from concentrate. Pasteurized 100% orange juice with an excellent source of calcium and vitamin D. 110 calories per 8 fl oz serving.
      </p>},
  image_url: 'orangejuice.jpg',
  price: 1.49)


Product.create(title: 'Sweet Tea',
  #category: 'Beverages',
  description: 
    %{<p>
        Original Brand. Real brewed. 100% natural. No preservatives. No artificial color. No artifical flavor.
      </p>},
  image_url: 'sweettea.jpg',
  price: 1.99)


Product.create(title: 'IPA Beer',
  #category: 'Beverages',
  description: 
    %{<p>
       IPA with a solid malt backbone and hoppy flavor.
      </p>},
  image_url: 'beer.jpg',
  price: 5.99)





