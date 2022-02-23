<?php

class UserController extends Controller
{
	/**
	 * @var string the default layout for the views. Defaults to '//layouts/column2', meaning
	 * using two-column layout. See 'protected/views/layouts/column2.php'.
	 */
	public $layout='//layouts/column2';

	/**
	 * @var CActiveRecord the currently loaded data model instance.
	 */
	private $_model;

	/**
	 * @return array action filters
	 */
	public function filters()
	{
		return array(
			'accessControl', // perform access control for CRUD operations
		);
	}

	/**
	 * Specifies the access control rules.
	 * This method is used by the 'accessControl' filter.
	 * @return array access control rules
	 */
	public function accessRules()
	{
		return array(
			array('allow',  // allow all users to perform 'index' and 'view' actions
				'actions'=>array('index','view','dynamicdivision','create','captcha'),
				'users'=>array('*'),
			),
			array('allow', // allow authenticated user to perform 'create' and 'update' actions
				'actions'=>array('create','dynamicdivision'),
				'users'=>array('@'),
			),
			array('allow', // allow admin user to perform 'admin' and 'delete' actions
				'actions'=>array('admin','update','delete'),
				'users'=>array('umesh'),
			),
			array('deny',  // deny all users
				'users'=>array('*'),
			),
		);
	}

	public function actions()
	{
		return array(
			// captcha action renders the CAPTCHA image displayed on the contact page
			'captcha'=>array(
				'class'=>'CCaptchaAction',
				'backColor'=>0xFFFFFF,
			),
			// page action renders "static" pages stored under 'protected/views/site/pages'
			// They can be accessed via: index.php?r=site/page&view=FileName
		);
	}

	/**
	 * Displays a particular model.
	 */
	public function actionView()
	{
		$this->render('view',array(
			'model'=>$this->loadModel(),
		));
	}

	public function actionCreate()
	{
		$model=new User;
		$model->authorised='false';
		$model->userAdmin='false';
		$model->lastLoginTime=new CDbExpression('NOW()');
		$model->createTime=new CDbExpression('NOW()');

		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);

		if(isset($_POST['User']))
		{
			$model->attributes=$_POST['User'];

			if($model->save()) {
							
				$mailer = Yii::createComponent('application.extensions.mailer.EMailer');
				$mailer->Host = '10.53.2.46';
				$mailer->IsSMTP();
				$mailer->SMTPAuth = true; // turn on SMTP authentication
				$mailer->Username = 'ceeqcc'; // SMTP username
				$mailer->Password = 'password'; // SMTP password
				$mailer->From = Yii::app()->params['adminEmail'];
				//$mail->AddReplyTo(“yourname@domain.com”,”Your Name”);
				$mailer->AddReplyTo(Yii::app()->params['adminEmail'],'ceeqcc');
				//$mail->AddAddress(“Recipient@emailaddress.com”,”Name”);
				$mailer->AddAddress($model->email,$model->username);
				$mailer->FromName = "cee/qcc/icf";
				$mailer->CharSet = 'UTF-8';
				$mailer->Subject = 'New Registeration';
				$mailer->Body = $model->username . ' from ' . $model->depot . ' registered at ' . date('d-M-Y');
				$mailer->Send();
			
				$this->redirect(array('view','id'=>$model->userId));
			
			}
		}

		$this->render('create',array(
			'model'=>$model,
		));
	}


	/**
	 * Updates a particular model.
	 * If update is successful, the browser will be redirected to the 'view' page.
	 */
	public function actionUpdate()
	{
		$model=$this->loadModel();

		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);

		if(isset($_POST['User']))
		{
			$model->attributes=$_POST['User'];
			// Save the check box entry
			if(!$model->authorised)
				$model->authorised = 'false';
			// update the record
			if($model->update())
				$this->redirect(array('view','id'=>$model->userId));
		}

		$this->render('update',array(
			'model'=>$model,
		));
	}

	/**
	 * Deletes a particular model.
	 * If deletion is successful, the browser will be redirected to the 'index' page.
	 */
	public function actionDelete()
	{
		if(Yii::app()->request->isPostRequest)
		{
			// we only allow deletion via POST request
			$this->loadModel()->delete();

			// if AJAX request (triggered by deletion via admin grid view), we should not redirect the browser
			if(!isset($_GET['ajax']))
				$this->redirect(isset($_POST['returnUrl']) ? $_POST['returnUrl'] : array('admin'));
		}
		else
			throw new CHttpException(400,'Invalid request. Please do not repeat this request again.');
	}

	/**
	 * Lists all models.
	 */
	public function actionIndex()
	{
		$dataProvider=new CActiveDataProvider('User');
		$this->render('index',array(
			'dataProvider'=>$dataProvider,
		));
	}

	/**
	 * Manages all models.
	 */
	public function actionAdmin()
	{
		$model=new User('search');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['User']))
			$model->attributes=$_GET['User'];

		$this->render('admin',array(
			'model'=>$model,
		));
	}

	/**
	 * Returns the data model based on the primary key given in the GET variable.
	 * If the data model is not found, an HTTP exception will be raised.
	 */
	public function loadModel()
	{
		if($this->_model===null)
		{
			if(isset($_GET['id']))
				$this->_model=User::model()->findbyPk($_GET['id']);
			if($this->_model===null)
				throw new CHttpException(404,'The requested page does not exist.');
		}
		return $this->_model;
	}

	/**
	 * Performs the AJAX validation.
	 * @param CModel the model to be validated
	 */
	protected function performAjaxValidation($model)
	{
		if(isset($_POST['ajax']) && $_POST['ajax']==='user-form')
		{
			echo CActiveForm::validate($model);
			Yii::app()->end();
		}
	}

	public function actionDynamicdivision() {
		$data=Division::model()->findAll('zoneId=:parentId',
		array(':parentId'=> $_POST['User']['railway']));

		$data=CHtml::listData($data,'divisionId','divisionname');
      foreach($data as $value=>$name)  {
      	echo CHtml::tag('option',
         array('value'=>$value),CHtml::encode($name),true);
      }
  }
}
