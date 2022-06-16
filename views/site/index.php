<?php use app\models\Tools;

$this->title = 'Wyróżnione wpisy';
?>

<div class="row align-items-md-stretch">
  <div class="col-md-12">
    <?= isset($posts) && isset($posts[0]) ? Tools::inc("box", ['data' => $posts[0]], true) : "" ?>
  </div>
</div>
<div class="row align-items-md-stretch">
  <div class="col-md-6">
    <?= isset($posts) && isset($posts[1]) ? Tools::inc("box", ['data' => $posts[1]], true) : "" ?>
  </div>
  <div class="col-md-6">
    <?= isset($posts) && isset($posts[2]) ? Tools::inc("box", ['data' => $posts[2]], true) : "" ?>
  </div>
</div>
