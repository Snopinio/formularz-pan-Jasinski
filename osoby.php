<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Stworzeni uzytkownicy</title>
    <link rel="stylesheet" href="osoby.css">
</head>
<body>
    <div id="gora">
        <h1>Zalogowani użytkownicy</h1>
    </div>
    <div id="szukanie">
    <form method="get">
        <input type="text" name="search" placeholder="Szukaj">
        <input type="submit" value="szukaj">
    </form>
    </div>
    <div id="tabela">
        <?php
        $host = "localhost"; 
        $username = "root"; 
        $password = ""; 
        $database = "users"; 
        
        $conn = new mysqli($host, $username, $password, $database);
        
        $sql = "SELECT id, imie, nazwisko FROM users";

        if(isset($_GET['search']) && !empty($_GET['search'])) {
            $search = $_GET['search'];
            $sql .= " WHERE imie LIKE '%$search%' OR nazwisko LIKE '%$search%'";
        }
        
        $result = $conn->query($sql);
        
        
        if ($result->num_rows > 0) {
            echo "<table border='1'  style='width: 100%;'>";
            echo "<tr><th>Imię</th><th>Nazwisko</th></tr>";
        
            while($row = $result->fetch_assoc()) {
                echo "<tr><td>" . $row["imie"] . "</td><td>" . $row["nazwisko"] . "</td></tr>";
            }
        
            echo "</table>";
        } else {
            echo "Brak użytkowników.";
        }
        ?>
    </div>
    <div id="dol">
        <h2>Autor:Janek</h2>
    </div>
    <div id="link">
    <a href="formularz.html">Formularz rejestracji</a>
    </div>
</body>
</html>