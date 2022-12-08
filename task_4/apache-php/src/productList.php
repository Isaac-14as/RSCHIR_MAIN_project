<html lang="en">
<head>
<title>Товары</title>
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
<h1>Таблица товаров</h1>
<table>
    <tr>
        <th>Товар</th>
        <th>Цена</th>
    </tr>
<?php require_once 'utilsMySql.php';
    $mysqli = openConnectionToDB();
    $result = $mysqli->query("SELECT * FROM products");
    $id = 'id';
    foreach ($result as $row){
        echo "
    <tr>
        <td><a href='/itemShow.php?id={$row['ID']}'>{$row['name']}</a></td>
        <td>{$row['price']}</td>
    </tr>
    ";
    }
$mysqli->close();
?>
</table>
<?php
phpinfo();
?>
</body>
</html>