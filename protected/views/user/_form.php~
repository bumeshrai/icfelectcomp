<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'user-form',
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'username'); ?>
		<?php echo $form->textField($model,'username',array('size'=>25,'maxlength'=>25)); ?>
		<?php echo $form->error($model,'username'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'password'); ?>
		<?php echo $form->passwordField($model,'password',array('size'=>20,'maxlength'=>20)); ?>
		<?php echo $form->error($model,'password'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'password_repeat'); ?>
		<?php echo $form->passwordField($model,'password_repeat',array('size'=>20,'maxlength'=>20)); ?>
		<?php echo $form->error($model,'password_repeat'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'email'); ?>
		<?php echo $form->textField($model,'email',array('size'=>25,'maxlength'=>25)); ?>
		<?php echo $form->error($model,'email'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'railway'); ?>
		<?php 
              $zone = new CDbCriteria; 
              $zone->order = 'zone ASC';
        ?>
		<?php echo $form->dropDownList($model,'railway',  
				CHtml::listData(Railways::model()->findAll($zone), 'zoneId', 'zone'),
						array(
							'ajax' => array(
							'type'=>'POST', //request type
							'url'=>CController::createUrl('user/dynamicdivision'), //url to call.
							'update'=>'#User_'.division, //selector to update
							))); ?>
		<?php echo $form->error($model,'railway'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'division'); ?>
		<?php echo $form->dropDownList($model,'division', array()); ?>
		<?php echo $form->error($model,'division'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'designation'); ?>
		<?php echo $form->textField($model,'designation',array('size'=>25,'maxlength'=>25)); ?>
		<?php echo $form->error($model,'designation'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'depot'); ?>
		<?php echo $form->textField($model,'depot',array('size'=>25,'maxlength'=>25)); ?>
		<?php echo $form->error($model,'depot'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'bsnlno'); ?>
		<?php echo $form->textField($model,'bsnlno'); ?>
		<?php echo $form->error($model,'bsnlno'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'rlyno'); ?>
		<?php echo $form->textField($model,'rlyno'); ?>
		<?php echo $form->error($model,'rlyno'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'mobile'); ?>
		<?php echo $form->textField($model,'mobile'); ?>
		<?php echo $form->error($model,'mobile'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'fax'); ?>
		<?php echo $form->textField($model,'fax'); ?>
		<?php echo $form->error($model,'fax'); ?>
	</div>

	<?php if(extension_loaded('gd')): ?>
	<div class="row">
		<?php echo $form->labelEx($model,'verifyCode'); ?>
		<div>
		<?php $this->widget('CCaptcha'); ?>
		<?php echo $form->textField($model,'verifyCode'); ?>
		</div>
		<div class="hint">Please enter the letters as they are shown in the image above.
		<br/>Letters are not case-sensitive.</div>
	</div>
	<?php endif; ?>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->