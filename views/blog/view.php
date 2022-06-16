<?php use app\models\Tools;
      use app\models\User;
      use app\models\Comment;

$this->title = $post['title'];
?>

<div class="post-header">
  <div class="header-cover">
    <div class="header-cover-image" style="background-image: url('<?= $post['cover'] ?>')"></div>
  </div>
  <h1><?= $post['title'] ?></h1>
  <p>Autorstwa <?= User::getByid($post['id_owner'])->login ?>,<hb></hb> opublikowany w dniu <?= date("d/m/Y", strtotime($post['date_created'])) ?></p>
</div>

<div class="post-content">
  <?= $post['content'] ?>
</div>

<? $me = User::getCurrentIdentity(); ?>
<? if($me && $me->id == $post['id_owner']) {  ?>
  <div class="post-manage">
    <a href="/blog/delete?id=<?= $post['id'] ?>" class="btn btn-primary btn-md float-lg-end">Usuń wpis</a>
    <a href="/blog/edit?id=<?= $post['id'] ?>" class="btn btn-primary btn-md me-3 float-lg-end">Edytuj wpis</a>
  </div>
<? } ?>







<div class="post-comments" id="#comments">
  <? $comments = Comment::getComments([['=', 'id_post', $post['id']]], 999, 1, false);

  if($comments && count($comments) > 0){ ?>
  <hr>
  <h6 class="h4 cl-almost-black">Komentarze:</h6>

  <? foreach ($comments as $c) {?>
  <div class="comment-item row mt-4 d-flex">
    <div class="col-lg-2 user-box">
        <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/5/59/User-avatar.svg/1024px-User-avatar.svg.png" class="comment-pic">
        <b class="cl-almost-black"><?= $c['login'] ?></b>
    </div>
    <div class="col-lg-10">
      <div class="review-description">
        <p> <?= $c['comment'] ?></p>
        <p class="comment-date">Komentarz został dodany <?= date("d/m/Y", strtotime($c['date_created'])) ?> o godzinie <?= date("H:i", strtotime($c['date_created'])) ?></p>
      </div>
    </div>
  </div>
  <? } ?>
  <? } ?>

  <hr style="margin-top: 100px;">
  <h6 class="h4 mb-4 cl-almost-black">Dodaj własny komentarz:</h6>

  <form class="" action="/blog/comment" method="post">
    <input type="hidden" name="id_post" value="<?= $post['id'] ?>">
    <div class="row">
      <div class="col-lg-6 mb-3">
        <div class="form-floating">
          <textarea required class="form-control" placeholder="Komentarz" name="comment" style="height: 124px"></textarea>
          <label for="floatingTextarea2">Komentarz</label>
        </div>
      </div>
      <div class="col-lg-6 mb-3">
        <div class="form-floating mb-3">
          <input required type="text" class="form-control" name="login" placeholder="Mój pseudonim">
          <label for="floatingInput">Mój pseudonim</label>
        </div>
        <button type="submit" class="btn btn-primary btn-lg">Dodaj komentarz</button>
      </div>
    </div>
  </form>
</div>
