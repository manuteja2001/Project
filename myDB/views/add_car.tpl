<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add New Car</title>
</head>
<body>
    <h1>Add New Car</h1>
    <form action="/cars/add" method="post">
        <label for="car_name">Car Name:</label>
        <input type="text" name="car_name" id="car_name" required><br>
        <label for="car_model">Car Model:</label>
        <input type="text" name="car_model" id="car_model" required><br>
        <button type="submit">Add Car</button>
    </form>
    <p><a href="/cars">Back to Car List</a></p>
</body>
</html>
