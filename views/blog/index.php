<?php use app\models\Tools;

$this->title = 'Wszystkie wpisy';
?>


<? if($posts) foreach ($posts as $v) { ?>
  <?= Tools::inc("box", ['data' => $v], true) ?>

<? } ?>


<div class="pagination-row">
  <?= $p->displayRecordCounter() ?>
  <?= $p->displayPagination() ?>
</div>
