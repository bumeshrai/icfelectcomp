<?php

/**
 * This is the model class for table "casesheet".
 *
 * The followings are the available columns in table 'casesheet':
 * @property integer $caseid
 * @property integer $railway
 * @property string $coachNo
 * @property integer $coachType
 * @property string $dateCommission
 * @property string $depot
 * @property integer $division
 * @property integer $equipment
 * @property string $equipmentNo
 * @property integer $manufacturer
 * @property string $description
 * @property string $dateFailure
 * @property integer $complainant
 * @property string $icfComments
 * @property string $closed
 * @property string $updateTime
 * @property integer $updateUser
 */
class Casesheet extends CActiveRecord
{
	
	public $imageData;
	public $filename; 
	public $mime_type;
	public $file_size;
	public $equipmentName;
	
	/**
	 * Returns the static model of the specified AR class.
	 * @return Casesheet the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}

	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'casesheet';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('railway, coachNo, coachType, dateCommission, depot, division, equipment,
				 manufacturer, dateFailure', 'required'),
			array('railway,coachType, division, equipment, manufacturer, complainant, 
				updateUser', 'numerical', 'integerOnly'=>true),
			array('coachNo', 'length', 'max'=>11),
			array('imageData','file','types'=>'jpg', 'allowEmpty'=>true),
			//array('dateCommission,dateFailure', 'application.extensions.myDatefolder.MyDateValidator'),
			//array('dateCommission','compare','compareAttribute'=>'dateFailure','operator'=>'<='),
			//array('dateFailure','compare','compareAttribute'=>'dateCommission','operator'=>'>='),
			//array('dateRegisteration','compare','compareAttribute'=>'dateFailure','operator'=>'>='),
			//array('dateRegisteration','compare','compareAttribute'=>'dateActionTaken','operator'=>'<='),
			//array('dateActionTaken','compare','compareAttribute'=>'dateRegisteration','operator'=>'>='),
			array('depot, equipmentNo', 'length', 'max'=>25),
			array('closed', 'length', 'max'=>5),
			array('description, icfComments, updateTime, dateRegisteration, dateActionTaken', 'safe'),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('caseid, railway, coachNo, coachType, dateCommission, depot, division, 
				equipment, equipmentNo, manufacturer, description, dateFailure, complainant, 
				closed, updateUser', 'safe', 'on'=>'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations()
	{
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
			'coachTypes' => array(self::BELONGS_TO, 'Coach', 'coachType'),
			'divisions' => array(self::BELONGS_TO, 'Division', 'division'),
			'equipments' => array(self::BELONGS_TO, 'Equipment', 'equipment'),
			'manufacturers' => array(self::BELONGS_TO, 'Manufacturer', 'manufacturer'),
			'railways' => array(self::BELONGS_TO, 'Railways', 'railway'),
			'complainants' => array(self::BELONGS_TO, 'User', 'complainant'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'caseid' => 'Caseid',
			'railway' => 'Railway',
			'coachNo' => 'Coach No',
			'coachType' => 'Coach Type',
			'dateCommission' => 'Date of Commissioning',
			'depot' => 'Depot Name',
			'division' => 'Division',
			'equipment' => 'Equipment',
			'equipmentNo' => 'Equipment Nos.',
			'manufacturer' => 'Manufacturer',
			'description' => 'Description of Failure',
			'dateFailure' => 'Date of Failure',
			'complainant' => 'Complainant Name',
			'icfComments' => 'ICF' . "'s" .' Action Status',
			'closed' => 'Complaint Status',
			'dateRegisteration' => 'Complaint Registeration Date',
			'dateActionTaken' => 'Date of Response from Firm/Railway',
			'updateTime' => 'Updated Time',
			'updateUser' => 'Updated by User',
			'imageData' => 'Upload a image (jpg only) file of max. size 1MB',
		);
	}

	public function getRailway() {
	 	$railway = Railways::model()->findByAttributes(array('zoneId'=>$this->railway));
	 	return $railway->zone;	
		}

	public function getRailwayId() {
		 return Yii::app()->user->zoneId;
		}

	public function getDivision() {
	 	$division = Division::model()->findByAttributes(array('divisionId'=>$this->division));
	 	return $division->divisionname;	
		}

	public function getDivisionId() {
		 return Yii::app()->user->divisionId;
		}
		
	public function getCoachType() {
	 	$coach = Coach::model()->findByAttributes(array('coachId'=>$this->coachType));
	 	return $coach->type;	
	}

	public function getEquipment() {
	 	$equipment = Equipment::model()->findByAttributes(array('equipId'=>$this->equipment));
	 	//$equipmentName = $equipment->name;
	 	return $equipment->name;	
	}

	public function getManufacturer() {
	 	$manufacturer = Manufacturer::model()->findByAttributes(array('manufId'=>$this->manufacturer));
	 	return $manufacturer->name;	
	}

	public function getComplainant() {
	 	$user = User::model()->findByAttributes(array('userId'=>$this->complainant));
	 	return $user->username;	
	}

	public function getEmail() {
	 	$user = User::model()->findByAttributes(array('userId'=>$this->complainant));
	 	return $user->email;	
	}

	public function getComplainantId() {
	 	return Yii::app()->user->id;
	}

	public function getClosed() {
	 	if($this->closed=='true')
	 		return 'Closed';
	 	else 
	 		return 'Open';
	}

	// loads the file from DB and saves on disk using file_put_contents().
	public function getFileUrl() {
	   //$path = Yii::app()->getBasePath() . '/../images/dbImages/'  . md5($this->createTime) . '.jpg';
	   /*
	   if (!file_exists($path)) {
      	file_put_contents($path, $this->imageDdata);
   	}
   	*/
	   return Yii::app()->getRequest()->getBaseUrl() . '/images/dbImages/'  . md5($this->createTime) . '.jpg';
	}
	
	/**
	 * Retrieves a list of models based on the current search/filter conditions.
	 * @return CActiveDataProvider the data provider that can return the models based on the search/filter conditions.
	 */
	public function search()
	{
		// Warning: Please modify the following code to remove attributes that
		// should not be searched.

		$criteria=new CDbCriteria;

		//$criteria->compare('caseid',$this->caseid);

		$criteria->compare('railways.zone',$this->railway);

		//$criteria->compare('coachNo',$this->coachNo,true);

		//$criteria->compare('coachType',$this->coachType);

		$criteria->compare('dateCommission',$this->dateCommission,true);

		$criteria->compare('depot',$this->depot,true);

		//$criteria->compare('division',$this->division);

		$criteria->compare('equipments.name',$this->equipment);

		//$criteria->compare('equipmentNo',$this->equipmentNo,true);

		$criteria->compare('manufacturers.name',$this->manufacturer);

		$criteria->compare('description',$this->description,true);

		$criteria->compare('dateFailure',$this->dateFailure,true);

		$criteria->compare('icfComments',$this->icfComments,true);

		//$criteria->compare('closed',$this->closed,true);
		
		$criteria->with = array('railways','equipments','manufacturers');
		//$criteria->order='dateFailure';


		return new CActiveDataProvider(get_class($this), array(
			'criteria'=>$criteria,
		));
	}
}