<?php
    try {
        $pdo = new PDO("mysql:dbname=proj_ratings;host=localhost", "root", "");
    } catch (PDOExpection $e) {
        echo "Erro: " . $e->getMessage();
        exit();
    }

    $query = "SELECT * FROM filmes";
    $query = $pdo->prepare($query);
    $query->execute();

    if ($query->rowCount() > 0) {
        $result = $query->fetchAll();
    } else {
        echo "Nenhum filme cadastrado!";
        exit();
    }
?>
    <?php foreach($result as $res): ?>
        <fieldset>
            <strong><?php echo $res['titulo']; ?></strong>
            <br />
            <a href="votar.php?id=<?php echo $res['id']; ?>&voto=1"><img src="star.png" height="20" /></a>
            <a href="votar.php?id=<?php echo $res['id']; ?>&voto=2"><img src="star.png" height="20" /></a>
            <a href="votar.php?id=<?php echo $res['id']; ?>&voto=3"><img src="star.png" height="20" /></a>
            <a href="votar.php?id=<?php echo $res['id']; ?>&voto=4"><img src="star.png" height="20" /></a>
            <a href="votar.php?id=<?php echo $res['id']; ?>&voto=5"><img src="star.png" height="20" /></a>
            (<?php echo $res['media']; ?>)
        </fieldset>
    <?php endforeach; ?>

