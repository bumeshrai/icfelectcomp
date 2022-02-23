<?php
$this->breadcrumbs=array(
	'Casesheets'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'Open Casesheets', 'url'=>array('index')),
	array('label'=>'Closed Casesheets', 'url'=>array('indexclosed')),
	array('label'=>'Manage Casesheet', 'url'=>array('admin'), 'visible'=>Yii::app()->user->isAdmin()),
);
?>

<h1>Create Casesheet</h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>