<?php namespace app\controllers;

      use Yii;
      use app\models\Post;
      use app\models\User;
      use app\models\Tools;
      use yii\web\Response;
      use yii\web\Controller;
      use yii\filters\VerbFilter;
      use yii\filters\AccessControl;

class SiteController extends Controller{
  public function behaviors(){
        return [
            'access' => [
                'class' => AccessControl::className(),
                'only' => ['logout'],
                'rules' => [
                    [
                        'actions' => ['logout'],
                        'allow' => true,
                        'roles' => ['@'],
                    ],
                ],
            ],
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'logout' => ['post'],
                ],
            ],
        ];
    }
  public function actions(){
        return [
            'error' => [
                'class' => 'yii\web\ErrorAction',
            ],
            'captcha' => [
                'class' => 'yii\captcha\CaptchaAction',
                'fixedVerifyCode' => YII_ENV_TEST ? 'testme' : null,
            ],
        ];
    }
  public function beforeAction($action){
      $this->enableCsrfValidation = false;
      return true;
    }


  public function actionIndex(){
    $posts = Post::getRandomPosts();

    return $this->render('index', ['posts' => $posts]);
  }
  public function actionProfile(){
    $me = User::getCurrentIdentity()->id;
    $posts = Post::getPosts(['id_owner' => $me], 999999, 1);


    return $this->render('profile', ['posts' => $posts]);
  }


  public function actionLogin(){
    if(User::isLogged()) return $this->redirect(['site/index']);


    if (Yii::$app->request->isPost) {
      $post = Yii::$app->request->post();

      if(!User::getBylogin($post['username'])){
        Yii::$app->session->addFlash('danger', 'Nie znaleziono takiego konta');
        return $this->render('login');
      }

      if(User::login($post['username'], $post['password'])){
        Yii::$app->session->addFlash('success', 'Zosta??e?? zalogowany na konto');
        return $this->redirect(['site/index']);
      } else {
        return $this->render('login');
      }

    } else {
      return $this->render('login');
    }
  }
  public function actionRegister(){
    if(User::isLogged()) return $this->redirect(['site/index']);


    if (Yii::$app->request->isPost) {
      $post = Yii::$app->request->post();

      if(User::getBylogin($post['username'])){
        Yii::$app->session->addFlash('danger', 'Konto o podanej nazwie jest ju?? za??o??one');
        return $this->render('register');
      }

      if(User::updateUser(false, $post)){
        Yii::$app->session->addFlash('success', 'Konto zosta??o pomy??lnie utworzone');
        User::login($post['username'], $post['password']);
        return $this->redirect(['site/index']);
      } else {
        Yii::$app->session->addFlash('danger', 'Podczas zak??adania konta wyst??pi?? b????d');
        return $this->render('register');
      }

    } else {

      return $this->render('register');
    }
  }
  public function actionChangePassword(){
    if(!User::isLogged()) return $this->redirect(['site/login']);


    if (Yii::$app->request->isPost) {
      $post = Yii::$app->request->post();


      $current = User::getCurrentIdentity();
      $user = User::getByLogin($current->login);
      if($user->validatePassword($post['old_password'])){
        $user->password = md5($post['new_password']);
        $user->save();

        Yii::$app->session->addFlash('success', 'Podane has??o zosta??o zmienione');
        return $this->redirect(['site/index']);

      } else {
        Yii::$app->session->addFlash('danger', 'Podane has??o jest nieprawid??owe');
        return $this->render('password');
      }
    } else {
      return $this->render('password');
    }
  }
  public function actionLogout(){
    Yii::$app->user->logout();

    Yii::$app->session->addFlash('success', 'Zosta??e?? pomy??lnie wylogowany');
    return $this->goHome();
  }
}
