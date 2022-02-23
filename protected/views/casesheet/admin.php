<?php
$this->breadcrumbs=array(
	'Casesheets'=>array('index'),
	'Manage',
);

$this->menu=array(
	array('label'=>'Open Casesheets', 'url'=>array('index')),
	array('label'=>'Closed Casesheets', 'url'=>array('indexclosed')),
	array('label'=>'New Casesheet', 'url'=>array('create')),
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$.fn.yiiGridView.update('casesheet-grid', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<h1>Manage Casesheets</h1>

<p>
You may optionally enter a comparison operator (<b>&lt;</b>, <b>&lt;=</b>, <b>&gt;</b>, <b>&gt;=</b>, <b>&lt;&gt;</b>
or <b>=</b>) at the beginning of each of your search values to specify how the comparison should be done.
</p>

<!--<?php echo CHtml::link('Advanced Search','#',array('class'=>'search-button')); ?>-->
<div class="search-form" style="display:none">
<?php $this->renderPartial('_search',array(
	'model'=>$model,
)); ?>
</div><!-- search-form -->

<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'casesheet-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		//'caseid',
		'depot',
		array ('name'=>'railway',
		'value'=>'$data->railways->zone',
		),
		array ('name'=>'dateCommission',
		'value'=>'date("d-M-Y",strtotime($data->dateCommission))',
		),
		array ('name'=>'dateFailure',
		'value'=>'date("d-M-Y",strtotime($data->dateFailure))',
		),
		array ('name'=>'equipment',
		'value'=>'$data->equipments->name',
		),
		array ('name'=>'manufacturer',
		'value'=>'$data->manufacturers->name',
		),
		'description',
		/*
		'coachNo',
		array ('name'=>'coachType',
		'value'=>'$data->coachTypes->type',
		),
		'division',
		'equipmentNo',
		'dateFailure',
		'complainant',
		'icfComments',
		'closed',
		'updateTime',
		'updateUser',
		*/
		array(
			'class'=>'CButtonColumn',
		),
	),
)); ?>
