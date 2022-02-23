<?php
$this->breadcrumbs=array(
	'Casesheets',
);

$this->menu=array(
	array('label'=>'Open Casesheets', 'url'=>array('index')),
	array('label'=>'Closed Casesheets', 'url'=>array('indexclosed')),
	array('label'=>'New Casesheet', 'url'=>array('create')),
	array('label'=>'Manage Casesheet', 'url'=>array('admin'), 'visible'=>Yii::app()->user->isAdmin()),
);
?>

<h1>Casesheets</h1>

<div id="case_sheet">

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>

</div>

<!--
<?php 
    $this->widget('application.extensions.print.printWidget', array(                   
                   'cssFile' => 'print.css',
                   'printedElement'=>'#case_sheet',
                   )
                 );
?>
-->