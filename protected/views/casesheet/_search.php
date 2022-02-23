<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'caseid'); ?>
		<?php echo $form->textField($model,'caseid'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'railway'); ?>
		<?php echo $form->textField($model,'railway'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'coachNo'); ?>
		<?php echo $form->textField($model,'coachNo',array('size'=>11,'maxlength'=>11)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'coachType'); ?>
		<?php echo $form->textField($model,'coachType'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'dateCommission'); ?>
		<?php echo $form->textField($model,'dateCommission'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'depot'); ?>
		<?php echo $form->textField($model,'depot',array('size'=>25,'maxlength'=>25)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'division'); ?>
		<?php echo $form->textField($model,'division'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'equipment'); ?>
		<?php echo $form->textField($model,'equipment'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'equipmentNo'); ?>
		<?php echo $form->textField($model,'equipmentNo',array('size'=>25,'maxlength'=>25)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'manufacturer'); ?>
		<?php echo $form->textField($model,'manufacturer'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'description'); ?>
		<?php echo $form->textArea($model,'description',array('rows'=>6, 'cols'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'dateFailure'); ?>
		<?php echo $form->textField($model,'dateFailure'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'complainant'); ?>
		<?php echo $form->textField($model,'complainant'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'icfComments'); ?>
		<?php echo $form->textArea($model,'icfComments',array('rows'=>6, 'cols'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'closed'); ?>
		<?php echo $form->textField($model,'closed',array('size'=>5,'maxlength'=>5)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'updateTime'); ?>
		<?php echo $form->textField($model,'updateTime'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'updateUser'); ?>
		<?php echo $form->textField($model,'updateUser'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->