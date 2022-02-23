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

		<?php //echo $form->hiddenField($model,'password'); ?>
		<?php //echo $form->hiddenField($model,'password_repeat'); ?>
		<?php //echo $form->hiddenField($model,'railway'); ?>
		<?php //echo $form->hiddenField($model,'division'); ?>
		<?php //echo $form->hiddenField($model,'depot'); ?>
		<?php //echo $form->hiddenField($model,'bsnlno'); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'email'); ?>
		<?php echo $form->textField($model,'email',array('size'=>25,'maxlength'=>25)); ?>
		<?php echo $form->error($model,'email'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'designation'); ?>
		<?php echo $form->textField($model,'designation',array('size'=>25,'maxlength'=>25)); ?>
		<?php echo $form->error($model,'designation'); ?>
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
		<?php echo $form->labelEx($model,'authorised'); ?>
		<?php echo $form->checkBox($model,'authorised'); ?>
		<?php echo $form->error($model,'authorised'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->