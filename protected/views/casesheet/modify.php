<?php
$this->breadcrumbs=array(
	'Casesheets'=>array('index'),
	$model->caseid=>array('view','id'=>$model->caseid),
	'Update',
);

$this->menu=array(
	array('label'=>'List Casesheet', 'url'=>array('index')),
	array('label'=>'Create Casesheet', 'url'=>array('create')),
	array('label'=>'View Casesheet', 'url'=>array('view', 'id'=>$model->caseid)),
	array('label'=>'Manage Casesheet', 'url'=>array('admin')),
);
?>

<h1>Update Casesheet <?php echo $model->caseid; ?></h1>

<?php echo $this->renderPartial('_modform', array('model'=>$model)); ?>