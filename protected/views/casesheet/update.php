<?php
$this->breadcrumbs=array(
	'Casesheets'=>array('index'),
	$model->caseid=>array('view','id'=>$model->caseid),
	'Update',
);

$this->menu=array(
	array('label'=>'Open Casesheets', 'url'=>array('index')),
	array('label'=>'Closed Casesheets', 'url'=>array('indexclosed')),
	array('label'=>'New Casesheet', 'url'=>array('create')),
	array('label'=>'Complainant View', 'url'=>array('view', 'id'=>$model->caseid)),
	array('label'=>'Manage Casesheet', 'url'=>array('admin'), 'visible'=>Yii::app()->user->isAdmin()),
);
?>

<h1>Update Casesheet <?php echo $model->caseid; ?></h1>

<?php echo $this->renderPartial('_update', array('model'=>$model)); ?>