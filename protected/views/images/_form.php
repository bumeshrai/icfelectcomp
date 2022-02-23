<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'images-form',
	'enableAjaxValidation'=>false,
	'htmlOptions'=>array('enctype'=>'multipart/form-data'),
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>


	<div class="row">
		<?php echo $form->labelEx($model,'file_data'); ?>
		<?php echo $form->fileField($model,'file_data'); ?>
		<?php echo $form->error($model,'file_data'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Upload' : 'Save'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->