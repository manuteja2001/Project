<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manufacturer List</title>
</head>
<body>
    <h1>Manufacturer List</h1>
    <p><a href="/manufacturers/add">Add New Manufacturer</a></p>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Actions</th>
        </tr>
        % for row in rows:
            <tr>
                % for item in row:
                    <td>{{item}}</td>
                % end
                <td>
                    <a href="/manufacturers/edit/{{row[0]}}">Edit</a>
                    <a href="/manufacturers/delete/{{row[0]}}">Delete</a>
                </td>
            </tr>
        % end
    </table>
</body>
</html>
