<?php

require_once("./../db/Database.php");
require_once("./../db/config.php");


$db = new Database();

$query = "SELECT p.*, c.nome AS categoria_nome FROM produtos p JOIN categorias c ON p.id_categoria = c.id WHERE p.id = :id";
$binds = [
    ":id" => $_POST['id']
];

$response = $db->select($query, $binds);
$produto = $response[0];

?>
<!DOCTYPE html>
<html lang="pt-BR">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Móveis Varese</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Cormorant+Garamond:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap" rel="stylesheet">
    <script src="https://cdn.tailwindcss.com"></script>
</head>

<body class="bg-gray-100">
    <nav class="bg-white shadow-md">
        <div class="container mx-auto px-4 py-2 flex justify-between items-center">
            <a href="./../../frontend/index.php?page=Home" class="text-2xl font-bold font-serif text-gray-800">Móveis Varese</a>
            <div class="space-x-4">
                <a href="./../../frontend/index.php?page=Home" class="text-gray-600 hover:text-gray-800 font-mono">Home</a>
                <a href="./../../frontend/index.php?page=Sobre" class="text-gray-600 hover:text-gray-800 font-mono">Sobre</a>
                <a href="./../../frontend/index.php?page=Produtos" class="text-gray-600 hover:text-gray-800 font-mono">Produtos</a>
            </div>
        </div>
    </nav>

    <a href="./../../frontend/index.php?page=Produtos" class="inline-flex items-center">
        <button class="flex items-center mt-8 ml-8 px-4 py-2 bg-slate-300 text-black font-semibold rounded-lg shadow-md hover:bg-gray-800 hover:text-white focus:outline-none focus:ring-2 focus:ring-blue-500 focus:ring-opacity-50">
            <span class="material-symbols-outlined text-lg font-semibold">arrow_back</span>
            <span class="ml-2">Voltar</span>
        </button>
    </a>


    <div class="w-full p-6 md:p-10 flex flex-col md:flex-row justify-center items-start gap-8 md:gap-28">
        <div class="flex-1 flex md:justify-end sm:justify-center sm:w-full sm:justify-center">
            <img src="<?php echo $produto['imagem'] ?>" alt="Imagem do produto <?php echo $produto['nome'] ?>" class="w-full max-w-xs md:max-w-96 rounded shadow-lg">
        </div>
        <div class="flex-1 flex flex-col gap-4">
            <h3 class="font-serif text-xl md:text-2xl font-semibold border-b-4 border-gray-800 mb-2 rounded"><?php echo $produto['nome'] ?></h3>
            <div class="w-full flex items-center">
                <span class="mr-2 font-semibold">Nota:</span>
                <?php
                $html = '';
                $nota = $produto['nota'];
                $parteInteira = floor($nota);
                $parteFracionaria = $nota - $parteInteira;

                for ($i = 0; $i < $parteInteira; $i++) {
                    $html .= '<span class="fa fa-star checked text-yellow-500 text-base"></span>';
                }

                if ($parteFracionaria >= 0.1) {
                    $html .= '<span class="material-symbols-outlined text-yellow-500 text-xl">star_half</span>';
                    $parteInteira++;
                }

                for ($i = $parteInteira; $i < 5; $i++) {
                    $html .= '<span class="fa fa-star text-base"></span>';
                }

                echo $html;
                ?>
                <span class="ml-2"><?php echo $produto['nota'] ?></span>
            </div>
            <div class="w-full">
                <span class="block font-semibold">Descrição:</span>
                <span class="block"><?php echo $produto['descricao'] ?></span>
            </div>
            <div class="w-full flex gap-2">
                <span class="block font-semibold">Preço:</span>
                <span class="block"> R$ <?php echo $produto['preco'] ?>,00</span>
            </div>
            <div class="w-full flex gap-2">
                <span class="block font-semibold">Categoria:</span>
                <span class="block"><?php echo $produto['categoria_nome'] ?></span>
            </div>
            <div class="w-full flex flex-col md:flex-row gap-4">
                <button class="flex items-center justify-center px-4 py-2 bg-green-500 text-white rounded-lg shadow hover:bg-green-600 focus:outline-none focus:ring-2 focus:ring-green-500 focus:ring-opacity-50">
                    <span class="mr-2 font-semibold">Comprar agora</span>
                    <span class="material-symbols-outlined text-xl">shopping_bag</span>
                </button>
                <button class="flex items-center justify-center px-4 py-2 bg-blue-500 text-white rounded-lg shadow hover:bg-blue-600 focus:outline-none focus:ring-2 focus:ring-blue-500 focus:ring-opacity-50">
                    <span class="mr-2 font-semibold">Adicionar ao carrinho</span>
                    <span class="material-symbols-outlined text-xl">shopping_cart</span>
                </button>
            </div>

        </div>
    </div>


    <footer class="bg-gray-800">
        <div class="mx-auto w-full max-w-screen-xl p-4 py-6 lg:py-8">
            <div class="md:flex md:justify-between">
                <div class="mb-6 md:mb-0">
                    <a href="#" class="flex items-center">
                        <span class="self-center text-2xl font-semibold whitespace-nowrap font-serif text-white">Móveis Varese</span>
                    </a>
                </div>
                <div class="grid grid-cols-2 gap-8 sm:gap-6 sm:grid-cols-3">
                    <div>
                        <h2 class="mb-6 text-sm font-semibold text-gray-300 uppercase">Páginas</h2>
                        <ul class="text-gray-100 font-medium flex flex-col gap-4">
                            <li>
                                <a href="./../../frontend/index.php?page=Home">Home</a>
                            </li>
                            <li>
                                <a href="./../../frontend/index.php?page=Sobre">Sobre</a>
                            </li>
                            <li>
                                <a href="./../../frontend/index.php?page=Produtos">Produtos</a>
                            </li>
                        </ul>
                    </div>
                    <div>
                        <h2 class="mb-6 text-sm font-semibold text-gray-300 uppercase">Redes Sociais</h2>
                        <ul class="text-gray-100 font-medium flex flex-col gap-4">
                            <li class="space-x-2">
                                <a href="#" class="fa fa-facebook"></a> <span>Facebook</span>
                            </li>
                            <li class="space-x-2">
                                <a href="#" class="fa fa-twitter"></a> <span>Twitter</span>
                            </li>
                            <li class="space-x-2">
                                <a href="#" class="fa fa-instagram"></a> <span>Twitter</span>
                            </li>
                            <li class="space-x-2">
                                <a href="#" class="fa fa-pinterest"></a> <span>Pinterest</span>
                            </li>
                        </ul>
                    </div>
                    <div>
                        <h2 class="mb-6 text-sm font-semibold text-gray-300 uppercase">Privacidade</h2>
                        <ul class="text-gray-100 font-medium flex flex-col gap-4">
                            <li>
                                <a href="#" class="hover:underline">Política de Privacidade</a>
                            </li>
                            <li>
                                <a href="#" class="hover:underline">Termos &amp; Condições</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <hr class="my-6 border-gray-200 sm:mx-auto lg:my-8" />
            <div class="flex justify-center items-center ">
                <span class="text-sm text-gray-500 sm:text-center">© 2023 <a href="#" class="hover:underline">Móveis Varese™</a>. All Rights Reserved.
                </span>
            </div>
        </div>
    </footer>
</body>

</html>