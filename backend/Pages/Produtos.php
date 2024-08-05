<?php

require_once("./../backend/Components/Card.php");

$db = new Database();

$categorias = $db->select("SELECT c.id as categoria_id, c.nome as categoria_nome from categorias c");

?>

<div class="w-full p-4 flex flex-wrap flex-col gap-4">
    <?php foreach ($categorias as $categoria) : ?>
        <div class="w-full">
            <h3 class=" w-fit font-serif text-xl font-semibold border-b-4 border-gray-800 mb-2 rounded"><?php echo $categoria['categoria_nome'] ?></h3>
            <div class="pl-4 flex flex-wrap gap-x-6 gap-y-3 mb-4">
                <?php
                    $query = "SELECT p.id, p.nome, p.imagem, p.preco FROM produtos p JOIN categorias c ON p.id_categoria = c.id WHERE p.id_categoria = :categoria_id";
                    $binds = [":categoria_id" => $categoria['categoria_id']];
                    $produtos = $db->select($query, $binds);

                    foreach ($produtos as $produto) {
                        $card = new Card($produto);
                        $card->renderCard();
                    }
                ?>

            </div>
        </div>
    <?php endforeach ?>
</div>