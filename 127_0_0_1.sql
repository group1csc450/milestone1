-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 13, 2020 at 04:22 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `recipedb`
--
CREATE DATABASE IF NOT EXISTS `recipedb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `recipedb`;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `categoryID` int(11) NOT NULL,
  `categoryName` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`categoryID`, `categoryName`) VALUES
(1, 'Soup'),
(2, 'Appetizer'),
(3, 'Salad'),
(4, 'Drinks'),
(5, 'Dessert');

-- --------------------------------------------------------

--
-- Table structure for table `recipe`
--

CREATE TABLE `recipe` (
  `recipeID` int(11) NOT NULL,
  `recipeName` varchar(100) NOT NULL,
  `recipeImage` varchar(1000) NOT NULL,
  `recipeDescription` varchar(500) DEFAULT NULL,
  `recipeIngredients` varchar(5000) NOT NULL,
  `recipeInstructions` varchar(5000) NOT NULL,
  `recipeLikes` int(11) NOT NULL,
  `categoryID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `recipe`
--

INSERT INTO `recipe` (`recipeID`, `recipeName`, `recipeImage`, `recipeDescription`, `recipeIngredients`, `recipeInstructions`, `recipeLikes`, `categoryID`) VALUES
(1, 'COCONUT BROTH CLAMS WITH LEMONGRASS', 'https://www.skinnytaste.com/wp-content/uploads/2019/12/Coconut-Broth-Clams-6.jpg', 'Asian Coconut Broth Clams made with lemongrass, ginger and cilantro is wonderful when paired with bread for dipping all that delicious broth!', 'For the clams:\r\n•	24 little neck clams or Manila clams, scrubbed\r\n•	Cold water, for soaking\r\n•	Sea salt\r\nFor the coconut broth:\r\n•	1/2 tablespoon unrefined coconut oil\r\n•	½ medium red onion, thinly sliced\r\n•	2 large lemongrass stalks\r\n•	3 tablespoons minced fresh ginger, about 2 inches\r\n•	4 or 5 garlic cloves, minced\r\n•	1 teaspoon crushed red pepper flakes, or 2 Thai chili peppers, minced\r\n•	1/2 cup dry white wine\r\n•	1 tablespoon light brown sugar\r\n•	1 tablespoon Asian fish sauce or low-sodium soy sauce\r\n•	2 1/2 cups vegetable or chicken stock\r\n•	1/2 14-ounce can full-fat unsweetened coconut milk, shaken thoroughly before opening\r\n•	thinly sliced scallions\r\n•	fresh chopped cilantro for garnish\r\n•	Sourdough Bread, optional for serving', '\r\n1.	Pick through the clams and discard any that are open and do not close when firmly tapped—these clams are dead and should not be eaten. Add the rest to a colander.\r\n2.	Rinse and scrub the clams to remove any sand or barnacles from the shells.\r\n3.	Fill a bowl large enough to fit the colander with cold water and 3 to 4 tablespoons salt for every 6 cups water. Stir until most of the salt has dissolved. \r\n4.	Place the colander in the bowl of salt water and soak the clams for at least 1 hour and up to overnight, so they release any grit and sand. (Live clams will filter the water and push out any impurities in the process; the grit falls to the bottom of the bowl and the colander allows you to lift out the clams without disturbing the grit.)\r\n5.	Transfer the clams in the colander to another large bowl of fresh water and let soak for 15 to 30 minutes to remove excess salt.\r\n6.	In a wok or large pan, melt the coconut oil over medium heat. Add the onion and cook until translucent, 3 to 4 minutes.\r\n7.	Firmly whack the lemongrass stalks with a wooden spoon to bruise them, which helps release their aroma and flavor during cooking. Trim the ends, then slice the stalks into 4-inch pieces. \r\n8.	Add the lemongrass to the wok, then add the ginger, garlic, and red pepper flakes. Cook until fragrant, about 3 minutes.\r\n9.	Carefully pour in the white wine and stir to deglaze the pan. Bring to a simmer and cook until reduced by half, about 3 to 4 minutes.\r\n10.	Add the brown sugar, fish sauce, stock, and coconut milk and bring to a boil. \r\n11.	Add the clams, return to a boil, and cook until the clams are fully opened, 5 to 8 minutes. If any clams remain closed, discard them. Discard the lemongrass.\r\n12.	Divide the clams and broth among individual serving bowls. Garnish with scallions and cilantro and serve with bread for dipping in the broth.', 0, 1),
(2, 'CREAMY PUMPKIN GINGER SOUP', 'https://www.skinnytaste.com/wp-content/uploads/2019/11/Pumpkin-Ginger-Soup-4.jpg', 'This healthy, creamy Pumpkin Ginger Soup is the perfect cozy, fall soup made creamy without adding any cream. Instead, the vegetables and Greek yogurt thicken it!', '•	1 3-pound sugar pumpkin, halved, seeded, and quartered\r\n•	6 fresh thyme sprigs\r\n•	1 1/2 tablespoons olive oil\r\n•	1 teaspoon Kosher salt\r\n•	freshly ground black pepper, to taste\r\n•	1 tablespoon butter\r\n•	2 large shallots, chopped\r\n•	3 cups vegetable or chicken broth, plus more if needed\r\n•	1 tablespoon fresh grated ginger\r\n•	3 fresh sage leaves, chopped\r\n•	1/8 teaspoon fresh nutmeg, plus more for garnish\r\n•	1/4 cup 0% fat Stonyfield plain Greek plain yogurt\r\n•	chopped chives, for garnish\r\n•	pepitas, optional for garnish', '1.	Preheat the oven to 400 degrees F. Lightly oil a baking sheet or coat with nonstick spray.\r\n2.	Place the pumpkin and thyme on the prepared baking sheet. Drizzle with the olive oil and season with 1/4 teaspoon salt and pepper. Gently toss to combine and arrange in a single layer.\r\n3.	Roast for 60 to 65 minutes, stirring halfway through, until the pumpkin is fork-tender.\r\n4.	Let cool, and then remove the peel from the pumpkin.\r\n5.	Meanwhile, heat the butter in a large stockpot or Dutch oven over medium heat.\r\n6.	Add the shallots and cook, stirring occasionally, until tender, 4 to 5 minutes. Stir in the pumpkin and ginger along with the broth and sage.\r\n7.	Season with 3/4 teaspoon salt and black pepper to taste. Bring to a boil, and then remove from heat.\r\n8.	Puree using an immersion blender until smooth. Add the Greek yogurt and blend.\r\n9.	Pour into 4 bowls.\r\n10.	Serve immediately, garnished with chives, plus more yogurt, pepitas, chives, and nutmeg, if desired.', 0, 1),
(3, 'GREEN DETOX SOUP WITH TOASTED HEMP GREMOLATA', 'https://www.skinnytaste.com/wp-content/uploads/2019/05/Actually-Delicious-Green-Detox-Soup-with-Toasted-Hemp-Gremolata-5.jpg', 'Delicious Green Detox Soup with Toasted Hemp Gremolata is not your typical detox soup, this one is loaded with healthy fats and hemp seeds, a complete protein so it keeps you full too! Perfect if you need a reset from a weekend spent indulging!', '•	2 tablespoons high-heat oil\r\n•	1 medium yellow onion, roughly chopped\r\n•	1 fennel bulb, roughly chopped (fronds reserved)\r\n•	½ teaspoon fine-grain sea salt\r\n•	2 cups chopped kale leaves\r\n•	2 cups low sodium vegetable broth\r\n•	1 garlic head, minced\r\n•	⅓ cup hulled hemp seeds\r\n•	Grated zest and juice of 1 lemon\r\n•	¼ cup loosely packed fresh cilantro\r\n•	¼ cup loosely packed fresh flat-leaf parsley\r\n•	Freshly ground black pepper, to serve (optional)', 'To Make the soup:\r\n1.	Heat 1 tablespoon of oil in a large pot over medium-high heat.\r\n2.	When it shimmers, add the onions, chopped fennel bulb, and ¼ teaspoon of salt, and cook, stirring occasionally, until the onions just begin to brown, 3 to 5 minutes.\r\n3.	Stir in the kale and cook, stirring occasionally, until it wilts, 3 to 4 minutes. If any browned bits stick to the bottom of the pot while cooking, add 1 tablespoon water at a time to loosen them up.\r\n4.	Pour in the vegetable broth and bring to a boil, then reduce the heat to low and cover.\r\n5.	Simmer, covered, for 10 minutes. Remove the pot from the heat.\r\n6.	Immediately stir in two-thirds of the minced garlic, then let the soup cool, uncovered, for about 10 minutes.\r\nMeanwhile, make the gremolata:\r\n1.	Heat the remaining 1 tablespoon of oil in a medium skillet over medium heat.\r\n2.	When it shimmers, stir in the hemp seeds, remaining ¼ teaspoon of salt, and remaining garlic.\r\n3.	Spread the mixture into a single layer in the bottom of the pan, then cook, stirring and redistributing into a single layer occasionally, until the hemp and garlic are golden brown and fragrant, about 3 minutes.\r\n4.	Transfer to a medium bowl. Chop the fennel fronds.\r\n5.	Let cool for a few minutes, then stir in the lemon zest and fennel fronds.\r\n6.	Add the cilantro, parsley, and lemon juice to the soup.\r\n7.	Transfer the soup to a blender, or use an immersion blender in the pot, and blend until very smooth.\r\n8.	Ladle the soup into 2 bowls and top with a generous amount of the gremolata. Garnish with pepper, if desired.', 0, 1),
(4, 'SEATTLE SMOKED SALMON CHOWDER', 'https://www.skinnytaste.com/wp-content/uploads/2019/02/Smoked-Salmon-Chowder-8.jpg', 'This creamy Smoked Salmon Chowder is truly comfort food in a bowl! Made with hot-smoked salmon (full of heart-healthy fats) and a ton of nutrient-packed veggies (onion, celery, carrots, potatoes, corn and cauliflower), it’s a good-for-you soup the whole family will love. Stove top and Instant Pot directions provided.', '•	2 tablespoons unsalted butter\r\n•	1 medium yellow onion, diced\r\n•	3 medium carrots, ½-inch dice\r\n•	3 large celery stalks, ½-inch dice\r\n•	2 garlic cloves, minced\r\n•	2 teaspoons kosher salt\r\n•	2 tablespoons all-purpose flour\r\n•	½ cup white wine, such as Sauvignon Blanc\r\n•	1 teaspoon dry thyme\r\n•	3 cups reduced sodium chicken broth\r\n•	1 12-ounce wedge cauliflower (1/4 of a large head), stem attached\r\n•	3 small red potatoes, peeled and diced into ½ inch pieces\r\n•	1 cup frozen corn kernels\r\n•	2 cups whole milk\r\n•	Freshly ground black pepper\r\n•	8 ounces skinless hot-smoked salmon\r\n•	Chopped chives, for garnish', '1.	STOVE TOP DIRECTIONS\r\n2.	In a large Dutch oven or heavy pot, melt butter over medium heat.\r\n3.	Add the onion, carrots, celery, garlic and ½ teaspoon salt and sauté until vegetables start to soften, about 5 minutes.\r\n4.	Sprinkle flour evenly over vegetables and cook, stirring often, for 1 minute.\r\n5.	Add wine and deglaze the pot (scraping brown bits off the bottom).\r\n6.	Add the thyme, broth, cauliflower and potatoes, bring the pot to a boil, then reduce heat to simmer, cover and cook for 20 minutes.\r\n7.	Remove the lid from pot and transfer the cauliflower and 1 cup of the soup to a blender and blend until smooth. Transfer puree back to the pot.\r\n8.	Add the milk, corn, and smoked salmon and heat through for about 5 minutes.\r\n9.	Season with remaining salt and freshly ground pepper, to taste.\r\n10.	Ladle 2 cups of soup into each bowl and top with chives\r\n11.	INSTANT POT DIRECTIONS \r\n12.	Press sauté on the Instant Pot.\r\n13.	When hot, add the butter.  Once melted, add the onion, carrots, celery, garlic and ½ teaspoon salt and sauté until vegetables start to soften, about 5 minutes.\r\n14.	Sprinkle flour evenly over vegetables and cook, stirring often, for 1 minute.\r\n15.	Press cancel. Add the wine and deglaze the pot (scraping brown bits off the bottom).\r\n16.	Add the thyme, broth, cauliflower and potatoes, seal and switch pot to Manual.\r\n17.	Cook on high pressure for 10 minutes.\r\n18.	Quick release, then open when the pressure subsides.\r\n19.	Transfer the cauliflower and 1 cup of the soup to a blender and blend until smooth. Transfer puree back to the pot.\r\n20.	Add the milk, corn, and smoked salmon and heat through for about 5 minutes.\r\n21.	Season with remaining salt and freshly ground pepper, to taste.\r\n22.	Ladle 2 cups of soup into each bowl and top with chives.', 0, 1),
(5, 'CHICKPEA TOMATO SOUP WITH ROSEMARY (INSTANT POT, SLOW COOKER AND STOVE TOP)', 'https://www.skinnytaste.com/wp-content/uploads/2016/12/Chickpea-Tomato-Soup-1-2.jpg', 'This Chickpea Tomato Soup is an easy, hearty soup, loaded with chickpeas and vegetables in every bite. Stove, slow cooker and Instant Pot directions provided.', '•	1 tsp olive oil\r\n•	1/2 cup chopped onion\r\n•	1/2 cup diced carrots\r\n•	1/2 cup diced celery\r\n•	2 garlic cloves, minced\r\n•	2 15 oz cans chickpeas, rinsed and drained\r\n•	1 28 oz can crushed tomatoes\r\n•	3 cups reduced sodium chicken broth, or vegetable broth for vegetarians\r\n•	1 fresh rosemary sprig\r\n•	2 bay leaves\r\n•	2 tbsp chopped fresh basil\r\n•	fresh black pepper, to taste\r\n•	2 cups fresh baby spinach\r\n•	1/4 cup shredded parmesan cheese, plus extra optional for garnish', 'Crock Pot Version\r\n1.	Heat oil in a large nonstick skillet over medium heat. Add the carrots, celery, onion, garlic and saute until tender and fragrant, about 6 to 8 minutes. Transfer to the crock pot along with the broth, tomatoes, chickpeas, parmesan cheese, and pepper. Add the rosemary, bay leaves and basil, cover and cook on low for 6 hours.\r\n2.	When done add the spinach. Remove bay leaves, rosemary sprig and season to taste with salt and black pepper. Ladle soup into bowls and top with extra parmesan cheese if desired.\r\nStove Top Version\r\n1.	Heat oil in a large pot or Dutch oven over medium heat. Add the carrots, celery, onion, garlic and saute until tender and fragrant, about 6 to 8 minutes. Add the broth, tomatoes, chickpeas, parmesan cheese, and pepper. Add the rosemary, basil and bay leaves, cover and cook on low 30 minutes. Add the spinach, cover and simmer until wilted, about 2 minutes.\r\n2.	Remove the bay leaves, rosemary sprig, and season to taste with salt and black pepper. Ladle soup into bowls and top with extra parmesan cheese if desired.\r\nInstant Pot Version\r\n1.	Follow same recipe as above except cook 15 minutes high pressure, natural release.', 0, 1),
(6, 'BAKED CORN AND CRAB CAKES', 'https://www.skinnytaste.com/wp-content/uploads/2012/08/Skinnytaste-Baked-Corn-Crab-Cakes-6.jpg', 'Deliciously baked lump crab cakes with sweet end of summer corn.', '•	1 cup corn kernels, fresh\r\n•	1 cup about 30 reduced-fat Ritz crackers, crushed\r\n•	1 whole egg plus 2 egg whites, beaten\r\n•	4 scallions, chopped fine\r\n•	1/4 cup minced red bell pepper\r\n•	2 tbsp light mayonnaise\r\n•	2 tbsp fat free yogurt\r\n•	1/4 cup fresh parsley\r\n•	1 lemon, juiced\r\n•	16 oz premium lump crab meat, picked free of shells\r\n•	salt and pepper to taste\r\n•	cooking spray', '\r\n1.	In a large bowl, combine corn, crushed crackers, eggs, scallions, pepper, mayo, yogurt, parsley, lemon juice, salt and pepper.\r\n2.	Mix well, then fold in crab meat, careful not to over mix so the crab remains in large chunks.\r\n3.	Gently shape into 8 patties using a 1/2 cup measuring cup.\r\n4.	Chill in the refrigerator at least 1 hour before baking.\r\n5.	Preheat oven to 425F. Grease a baking sheet with cooking spray.\r\n6.	Bake about 24 to 28 minutes turning halfway, or until golden brown.\r\nAir Fryer Method\r\n1.	Air fry, in batches 370F until the edges are golden, about 10 to 12 minutes turning halfway.', 0, 2),
(7, 'BRUSCHETTA WITH TOMATO AND BASIL', 'https://www.skinnytaste.com/wp-content/uploads/2008/04/Bruschetta-4.jpg', 'Bruschetta with Tomato and Basil, one of my favorite way to use up my summer tomatoes is with this simple appetizer or side dish.', '•	6-7 ripe plum or beefsteak tomatoes, diced\r\n•	2 cloves garlic, minced\r\n•	1/4 small red onion, chopped\r\n•	1 tbsp extra virgin olive oil\r\n•	2 tbsp balsamic vinegar\r\n•	olive oil spray\r\n•	6-8 fresh basil leaves, chopped\r\n•	kosher salt\r\n•	freshly ground black pepper to taste\r\n•	16 oz baguette or French bread\r\n•	1-2 garlic cloves, peeled', '1.	Combine tomatoes, chopped garlic, red onion, vinegar, oil, salt, pepper, and basil.\r\n2.	Set aside.\r\n3.	Slice bread into 1/2 inch thick slices.\r\n4.	Place on a tray and spray lightly with olive oil.\r\n5.	Toast bread under broiler, until golden, watching closely not to let it burn.\r\n6.	When bread is toasted, rub each piece with whole garlic clove.\r\n7.	Place bread on a platter and top with tomato mixture.\r\n8.	Serve immediately or the bread will become soggy.', 0, 2),
(8, 'GRILLED VEGETABLE PLATTER WITH YOGURT MINT SAUCE', 'https://www.skinnytaste.com/wp-content/uploads/2019/06/Grilled-Vegetable-Platter-with-Yogurt-Mint-Sauce-6.jpg', 'Grilled Vegetables with Yogurt Mint Sauce are so colorful and delicious. An easy summer side dish made with asparagus, zucchini, squash, red onion and bell peppers.', '•	1 cup 0% Greek yogurt\r\n•	1/4 cup fresh chopped mint, divided\r\n•	2 cloves minced garlic, divided\r\n•	1 teaspoon extra virgin olive oil\r\n•	salt and black pepper\r\nVegetables:\r\n•	2 large red and orange color bell peppers, seeded and cut 1 inch pieces\r\n•	1 red onion, sliced into 1/4 inch thick rounds\r\n•	1 pound asparagus, trimmed\r\n•	1 yellow squash, sliced diagonally 1/4 inch thick\r\n•	1 large zucchini, sliced diagonally 1/4 inch thick\r\n•	2 tablespoon extra virgin olive oil\r\n•	2 tablespoons lemon juice\r\n•	1 teaspoon dried Zataar seasoning\r\n•	1/2 teaspoon kosher salt\r\n•	1/4 teaspoon pepper', '1.	Combine yogurt with half of the mint, half of the garlic, 1/4 teaspoon salt and black pepper. Transfer to a small serving bowl. Swirl in 1 teaspoon olive oil on top and garnish with more mint.\r\n2.	Heat the grill or grill pan over medium-high heat. When ready oil the grates.\r\n3.	Toss the vegetables in a bowl with olive oil, lemon juice, remaining garlic, zaatar, 1/2 teaspoon salt and black pepper, to taste. Grill the vegetables turning occasionally, until lightly charred, about 6 to 10 minutes. Arrange on a platter with the mint yogurt sauce. Sprinkle with remaining mint.\r\n', 0, 2),
(9, 'AIR FRYER CHICKEN NUGGETS', 'https://www.skinnytaste.com/wp-content/uploads/2018/01/Air-Fryer-Chicken-Nuggets-1-7.jpg', 'Making homemade Chicken Nuggets in the air-fryer is so much healthier than fast food or frozen nuggets, and so easy to make.', '•	16 oz 2 large skinless boneless chicken breasts, cut into even 1-inch bite sized pieces\r\n•	1/2 teaspoon kosher salt and black pepper, to taste\r\n•	2 teaspoons olive oil\r\n•	6 tablespoons whole wheat Italian seasoned breadcrumbs\r\n•	2 tablespoons panko\r\n•	2 tablespoons grated parmesan cheese\r\n•	olive oil spray, I used my Misto', '1.	Preheat air fryer to 400°F for 8 minutes.\r\n2.	Put the olive oil in one bowl and the breadcrumbs, panko and parmesan cheese in another.\r\n3.	Season chicken with salt and pepper, then put in the bowl with the olive oil and mix well so the olive oil evenly coats all of the chicken.\r\n4.	Put a few chunks of chicken at a time into the breadcrumb mixture to coat, then on the basket.\r\n5.	Lightly spray the top with olive oil spray then air fry 8 minutes, turning halfway. Until golden.', 0, 2),
(10, 'SWEET POTATO AND CARROT “TOTS”', 'https://www.skinnytaste.com/wp-content/uploads/2016/11/Sweet-Potato-Carrot-Veggie-Tots.jp', NULL, '•	Olive oil spray\r\n•	1 large, 1/2 pound sweet potato, peeled\r\n•	1 large, 1/4 pound carrot, peeled\r\n•	1 large egg, lightly beaten\r\n•	½ cup plus 2 tablespoons whole wheat panko breadcrumbs\r\n•	¼ cup grated mozzarella cheese\r\n•	1 teaspoon kosher salt\r\n•	Freshly ground black pepper, to taste\r\n•	1 teaspoon onion powder\r\n•	1 teaspoon garlic powder\r\n•	¼ teaspoon smoked paprika', '1.	Preheat oven to 375 degrees and lightly spray a sheet pan with olive oil.  Set aside.\r\n2.	Cut sweet potato and carrot into 3 or 4 large chunks.  Place them in a food processor fitted with a metal blade and process until finely chopped into rice-size pieces.\r\n3.	Heat a large skillet over medium heat, spray the pan with oil and add the chopped vegetables. Cook, stirring for 5 minutes, until softened. Transfer to a large bowl with the egg, panko, mozzarella, onion powder, garlic powder, smoked paprika, salt and pepper and stir with a spatula to ensure it is evenly combined.\r\n4.	With your hands, gently form sweet potato-carrot mixture into small rectangular pieces, pressing and rolling them firmly together about 1 tablespoon each.  Evenly space them on prepared sheet pan, spray with olive oil and bake for 10 minutes.  Remove from oven, using your hands or small spatula, flip each over, put them back in the oven and bake for 10-12 more minutes, or until brown and crisp. Makes 30 tots.\r\n', 0, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`categoryID`);

--
-- Indexes for table `recipe`
--
ALTER TABLE `recipe`
  ADD PRIMARY KEY (`recipeID`),
  ADD KEY `fk_categoryID` (`categoryID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `recipe`
--
ALTER TABLE `recipe`
  MODIFY `recipeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `recipe`
--
ALTER TABLE `recipe`
  ADD CONSTRAINT `fk_categoryID` FOREIGN KEY (`categoryID`) REFERENCES `category` (`categoryID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
