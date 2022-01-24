<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CineWeb</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="./javascript.js"></script>
</head>
<body>
    <?php 
        INCLUDE("conecta.php");
        $sql = "SELECT * FROM MIDIA;";
        $declaracao = $conexao->prepare($sql);
        $declaracao->execute();
        $conteudos = $declaracao->fetchAll(PDO::FETCH_OBJ);
    ?>
    <div class="cabeçalho">
        <img src="img\logo\logo.png" alt="">
        <div class="barra_pesquisa">
            <form action="processa.php" method="POST">
                <input type="text" id="pesquisa" name="pesquisa">
            </form>
            
        </div>
        
    </div>
    <div class="container conteudo">
        <div class="fila">
        <?php
        
        
        foreach($conteudos as $conteudo){
        ?>
        <div class="cartao">
            <img class="foto" src="<?=$conteudo->foto?>" alt="">
            <ul>
                <li>
                    <h2><?=$conteudo->titulo;?></h2>
                </li>
                <li id="sinopse">
                <span><?=$conteudo->sinopse."..."?></span>
                </li>
                <li><?=$conteudo->ano?></li>
                <li><?=$conteudo->duracao?></li>
            </ul>
        </div>
        <?php }?>

        </div>
        

    </div>
</body>
</html>