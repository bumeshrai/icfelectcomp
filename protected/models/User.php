<?php

/**
 * This is the model class for table "user".
 *
 * The followings are the available columns in table 'user':
 * @property integer $userId
 * @property string $username
 * @property string $designation
 * @property string $userAdmin
 * @property integer $railway
 * @property integer $division
 * @property string $depot
 * @property string $email
 * @property string $bsnlno
 * @property integer $rlyno
 * @property string $mobile
 * @property string $fax
 * @property string $password
 * @property string $authorised
 * @property string $lastLoginTime
 * @property string $createTime
 */
class User extends CActiveRecord
{
	
	public $password_repeat;
	public $verifyCode;
	//public $subject;
	//public $body;

	/**
	 * Returns the static model of the specified AR class.
	 * @return User the static model class
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
		return 'user';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('username, designation, railway, division, depot, email, rlyno, password, authorised', 'required'),
			array('railway, division, rlyno', 'numerical', 'integerOnly'=>true),
			array('username, designation, depot, email, bsnlno, mobile, fax', 'length', 'max'=>25),
			array('password', 'length', 'max'=>256),
			array('authorised', 'length', 'max'=>5),
			array('lastLoginTime, createTime', 'safe'),
			array('password_repeat','safe'),
			array('password','compare'),
			// verifyCode needs to be entered correctly
			array('verifyCode', 'captcha', 'allowEmpty'=>!extension_loaded('gd')),
			array('userId, username, designation, railway, division, depot, 
				email, bsnlno, rlyno, mobile, fax', 'safe', 'on'=>'search'),
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
			'casesheets' => array(self::HAS_MANY, 'Casesheet', 'complainant'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'userId' => 'User',
			'username' => 'Username',
			'designation' => 'Designation',
			'userAdmin' => 'User Admin',
			'railway' => 'Railway',
			'division' => 'Division',
			'depot' => 'Depot Name',
			'email' => 'Email ID',
			'bsnlno' => 'Phone Nos. (BSNL)',
			'rlyno' => 'Rly numbers (numeral only)',
			'mobile' => 'CUG Mobile Nos.',
			'fax' => 'Office Fax No',
			'password' => 'Password',
			'authorised' => 'Authorised',
			'lastLoginTime' => 'Last Login Time',
			'createTime' => 'User Account Create Time',
		);
	}

	/**  
	*  Perform one-way encryption on the password before storing in the database
	*/
	protected function afterValidate() {
		parent::afterValidate();
		$this->password=$this->encrypt($this->password);	
	}

	public function encrypt($value) {
		return md5($value);	
	}

	public function getRailway() {
	 	$railway = Railways::model()->findByAttributes(array('zoneId'=>$this->railway));
	 	return $railway->zone;	
		}

	public function getDivision() {
	 	$division = Division::model()->findByAttributes(array('divisionId'=>$this->division));
	 	return $division->divisionname;	
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

		$criteria->compare('userId',$this->userId);

		$criteria->compare('username',$this->username,true);

		$criteria->compare('designation',$this->designation,true);

		$criteria->compare('railway',$this->railway);

		$criteria->compare('division',$this->division);

		$criteria->compare('depot',$this->depot,true);

		$criteria->compare('email',$this->email,true);

		$criteria->compare('bsnlno',$this->bsnlno,true);

		$criteria->compare('rlyno',$this->rlyno);

		$criteria->compare('mobile',$this->mobile,true);

		$criteria->compare('fax',$this->fax,true);

		return new CActiveDataProvider(get_class($this), array(
			'criteria'=>$criteria,
		));
	}
}