<?php namespace app\controllers;

      use Yii;
      use app\models\Post;
      use app\models\User;
      use app\models\Tools;
      use app\models\Comment;
      use app\models\Pagination;
      use yii\web\Response;
      use yii\web\Controller;
      use yii\filters\VerbFilter;
      use yii\filters\AccessControl;

class BlogController extends Controller{
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
    $p = (new Pagination)->generatePagination(["total" => Post::getPosts([], 99999999, 1, true)]);
    $posts = Post::getPosts([], $p->records, $p->page, false);

    return $this->render('index', ['p' => $p, 'posts' => $posts]);
  }
  public function actionView(){
    $get = Yii::$app->request->get();
    $post = Post::getById($get['id']);

    return $this->render('view', ['post' => $post]);
  }


  public function actionCreate(){
    if(!User::isLogged()) return $this->redirect(['site/login']);


    if (Yii::$app->request->isPost) {
      $post = Yii::$app->request->post();

      $status = Post::updatePost(false, $post);
      if($status['success']) {
        return $this->redirect(['blog/view', 'id' => $status['id']]);
      } else {

        return $this->render('create', ['post' => $post]);
      }

    } else {
      return $this->render('create');
    }
  }
  public function actionEdit(){
    if (Yii::$app->request->isPost) {
      $post = Yii::$app->request->post();
      $get = Yii::$app->request->get();

      $existing = Post::getById($get['id']);
      if(!$existing){
        Yii::$app->session->addFlash('danger', 'Nie znaleziono wpisu do edycji');
        return $this->redirect(['blog/index']);
      }


      $editing = Post::updatePost($get['id'], $post);
      return $this->redirect(['blog/view', 'id' => $get['id']]);

    } else {
      $get = Yii::$app->request->get();
      $existing = Post::getById($get['id']);

      if(!$existing){
        Yii::$app->session->addFlash('danger', 'Nie znaleziono wpisu do edycji');
        return $this->redirect(['blog/index']);
      }

      return $this->render('edit', ['post' => $existing]);
    }
  }



  public function actionComment(){
    if (Yii::$app->request->isPost) {
      $post = Yii::$app->request->post();
      $status = Comment::updateComment(false, $post);

      return $this->redirect(['blog/view', 'id' => $post['id_post']]);
    } else {
      return $this->redirect(['blog/index']);
    }
  }

  public function actionDelete(){
    $get = Yii::$app->request->get();

    $post = Post::getById($get['id']);
    if(!$post){
      Yii::$app->session->addFlash('danger', 'Nie znaleziono wpisu do usunięcia');
      return $this->redirect(['blog/index']);
    }

    $me = User::getCurrentIdentity();
    if(!$me || $me->id != $post['id_owner']){
      Yii::$app->session->addFlash('danger', 'Nie jesteś autorem wybranego wpisu');
      return $this->redirect(['blog/view', 'id' => $get['id']]);
    }

    $r = $post->delete();
    if($r){
      Yii::$app->session->addFlash('success', 'Wpis został usunięty');
      return $this->redirect(['blog/index']);
    } else {
      Yii::$app->session->addFlash('danger', 'Nie udało się usunąć wybranego wpisu');
      return $this->redirect(['blog/view', 'id' => $get['id']]);
    }
    die();
  }
}
