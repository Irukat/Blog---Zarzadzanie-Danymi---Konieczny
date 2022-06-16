<?php use app\assets\AppAsset;
      use app\widgets\Alert;
      use app\models\User;

AppAsset::register($this);
$this->beginPage()

?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>" class="h-100">

<head>
  <title><?= $this->title ?></title>
  <meta charset="<?= Yii::$app->charset ?>">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <?= $this->registerCsrfMetaTags() ?>
  <?= $this->head() ?>
</head>

<body>
  <?php $this->beginBody() ?>

  <header class="navbar navbar-expand-lg fixed-top">
    <div class="container">
      <a class="navbar-brand fw-bold" href="/">Blog</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarText">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="/blog/">Wszystkie wpisy</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/blog/create">Dodaj wpis</a>
          </li>
        </ul>

        <? $user = User::getCurrentIdentity() ?>
        <? if($user) { ?>
          <ul class="navbar-nav mr-auto mb-2 mb-lg-0">
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="offcanvasNavbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                Moje konto - <?= $user->name ?>
              </a>
              <ul class="dropdown-menu" aria-labelledby="offcanvasNavbarDropdown">
                <li><a class="dropdown-item text-end" href="/site/profile">Mój profil</a></li>
                <li><a class="dropdown-item text-end" href="/site/login">Dodaj wpis</a></li>
                <li><a class="dropdown-item text-end" href="/site/change-password">Zmień hasło</a></li>
                <li>
                  <hr class="dropdown-divider">
                </li>
                <li><a class="dropdown-item text-end" href="/site/logout">Wyloguj</a></li>
              </ul>
            </li>
          </ul>
        <? } else {?>
          <ul class="navbar-nav mr-auto mb-2 mb-lg-0">
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="offcanvasNavbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                Moje konto
              </a>
              <ul class="dropdown-menu" aria-labelledby="offcanvasNavbarDropdown">
                <li><a class="dropdown-item text-end" href="/site/login">Zaloguj</a></li>
                <li><a class="dropdown-item text-end" href="/site/register">Utwórz konto</a></li>
              </ul>
            </li>
          </ul>
        <? } ?>
      </div>
    </div>
  </header>

  <div id="main-container" class="container">
    <div class="alert-box">
      <? if(Yii::$app->session->getAllFlashes()) foreach (Yii::$app->session->getAllFlashes() as $class => $types) if($types) foreach ($types as $alert) { ?>
            <div class="alert alert-<?= $class ?>" role="alert">
              <p><?= $alert ?></p>
            </div>
        <?} ?>
    </div>


    <?= $content ?>
  </div>
  <?php $this->endBody() ?>
</body>

</html>
<?php $this->endPage() ?>
