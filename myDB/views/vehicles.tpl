<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vehicles</title>
</head>
<body>
    <h2>Vehicles</h2>
    
    <table border="1">
        <tr>
            <th>Vehicle ID</th>
            <th>Vehicle Name</th>
            <th>Vehicle Model</th>
        </tr>
        % for row in rows:
            <tr>
                <td>{{row.vehicle_id}}</td>
                <td>{{row.vehicle_name}}</td>
                <td>{{row.vehicle_model}}</td>
            </tr>
        % end
    </table>

    <p><a href="/vehicles/add">Add Vehicle</a></p>
    <p><a href="/">Back to Home</a></p>
</body>
</html>
