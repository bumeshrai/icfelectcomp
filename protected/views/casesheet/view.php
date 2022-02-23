<?php
$this->breadcrumbs=array(
	'Casesheets'=>array('index'),
	$model->caseid,
);

$this->menu=array(
	array('label'=>'Open Casesheets', 'url'=>array('index')),
	array('label'=>'Closed Casesheets', 'url'=>array('indexclosed')),
	array('label'=>'New Casesheet', 'url'=>array('create')),
	array('label'=>'Update Casesheet', 'url'=>array('update', 'id'=>$model->caseid),
	'visible'=>Yii::app()->user->isAdmin()),
	array('label'=>'Delete Casesheet', 'url'=>'#', 
		'linkOptions'=>array('submit'=>array('delete',
		'id'=>$model->caseid),'confirm'=>'Are you sure you want to delete this item?'),
		'url'=>array('admin'),'visible'=>Yii::app()->user->isAdmin()),
	array('label'=>'Manage Casesheet', 'url'=>array('admin'),'visible'=>Yii::app()->user->isAdmin()),
);
?>

<h1>View Casesheet #<?php echo $model->caseid; ?></h1>



<div id="case_sheet">
<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'caseid',
		array ('name'=>'railway',
		'value'=>CHtml::encode($model->railways->zone),
		),
		array ('name'=>'division',
		'value'=>CHtml::encode($model->divisions->divisionname),
		),
		'depot',
		array ('name'=>'coachType',
		'value'=>CHtml::encode($model->coachTypes->type),
		),
		'coachNo',
		array ('name'=>'dateCommission',
		'value'=>CHtml::encode(date("d-M-Y",strtotime($model->dateCommission))),
		),
		array ('name'=>'equipment',
		'value'=>CHtml::encode($model->equipments->name),
		),
		'equipmentNo',
		array ('name'=>'manufacturer',
		'value'=>CHtml::encode($model->manufacturers->name),
		),
		'description',
		array ('name'=>'dateFailure',
		'value'=>CHtml::encode(date("d-M-Y",strtotime($model->dateFailure))),
		),
		array ('name'=>'complainant',
		'value'=>CHtml::encode($model->complainants->username),
		),
		array ('name'=>'icfComments',
		'value'=>CHtml::encode($model->icfComments),
		),
		array ('name'=>'closed',
			'value'=>CHtml::encode($model->getClosed()),
		),
	),
)); ?>
</div>

<?php 
    $this->widget('application.extensions.print.printWidget', array(                   
                   'cssFile' => 'print.css',
                   'printedElement'=>'#case_sheet',
                   'title' => 'Case Sheet No. ' . $model->caseid,
                   )
                 );
?>
