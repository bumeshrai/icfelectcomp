<?php

class CasesheetController extends Controller
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
				'actions'=>array('index','view'),
				'users'=>array('@'),
			),
			array('allow', // allow authenticated user to perform 'create' and 'closed' actions
				'actions'=>array('create','dynamicdivision','dynamicmanuf','Indexclosed'),
				'users'=>array('@'),
			),
			array('allow', // allow admin user to perform 'admin','delete' and 'closed' actions
				'actions'=>array('admin','update','delete','closed'),
				'users'=>array('umesh'),
			),
			array('deny',  // deny all users
				'users'=>array('*'),
			),
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

	/**
	 * Displays a particular model.
	 */
	public function actionClosed()
	{
		$this->render('closed',array(
			'model'=>$this->loadModel(),
		));
	}

	/**
	 * Creates a new model.
	 * If creation is successful, the browser will be redirected to the 'view' page.
	 */
	public function actionCreate()
	{
		$model=new Casesheet;
		$model->railway = $model->getRailwayId();
		$model->division = $model->getDivisionId();
		$model->complainant = $model->getComplainantId();
		$model->createTime=date('d M, Y h:i:s A', time());;
		$model->closed = 'false';
		$model->icfComments = 'Your complaint has been registered';
		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);

		if(isset($_POST['Casesheet']))
		{
			$model->attributes=$_POST['Casesheet'];
			
			$file=CUploadedFile::getInstance($model,'imageData');
			if(!$file==null) {
				//$model->filename=$file->getName(); 
				//$model->mime_type=$file->getType();
				//$model->file_size=$file->getSize();
				$model->fileUploaded='true';
				$model->imageData=file_get_contents($file->tempName);
				$file->saveAs(Yii::app()->getBasePath() . '/../images/dbImages/'.md5($model->createTime).'.jpg');
			} else {
				$model->fileUploaded='false';
			}

		if($model->save()) {
					
			$mailer = Yii::createComponent('application.extensions.mailer.EMailer');
			$mailer->Host = '10.53.2.46';
			$mailer->IsSMTP();
			$mailer->SMTPAuth = true; // turn on SMTP authentication
			$mailer->Username = 'ceeqcc'; // SMTP username
			$mailer->Password = 'password'; // SMTP password
			$mailer->From = Yii::app()->params['adminEmail'];
			//$mail->AddReplyTo(???yourname@domain.com???,???Your Name???);
			$mailer->AddReplyTo(Yii::app()->params['adminEmail'],'ceeqcc');
			//$mail->AddAddress(???Recipient@emailaddress.com???,???Name???);
			$mailer->AddAddress($model->getEmail(),$model->complainants->username);
			$mailer->FromName = "cee/qcc/icf";
			$mailer->CharSet = 'UTF-8';
			
			$mailer->Subject = 'Complaint Nos. ' . $model->caseid;
			$mailer->Body = $model->getComplainant().', your complaint has been registered. The complaint nos. is '. $model->caseid . '. Thank you for the feedback. Please revisit the website after few days to track the action taken. ';
			$mailer->Send();				
		
			$this->redirect(array('view','id'=>$model->caseid));
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

		if(isset($_POST['Casesheet']))
		{
			$model->attributes=$_POST['Casesheet'];
			// Save the check box entry
			if(!$model->closed) {
				$model->closed = 'false';
				if($model->save()) //if record is saved show the saved record
					$this->redirect(array('view','id'=>$model->caseid));
		}	else {
				if($model->save()) //if record is saved show the closed sheet
					$this->redirect(array('closed','id'=>$model->caseid));}
			}
		// remain in the update page if parameters not returned
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
	 * Lists all open models.
	 */
	public function actionIndex()
	{
		if(!Yii::app()->user->isAdmin()) {
			$dataProvider=new CActiveDataProvider('Casesheet', array(
    			'criteria'=>array(
        		'condition'=>'complainant=:parentid AND closed=:closed',
        		'params'=>array(':parentid'=>Yii::app()->user->id,':closed'=>'false'),
        		//'order'=>'caseid DESC',
    			),
    			'pagination'=>array(
        		'pageSize'=>5,
    			),
			));
		} else {
			$dataProvider=new CActiveDataProvider('Casesheet', array(
    			'criteria'=>array(
        		'condition'=>'closed=:closed',
        		'params'=>array(':closed'=>'false'),
        		//'order'=>'caseid DESC',
    			),
    			'pagination'=>array(
        		'pageSize'=>5,
    			),
			));
		}			
		$this->render('index',array(
			'dataProvider'=>$dataProvider,
		));
	}

	/**
	 * Lists all open models.
	 */
	public function actionIndexclosed()
	{
		if(!Yii::app()->user->isAdmin()) {
			$dataProvider=new CActiveDataProvider('Casesheet', array(
    			'criteria'=>array(
        		'condition'=>'complainant=:parentid AND closed=:closed',
        		'params'=>array(':parentid'=>Yii::app()->user->id,':closed'=>'true'),
        		//'order'=>'caseid DESC',
    			),
    			'pagination'=>array(
        		'pageSize'=>5,
    			),
			));
		} else {
			$dataProvider=new CActiveDataProvider('Casesheet', array(
    			'criteria'=>array(
        		'condition'=>'closed=:closed',
        		'params'=>array(':closed'=>'true'),
        		//'order'=>'caseid DESC',
    			),
    			'pagination'=>array(
        		'pageSize'=>5,
    			),
			));
		}			
		$this->render('index',array(
			'dataProvider'=>$dataProvider,
		));
	}

	/**
	 * Manages all models.
	 */
	public function actionAdmin()
	{
		$model=new Casesheet('search');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['Casesheet']))
			$model->attributes=$_GET['Casesheet'];

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
				$this->_model=Casesheet::model()->findbyPk($_GET['id']);
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
		if(isset($_POST['ajax']) && $_POST['ajax']==='casesheet-form')
		{
			echo CActiveForm::validate($model);
			Yii::app()->end();
		}
	}
	
	public function actionDynamicmanuf() {
		$data=Manufacturer::model()->findAll('equipId=:parentId',
			array(':parentId'=> $_POST['Casesheet']['equipment']));

		$data=CHtml::listData($data,'manufId','name');
			foreach($data as $value=>$name)  {
			echo CHtml::tag('option',
				array('value'=>$value),CHtml::encode($name),true);
			}
	}
	
}
