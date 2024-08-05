<?php
final class Card
{
    private $data;

    public function __construct($data) {
        $this->data = $data;
    }

    public function renderCard() {
        $card = '<form action="./../backend/Pages/Descricao.php" method="post" 
        class="card w-64 max-h-72 rounded-md flex flex-col justify-around items-center bg-slate-200 p-2 shadow-gray-500 shadow hover:bg-slate-300 hover:shadow-gray-700">';
        
        $card .= '<input type="hidden" name="id" value="'. $this->data['id'].'">'; 
        
            $card .= '<img src=' . $this->data['imagem'] .' alt="Foto do móvel '. $this->data['nome'] .'" class="w-full max-h-56">';
            $card .= '<div class="grow w-full flex flex-col justify-center items-center gap-2">';
            
                $card .= '<span class="font-semibold text-base text-gray-900">'. $this->data['nome'] .'</span>';
                $card .= '<span class="font-semibold text-base text-gray-900"> R$ '. $this->data['preco'] .'</span>';
                
            $card .= '</div>';
            
        $card .= '</form>';
        
        echo $card;
    }
}