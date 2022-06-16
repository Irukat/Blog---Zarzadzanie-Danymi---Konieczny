<? use app\models\User;
   use app\models\Tools ?>

<a href="/blog/view?id=<?= $data['id'] ? $data['id'] : "" ?>" class="blog-box" style="background-image: url('<?= $data['cover'] ? $data['cover'] : "" ?>');">
  <h1 class="h3 fw-bold"><?= $data['title'] ? $data['title'] : "" ?></h1>
  <p><?= $data['excerpt'] ? Tools::truncate($data['excerpt'], 250) : "" ?></p>

  <p class="blog-box-author">Opublikowane przez <?= User::getById($data['id_owner'])->login ?></p>
  <p class="blog-box-date">w dniu <?= date("d/m/Y", strtotime($data['date_created'])) ?></p>
</a>
