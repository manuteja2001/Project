<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Food Item</title>
</head>
<body>
    <h1>Add Food Item</h1>
    <form action="/food_items/add" method="post">
        <label for="food_name">Food Name:</label>
        <input type="text" id="food_name" name="food_name" required>
        <br>
        <label for="cuisine_type">Cuisine Type:</label>
        <input type="text" id="cuisine_type" name="cuisine_type" required>
        <br>
        <input type="submit" value="Add">
    </form>
    <p><a href="/food_items">Back to Food Items</a></p>
</body>
</html>
