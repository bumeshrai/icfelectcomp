<?php

/**
 * This is the model class for table "images".
 *
 * The followings are the available columns in table 'images':
 * @property string $image_id
 * @property string $filename
 * @property string $mime_type
 * @property integer $file_size
 * @property string $file_data
 */
class Images extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @return Images the static model class
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
		return 'images';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('file_data', 'required'),
			//array('file_size', 'numerical', 'integerOnly'=>true),
			//array('filename, mime_type', 'length', 'max'=>255),
			array('file_data','file','types'=>'jpg'),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('image_id, filename, mime_type, file_size, file_data', 'safe', 'on'=>'search'),
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
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'image_id' => 'Image',
			'filename' => 'Filename',
			'mime_type' => 'Mime Type',
			'file_size' => 'File Size',
			'file_data' => 'File Data',
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

		$criteria->compare('image_id',$this->image_id,true);

		$criteria->compare('filename',$this->filename,true);

		$criteria->compare('mime_type',$this->mime_type,true);

		$criteria->compare('file_size',$this->file_size);

		$criteria->compare('file_data',$this->file_data,true);

		return new CActiveDataProvider(get_class($this), array(
			'criteria'=>$criteria,
		));
	}
	
/*
	public function beforeSave()   {
		if($file=CUploadedFile::getInstance($this,'file_data')) {
			$this->filename=$file->name;
         $this->mime_type=$file->type;
			$this->file_size=$file->size;
         $this->file_data=file_get_contents($file->tempName);
        }
    return parent::beforeSave();
    }	
*/	
	public function getFileUrl() {
	   $path = Yii::app()->getBasePath() . '/../images/dbImages/'  . md5($this->file_data) . '.jpg';
	   if (!file_exists($path)) {
      	file_put_contents($path, $this->file_data);
   	}
	   return Yii::app()->getRequest()->getBaseUrl() . '/images/dbImages/'  . md5($this->file_data) . '.jpg';
	}
}