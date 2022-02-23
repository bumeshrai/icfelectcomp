<?php

/**
 * This is the model class for table "railways".
 *
 * The followings are the available columns in table 'railways':
 * @property integer $zoneId
 * @property string $zone
 */
class Railways extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @return Railways the static model class
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
		return 'railways';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('zone', 'required'),
			array('zone', 'length', 'max'=>25),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('zoneId, zone', 'safe', 'on'=>'search'),
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
			'zoneId1' => array(self::HAS_MANY, 'Casesheet', 'railway'),
			'zoneId2' => array(self::HAS_MANY, 'Division', 'zoneId'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'zoneId' => 'Zone',
			'zone' => 'Zone',
		);
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

		$criteria->compare('zoneId',$this->zoneId);

		$criteria->compare('zone',$this->zone,true);

		return new CActiveDataProvider(get_class($this), array(
			'criteria'=>$criteria,
		));
	}
}