<?php
    include('conecta.php');
    $pesquisa="{$_POST['pesquisa']}";
    $sql= "select * from midia where titulo LIKE '%$pesquisa%';";
    $declaracao = $conexao->prepare($sql);
    $declaracao->execute([]);
    $conteudos = $declaracao->fetchAll(PDO::FETCH_OBJ);
    echo $pesquisa;
        
?>
<div class="container conteudo">
    <div class="fila">
        <?php foreach($conteudos as $conteudo){?>
            <div class="cartao">
                <img class="foto" src="<?=$conteudo->foto?>" alt="">
                <ul>
                    <li>
                        <h2><?=$conteudo->titulo;?></h2>
                    </li>
                    <li id="sinopse">
                    <span ><?=$conteudo->sinopse?></span>
                    </li>
                    <li><?=$conteudo->ano?></li>
                    <li><?=$conteudo->duracao?></li>
                </ul>
            </div>
        <?php }?>
    </div>
        

</div>