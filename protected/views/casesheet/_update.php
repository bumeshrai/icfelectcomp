<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'casesheet-form',
	'enableAjaxValidation'=>false,
	//'htmlOptions'=>array('enctype'=>'multipart/form-data'),
)); ?>

	<?php echo $form->errorSummary($model); ?>

	<br><br>
	<h4><font color='red'><?php echo $model->getEquipment(); ?></font> 
	from 
	<font color='red'><?php echo $model->getManufacturer(); ?></font>  
	failed in Coach Nos. 
	<font color='red'><?php echo $model->coachNo; ?></font>  
	maintained by 
	<font color='red'><?php echo $model->depot; ?></font>  
	. <br>
	The coach was commissioned on 
	<font color='red'><?php echo date("d-M-Y",strtotime($model->dateCommission)); ?></font>
	. And the equipment failed on
	<font color='red'><?php echo date("d-M-Y",strtotime($model->dateFailure)); ?></font>
	, i.e the equipment failed after 
	<font color='red'>
	<?php echo (strtotime($model->dateFailure) - strtotime($model->dateCommission))/86400; ?>
	</font>  
	days of on-line working.
	
	</h4> <br>
	

	<div class="note">
	The failure reported is:  <font color='red'><?php echo $model->description; ?></font>
	</div>
	<br><br>
	
	<div class="row">
		<?php echo $form->labelEx($model,'dateRegisteration'); ?>
		<?php $this->widget('zii.widgets.jui.CJuiDatePicker', array(
			'model' => $model,
    		'attribute'=>'dateRegisteration',
    		// additional javascript options for the date picker plugin
    		'options'=>array(
        'showAnim'=>'fold',
        'changeMonth' => true,
 			'changeYear' => true,
 			'showButtonPanel' => false, 
			'constrainInput' => false,
         'maxDate'=>'+0',
         'minDate'=>$model->dateFailure,
			'dateFormat'=>'yy-mm-dd',
    		),
    		'htmlOptions'=>array(
        'style'=>'height:20px;'
    		),
			)); ?>
		<?php echo $form->error($model,'dateRegisteration'); ?>
	</div>
	
	<div class="note">
	The action taken report from ICF is: 
	</div>

	<div class="row">
		<!--<?php echo $form->labelEx($model,'icfComments'); ?>-->
		<?php echo $form->textArea($model,'icfComments',array('rows'=>6, 'cols'=>50)); ?>
		<?php echo $form->error($model,'icfComments'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'dateActionTaken'); ?>
		<?php $this->widget('zii.widgets.jui.CJuiDatePicker', array(
			'model' => $model,
    		'attribute'=>'dateActionTaken',
    		// additional javascript options for the date picker plugin
    		'options'=>array(
         'showAnim'=>'fold',
         'maxDate'=>'+0',
 			'showButtonPanel' => false, 
         'changeMonth' => true,
 			'changeYear' => true,
 			'constrainInput' => false,
			'dateFormat'=>'yy-mm-dd',
        'minDate'=>$model->dateFailure,
    		),
    		
    		'htmlOptions'=>array(
        'style'=>'height:20px;'
    		),
			)); ?>
		<?php echo $form->error($model,'dateActionTaken'); ?>
	</div>


	<div class="row">
		<?php echo 'Is complaint closed? Tick for yes     '; ?>
		<?php echo $form->checkBox($model,'closed'); ?>
		<?php echo $form->error($model,'closed'); ?>
	</div>


	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->