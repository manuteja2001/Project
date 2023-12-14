<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add New Manufacturer</title>
</head>
<body>
    <h1>Add New Manufacturer</h1>
    <form action="/manufacturers/add" method="post">
        <label for="manufacturer_name">Manufacturer Name:</label>
        <input type="text" name="manufacturer_name" id="manufacturer_name" required><br>
        <button type="submit">Add Manufacturer</button>
    </form>
    <p><a href="/manufacturers">Back to Manufacturer List</a></p>
</body>
</html>
