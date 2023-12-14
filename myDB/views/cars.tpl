<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Car List</title>
</head>
<body>
    <h1>Car List</h1>
    <p><a href="/cars/add">Add New Car</a></p>
    <form action="/cars/search" method="post">
        <label for="search_term">Search Cars:</label>
        <input type="text" name="search_term" id="search_term" required>
        <button type="submit">Search</button>
    </form>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Model</th>
            <th>Actions</th>
        </tr>
        % for row in rows:
            <tr>
                % for item in row:
                    <td>{{item}}</td>
                % end
                <td>
                    <a href="/cars/edit/{{row[0]}}">Edit</a>
                    <a href="/cars/delete/{{row[0]}}">Delete</a>
                </td>
            </tr>
        % end
    </table>
</body>
</html>
