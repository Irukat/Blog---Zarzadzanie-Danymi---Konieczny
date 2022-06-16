<? $this->title = 'Logowanie'; ?>

<form class="col-12 col-md-6 offset-md-3 mt-5" method="post" action="">
    <h1 class="h3 mb-3 fw-normal cl-almost-black">Zmień hasło</h1>

    <div class="form-floating mb-3">
      <input type="password" class="form-control" name="old_password" placeholder="">
      <label for="floatingInput">Stare hasło</label>
    </div>
    <div class="form-floating mb-5">
      <input type="password" class="form-control" name="new_password" placeholder="">
      <label for="floatingPassword">Nowe hasło</label>
    </div>

    <button class="w-100 btn btn-lg btn-primary" type="submit">Zmień hasło</button>
  </form>
