<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fuel Stations</title>
</head>
<body>
    <h2>Fuel Stations</h2>
    
    <table border="1">
        <tr>
            <th>Fuel Station ID</th>
            <th>Fuel Station Name</th>
            <th>Location</th>
        </tr>
        % for row in rows:
            <tr>
                <td>{{row.station_id}}</td>
                <td>{{row.station_name}}</td>
                <td>{{row.location}}</td>
            </tr>
        % end
    </table>

    <p><a href="/fuel_stations/add">Add Fuel Station</a></p>
    <p><a href="/">Back to Home</a></p>
</body>
</html>
