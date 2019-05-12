<?php
    try {
        $pdo = new PDO("mysql:dbname=proj_ratings;host=localhost", "root", "");
    } catch (PDOExpection $e) {
        echo "Erro: " . $e->getMessage();
        exit();
    }

    if (!empty($_GET['id']) && !empty($_GET['voto'])) {
        $id = intval(htmlspecialchars($_GET['id']));
        $voto = intval(htmlspecialchars($_GET['voto']));

        if ($voto >= 1 && $voto <= 5) {
            $sql = "INSERT INTO votos (fkfil, nota) VALUES (:id, :voto)";
            $sql = $pdo->prepare($sql);
            $sql->bindValue(":id", $id);
            $sql->bindValue(":voto", $voto);
            $sql->execute();

            $sql = "UPDATE filmes 
                    SET media = (SELECT (SUM(nota) / COUNT(*)) FROM votos WHERE votos.fkfil = filmes.id)
                    WHERE id = :id";
            $sql = $pdo->prepare($sql);
            $sql->bindValue(":id", $id);
            $sql->execute();

            header("Location: index.php");
        }
    }
?>