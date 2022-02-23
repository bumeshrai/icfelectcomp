<?php
$this->breadcrumbs=array(
	'Users'=>array('index'),
	$model->userId,
);

$this->menu=array(
	array('label'=>'List User', 'url'=>array('index')),
	array('label'=>'Create User', 'url'=>array('create')),
	array('label'=>'Update User', 'url'=>array('update', 'id'=>$model->userId)),
	array('label'=>'Delete User', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->userId),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage User', 'url'=>array('admin')),
);
?>

<h1>View User #<?php echo $model->userId; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'userId',
		'username',
		'designation',
		array ('name'=>'railway',
		'value'=>CHtml::encode($model->getRailway()),
		),
		array ('name'=>'division',
		'value'=>CHtml::encode($model->getDivision()),
		),
		'depot',
		'email',
		'bsnlno',
		'rlyno',
		'mobile',
		'fax',
		/*
		'authorised',
		array ('name'=>'last_login_time',
		'value'=>CHtml::encode(date("d-M-Y",strtotime($model->last_login_time))),
		),
		array ('name'=>'create_time',
		'value'=>CHtml::encode(date("d-M-Y",strtotime($model->create_time))),
		),
		*/
	),
)); ?>
