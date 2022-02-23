<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'casesheet-form',
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->hiddenField($model,'railway'); ?>
	</div>

	<div class="row">
		<?php echo $form->hiddenField($model,'division'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'coachType'); ?>
		<?php echo $form->dropDownList($model,'coachType',  
				CHtml::listData(Coach::model()->findAll(), 'coachId', 'type')); ?>
		<?php echo $form->error($model,'coachType'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'coachNo'); ?>
		<?php echo $form->textField($model,'coachNo'); ?>
		<?php echo $form->error($model,'coachNo'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'dateCommission'); ?>
		<?php $this->widget('zii.widgets.jui.CJuiDatePicker', array(
			'model' => $model,
    		'attribute'=>'dateCommission',
    		// additional javascript options for the date picker plugin
    		'options'=>array(
        'showAnim'=>'fold',
        'changeMonth' => true,
 			'changeYear' => true,
 			'showButtonPanel' => false, 
			'constrainInput' => false,
         'maxDate'=>'+0',
         'minDate'=>'-10y',
			'dateFormat'=>'yy-mm-dd',
    		),
    		'htmlOptions'=>array(
        'style'=>'height:20px;'
    		),
			)); ?>
		<?php echo $form->error($model,'dateCommission'); ?>
	</div>


	<div class="row">
		<?php echo $form->labelEx($model,'depot'); ?>
		<?php echo $form->textField($model,'depot',array('size'=>25,'maxlength'=>25)); ?>
		<?php echo $form->error($model,'depot'); ?>
	</div>


	<div class="row">
		<?php echo $form->labelEx($model,'equipment'); ?>
		<?php
              $name = new CDbCriteria; 
              $name->order = 'name ASC';
        ?>
		<?php echo $form->dropDownList($model,'equipment',  
				CHtml::listData(Equipment::model()->findAll($name), 'equipId', 'name'),
						array(
							'ajax' => array(
							'type'=>'POST', //request type
							'url'=>CController::createUrl('casesheet/dynamicmanuf'), //url to call.
							'update'=>'#Casesheet_'.manufacturer, //selector to update
							))); ?>		
		<?php echo $form->error($model,'equipment'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'manufacturer'); ?>
		<?php echo $form->dropDownList($model,'manufacturer', array()); ?>
		<?php echo $form->error($model,'manufacturer'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'equipmentNo'); ?>
		<?php echo $form->textField($model,'equipmentNo'); ?>
		<?php echo $form->error($model,'equipmentNo'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'description'); ?>
		<?php echo $form->textArea($model,'description',array('rows'=>6, 'cols'=>50)); ?>
		<?php echo $form->error($model,'description'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'dateFailure'); ?>
		<?php $this->widget('zii.widgets.jui.CJuiDatePicker', array(
			'model' => $model,
    		'attribute'=>'dateFailure',
    		// additional javascript options for the date picker plugin
    		'options'=>array(
         'showAnim'=>'fold',
         //'defaultDate'=>-365,
         'maxDate'=>'+0',
         'minDate'=>'-2y',
 			'showButtonPanel' => false, 
         'changeMonth' => true,
 			'changeYear' => true,
 			'constrainInput' => false,
			'dateFormat'=>'yy-mm-dd',
    		),
    		'htmlOptions'=>array(
        'style'=>'height:20px;'
    		),
			)); ?>
		<?php echo $form->error($model,'dateFailure'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'complainant'); ?>
		<?php echo $form->dropDownList($model,'complainant',  
				CHtml::listData(User::model()->findAll(), 'userId', 'username')); ?>
		<?php echo $form->error($model,'complainant'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->