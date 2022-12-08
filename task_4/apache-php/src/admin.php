<html lang="en">
<head>
    <title>Пользователи</title>
</head>
<style>
    table {
        border: 1px solid grey;
        margin-left: auto;
        margin-right: auto;
    }
    th {
        border: 1px solid grey;
        font-size: 250%;
    }
    td {
        border: 1px solid grey;
        font-size: 250%;
    }

    h1 {
        text-align: center;
    }
</style>
<body>
<h1>Таблица пользователей</h1>
<table>
    <tr>
        <th>Id</th>
        <th>Имя</th>
        <th>Фамилия</th>
    </tr>
    <?php require_once 'utilsMySql.php';
    $mysqli = openConnectionToDB();
    $result = $mysqli->query("SELECT * FROM users");
    foreach ($result as $row) {
        echo "<tr><td>{$row['ID']}</td><td>{$row['name']}</td><td>{$row['surname']}</td></tr>";
    }
    $mysqli->close();
    ?>
</table>
<?php
phpinfo();
?>
</body>
</html>