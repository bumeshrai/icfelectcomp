<?php
$this->breadcrumbs=array(
	'Users'=>array('index'),
	$model->userId=>array('view','id'=>$model->userId),
	'Update',
);

$this->menu=array(
	array('label'=>'List User', 'url'=>array('index')),
	array('label'=>'Create User', 'url'=>array('create')),
	array('label'=>'View User', 'url'=>array('view', 'id'=>$model->userId)),
	array('label'=>'Manage User', 'url'=>array('admin')),
);
?>

<h1>Update User <?php echo $model->userId; ?></h1>

<?php echo $this->renderPartial('_update', array('model'=>$model)); ?>