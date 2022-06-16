<?php use app\models\Tools;

$this->title = 'Dodaj nowy wpis';
$p = isset($post) ? $post : [];
?>


<form class="" action="" method="post">
  <div class="row">
    <div class="col-md-6">
      <div class="form-floating mb-3">
        <input required type="text" class="form-control" name="title" placeholder="Tytuł wpisu" value="<?= isset($p['title']) ? $p['title'] : "" ?>">
        <label for="floatingInput">Tytuł wpisu</label>
      </div>
      <div class="form-floating mb-3">
        <input required type="text" class="form-control" name="cover" placeholder="URL do okładki" value="<?= isset($p['cover']) ? $p['cover'] : "" ?>">
        <label for="floatingInput">URL do okładki</label>
      </div>
    </div>
    <div class="col-md-6">
      <div class="form-floating">
        <textarea required class="form-control" placeholder="Zajawka" name="excerpt" style="height: 132px"><?= isset($p['excerpt']) ? $p['excerpt'] : "" ?></textarea>
        <label for="floatingTextarea2">Zajawka</label>
      </div>
    </div>
  </div>
  <div class="row">
    <div class="col-12 mb-3">
      <textarea id="content" name="content"><?= isset($p['content']) ? $p['content'] : "" ?></textarea>
    </div>
  </div>
  <div class="row">
    <div class="col-12">
      <button type="submit" class="btn btn-primary btn-lg float-end">Dodaj nowy wpis</button>
    </div>
  </div>
</form>
