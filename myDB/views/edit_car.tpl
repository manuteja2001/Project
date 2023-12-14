<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Car</title>
</head>
<body>
    <h2>Edit Car</h2>
    <form action="/cars/edit/{{car.car_id}}" method="post">
        <label for="car_name">Car Name:</label>
        <input type="text" id="car_name" name="car_name" value="{{car.car_name}}" required><br>

        <label for="car_model">Car Model:</label>
        <input type="text" id="car_model" name="car_model" value="{{car.car_model}}" required><br>

        <input type="submit" value="Update">
    </form>
    <a href="/cars">Back to Cars</a>
</body>
</html>
