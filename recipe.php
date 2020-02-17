<?php
     //Creating a connection
	 $dbhost = 'localhost:3306';
	 $dbuser = 'root';
	 $dbpass = '';
	 $conn = mysqli_connect($dbhost, $dbuser, $dbpass);
	 
	 if(! $conn) {
		 die('Could not connect: ' . mysql_error());
	}
	
	/* Get the id of the last visible item in the RecyclerView from the request and store it in a variable
	 * For the first request id will be zero.
	 */
	 
	 $sql = 'SELECT recipe.recipeName, recipe.categoryID, category.categoryID, categoryName
			FROM recipe, category
			WHERE recipe.categoryID = category.categoryID';
	 
	 mysqli_select_db($conn, 'recipedb');
	 
	if ($result = mysqli_query($conn, $sql)) {
		
		// two arrays one to hold results other to hold the data
		$resultArray = array();
		$tempArray = array();
		
		// loop through each result
		while($row = $result->fetch_object()){
			
			// add each result into the results array
			$tempArray = $row;
				array_push($resultArray, $tempArray);
		}
		// encode the array to JSON and output results
		echo json_encode($resultArray);
	}
	 	
	// close connnection
	mysqli_close($conn);
	
?>